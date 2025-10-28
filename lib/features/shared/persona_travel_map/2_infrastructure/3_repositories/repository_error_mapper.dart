import 'package:persona_travel/features/shared/persona_travel_map/1_domain/exceptions/domain_failures.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/2_data_sources/1_local/exceptions/local_data_exceptions.dart';
import 'package:persona_travel/features/shared/persona_travel_map/2_infrastructure/2_data_sources/2_remote/exceptions/remote_data_exceptions.dart';

DomainFailure mapLocalDataException(LocalDataException error) {
  if (error is LocalStorageException) {
    return DomainFailure.validation(message: error.message);
  }
  if (error is LocalDatabaseException) {
    return DomainFailure.conflict(message: error.message);
  }
  return DomainFailure.conflict(message: error.message);
}

DomainFailure mapRemoteDataException(
  RemoteDataException error, {
  String? credential,
}) {
  if (error is RemoteAuthException) {
    return DomainFailure.permission(
      permission: credential ?? 'api_key',
      message: error.message,
    );
  }
  if (error is RemoteQuotaExceededException) {
    return DomainFailure.network(message: error.message);
  }
  if (error is RemoteTimeoutException) {
    return DomainFailure.network(message: error.message);
  }
  if (error is RemoteContentFilteredException) {
    return DomainFailure.validation(message: error.message);
  }
  return DomainFailure.network(message: error.message);
}

DomainFailure mapUnknownException(Object error) {
  return DomainFailure.conflict(
    message: '予期しないエラーが発生しました: $error',
  );
}
