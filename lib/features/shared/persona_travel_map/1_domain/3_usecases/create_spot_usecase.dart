import 'dart:math';

import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/spot_entity.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/exceptions/domain_failures.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/2_repositories/spot_repository.dart';

class CreateSpotUsecase {
  const CreateSpotUsecase(this._spotRepository);

  static const int _maxPhotoCount = 5;
  static const int _maxPhotoBytes = 50 * 1024 * 1024;

  final SpotRepository _spotRepository;

  Future<DomainResult<Spot>> call(Spot spot) async {
  final failure = validate(spot);
    if (failure != null) {
      return DomainResult.failure(failure);
    }
    return _spotRepository.createSpot(spot);
  }

  DomainFailure? validate(Spot spot) {
    if (spot.title.trim().isEmpty || spot.title.length > 100) {
      return const DomainFailure.validation(message: 'スポット名は1～100文字で入力してください');
    }

    if (spot.address.trim().isEmpty || spot.address.length > 500) {
      return const DomainFailure.validation(message: '住所は1～500文字で入力してください');
    }

  if (!_isValidLatLng(spot.lat, spot.lng)) {
      return const DomainFailure.validation(message: '緯度経度が不正です');
    }

    if (spot.photos.length > _maxPhotoCount) {
      return const DomainFailure.validation(message: '写真は最大5枚まで追加できます');
    }

    final totalSize = spot.photos.fold<int>(0, (sum, photo) => sum + max(0, photo.size));
    if (totalSize > _maxPhotoBytes) {
      return DomainFailure.storageLimitExceeded(maxBytes: _maxPhotoBytes);
    }

    return null;
  }

  bool _isValidLatLng(double lat, double lng) {
    final isLatValid = lat >= -90 && lat <= 90;
    final isLngValid = lng >= -180 && lng <= 180;
    return isLatValid && isLngValid;
  }
}
