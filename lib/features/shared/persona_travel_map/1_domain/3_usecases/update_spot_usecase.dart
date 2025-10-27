import 'package:persona_travel/features/shared/persona_travel_map/1_domain/1_entities/spot_entity.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/exceptions/domain_failures.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/3_usecases/create_spot_usecase.dart';
import 'package:persona_travel/features/shared/persona_travel_map/1_domain/2_repositories/spot_repository.dart';

class UpdateSpotUsecase {
  const UpdateSpotUsecase(this._spotRepository, this._validator);

  final SpotRepository _spotRepository;
  final CreateSpotUsecase _validator;

  Future<DomainResult<Spot>> call(Spot spot) async {
  final failure = _validator.validate(spot);
    if (failure != null) {
      return DomainResult.failure(failure);
    }
    return _spotRepository.updateSpot(spot);
  }
}
