import 'dart:convert';
import 'dart:math';

import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/spot_entity.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/2_repositories/spot_repository.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/exceptions/domain_failures.dart';

class ShareLinkUsecase {
  ShareLinkUsecase(this._spotRepository, {Random? random})
      : _random = random ?? Random.secure();

  final SpotRepository _spotRepository;
  final Random _random;

  Future<DomainResult<Spot>> createLink(Spot spot, {Duration? expiresIn}) {
    final token = _generateToken();
    final updated = spot.copyWith(
      shareToken: token,
      shareExpiresAt: expiresIn == null ? null : DateTime.now().add(expiresIn),
    );
    return _spotRepository.updateSpot(updated);
  }

  Future<DomainResult<Spot>> renewLink(Spot spot, {Duration? expiresIn}) {
    return createLink(spot, expiresIn: expiresIn);
  }

  Future<DomainResult<Spot>> revokeLink(Spot spot) {
    final updated = spot.copyWith(shareToken: null, shareExpiresAt: null);
    return _spotRepository.updateSpot(updated);
  }

  String _generateToken() {
    final bytes = List<int>.generate(16, (_) => _random.nextInt(256));
    return base64Url.encode(bytes).replaceAll('=', '');
  }
}
