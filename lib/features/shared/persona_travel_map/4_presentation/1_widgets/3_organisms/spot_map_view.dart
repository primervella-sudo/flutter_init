import 'dart:math' as math;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:persona_travel/core/env/env.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/spot_entity.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/2_data_sources/2_remote/maps_remote_data_source.dart';
import 'package:persona_travel/features/shared/persona_travel_map/3_application/2_providers/data_source_providers.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SpotMapView extends ConsumerStatefulWidget {
  const SpotMapView({
    super.key,
    required this.spots,
    this.height = 280,
  });

  final List<Spot> spots;
  final double height;

  @override
  ConsumerState<SpotMapView> createState() => _SpotMapViewState();
}

class _SpotMapViewState extends ConsumerState<SpotMapView> {
  GoogleMapController? _controller;
  Future<Uint8List>? _staticMapFuture;
  List<Spot>? _lastStaticSpots;
  int? _lastStaticWidth;
  WebViewController? _webViewController;

  bool get _isInteractiveMapSupported {
    return kIsWeb ||
        defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS;
  }

  bool get _isEmbeddedWebViewSupported {
    return !kIsWeb && defaultTargetPlatform == TargetPlatform.windows;
  }

  @override
  void initState() {
    super.initState();
    if (_isEmbeddedWebViewSupported) {
      _initWebViewController();
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant SpotMapView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!listEquals(oldWidget.spots, widget.spots)) {
      _scheduleCameraUpdate();
      if (_isEmbeddedWebViewSupported) {
        _refreshEmbeddedMap();
      } else {
        _markStaticMapDirty();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    if (widget.spots.isEmpty) {
      return Container(
        height: widget.height,
        width: double.infinity,
  color: theme.colorScheme.surfaceContainerHighest,
        alignment: Alignment.center,
        child: const Text('表示するスポットがありません'),
      );
    }

    if (_isInteractiveMapSupported) {
      return SizedBox(
        height: widget.height,
        width: double.infinity,
        child: _buildInteractiveMap(context),
      );
    }

    if (_isEmbeddedWebViewSupported) {
      return SizedBox(
        height: widget.height,
        width: double.infinity,
        child: _buildEmbeddedMap(context),
      );
    }

    return SizedBox(
      height: widget.height,
      width: double.infinity,
      child: _buildStaticMap(context),
    );
  }

  Widget _buildInteractiveMap(BuildContext context) {
    final initialSpot = widget.spots.first;
    final initialCameraPosition = CameraPosition(
      target: LatLng(initialSpot.lat, initialSpot.lng),
      zoom: 12,
    );

    final markers = widget.spots
        .map(
          (spot) => Marker(
            markerId: MarkerId(spot.id),
            position: LatLng(spot.lat, spot.lng),
            infoWindow: InfoWindow(title: spot.title, snippet: spot.address),
          ),
        )
        .toSet();

    return GoogleMap(
      initialCameraPosition: initialCameraPosition,
      markers: markers,
      myLocationButtonEnabled: false,
      zoomControlsEnabled: true,
      compassEnabled: true,
      onMapCreated: (controller) {
        _controller = controller;
        _scheduleCameraUpdate();
      },
    );
  }

  Widget _buildStaticMap(BuildContext context) {
    final width = _preferredStaticMapWidth(context);
    final height = widget.height.clamp(120, 640).round();

    final needsReload = _staticMapFuture == null ||
        _lastStaticWidth != width ||
        (_lastStaticSpots != null && !listEquals(_lastStaticSpots, widget.spots));

    if (needsReload) {
      final dataSource = ref.read(mapsRemoteDataSourceProvider);
      _staticMapFuture = dataSource.fetchStaticMapImage(
        centerLat: widget.spots.first.lat,
        centerLng: widget.spots.first.lng,
        zoom: _resolveStaticZoom(widget.spots.length),
        width: width,
        height: height,
        markers: widget.spots
            .map((spot) => MapMarkerCoordinate(lat: spot.lat, lng: spot.lng)),
      );
      _lastStaticWidth = width;
      _lastStaticSpots = List<Spot>.from(widget.spots);
    }

    return FutureBuilder<Uint8List>(
      future: _staticMapFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Center(
            child: Text(
              '地図画像の取得に失敗しました\n${snapshot.error}',
              textAlign: TextAlign.center,
            ),
          );
        }
        final data = snapshot.data;
        if (data == null) {
          return const Center(child: Text('地図画像を表示できません'));
        }
        return ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.memory(
            data,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
        );
      },
    );
  }

  Widget _buildEmbeddedMap(BuildContext context) {
    if (widget.spots.isEmpty) {
      return Container(
        color: Theme.of(context).colorScheme.surfaceContainerHighest,
        alignment: Alignment.center,
        child: const Text('地図を表示するスポットがありません'),
      );
    }

    final controller = _webViewController;
    if (controller == null) {
      return const Center(child: CircularProgressIndicator());
    }

    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: WebViewWidget(controller: controller),
    );
  }

  Future<void> _scheduleCameraUpdate() async {
    if (!_isInteractiveMapSupported) {
      return;
    }
    final controller = _controller;
    if (controller == null || widget.spots.isEmpty) {
      return;
    }
    await Future<void>.delayed(Duration.zero);
    if (!mounted || widget.spots.isEmpty) {
      return;
    }

    if (widget.spots.length == 1) {
      final spot = widget.spots.first;
      await controller.animateCamera(
        CameraUpdate.newLatLngZoom(LatLng(spot.lat, spot.lng), 14),
      );
      return;
    }

    final bounds = _boundsForSpots(widget.spots);
    await controller.animateCamera(
      CameraUpdate.newLatLngBounds(bounds, 48),
    );
  }

  void _markStaticMapDirty() {
    _lastStaticWidth = null;
    _lastStaticSpots = null;
    _staticMapFuture = null;
  }

  void _initWebViewController() {
    final controller = WebViewController()
      ..setBackgroundColor(Colors.transparent)
      ..setJavaScriptMode(JavaScriptMode.unrestricted);
    _webViewController = controller;
    _refreshEmbeddedMap();
  }

  void _refreshEmbeddedMap() {
    final controller = _webViewController;
    if (controller == null || widget.spots.isEmpty) {
      return;
    }
    final url = _embedUrlForSpots(widget.spots);
    controller.loadRequest(Uri.parse(url));
  }

  int _preferredStaticMapWidth(BuildContext context) {
    final mediaWidth = MediaQuery.sizeOf(context).width;
    if (!mediaWidth.isFinite) {
      return 640;
    }
    final clamped = mediaWidth.clamp(160, 640).round();
    return clamped;
  }

  int _resolveStaticZoom(int spotCount) {
    if (spotCount <= 1) {
      return 15;
    }
    if (spotCount <= 3) {
      return 13;
    }
    if (spotCount <= 8) {
      return 12;
    }
    return 11;
  }

  LatLngBounds _boundsForSpots(List<Spot> spots) {
    double minLat = spots.first.lat;
    double maxLat = spots.first.lat;
    double minLng = spots.first.lng;
    double maxLng = spots.first.lng;

    for (final spot in spots.skip(1)) {
      minLat = math.min(minLat, spot.lat);
      maxLat = math.max(maxLat, spot.lat);
      minLng = math.min(minLng, spot.lng);
      maxLng = math.max(maxLng, spot.lng);
    }

    if (minLat == maxLat && minLng == maxLng) {
      const delta = 0.0008;
      return LatLngBounds(
        southwest: LatLng(minLat - delta, minLng - delta),
        northeast: LatLng(maxLat + delta, maxLng + delta),
      );
    }

    return LatLngBounds(
      southwest: LatLng(minLat, minLng),
      northeast: LatLng(maxLat, maxLng),
    );
  }

  String _embedUrlForSpots(List<Spot> spots) {
    final center = _centerForSpots(spots);
    final zoom = _resolveEmbedZoom(spots.length);
    final buffer = StringBuffer()
      ..write('https://www.google.com/maps/embed/v1/view?key=')
      ..write(Uri.encodeComponent(Env.mapsApiKey))
      ..write('&center=${center.lat},${center.lng}')
      ..write('&zoom=$zoom&maptype=roadmap');

    for (final marker in _encodeMarkers(spots)) {
      buffer
        ..write('&markers=')
        ..write(marker);
    }

    return buffer.toString();
  }

  ({double lat, double lng}) _centerForSpots(List<Spot> spots) {
    var sumLat = 0.0;
    var sumLng = 0.0;
    for (final spot in spots) {
      sumLat += spot.lat;
      sumLng += spot.lng;
    }
    final count = spots.length;
    return (lat: sumLat / count, lng: sumLng / count);
  }

  Iterable<String> _encodeMarkers(List<Spot> spots) sync* {
    const letters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    final capped = spots.take(10).toList(growable: false);
    for (var index = 0; index < capped.length; index++) {
      final spot = capped[index];
      final label = index < letters.length ? letters[index] : '${index + 1}';
      final marker = 'color:red|label:$label|${spot.lat},${spot.lng}';
      yield Uri.encodeComponent(marker);
    }
  }

  int _resolveEmbedZoom(int spotCount) {
    if (spotCount <= 1) {
      return 15;
    }
    if (spotCount <= 3) {
      return 13;
    }
    if (spotCount <= 8) {
      return 12;
    }
    return 11;
  }
}
