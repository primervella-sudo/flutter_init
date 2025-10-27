import 'package:freezed_annotation/freezed_annotation.dart';

part 'domain_failures.freezed.dart';

@freezed
sealed class DomainFailure with _$DomainFailure {
  const factory DomainFailure.validation({required String message}) = _ValidationFailure;
  const factory DomainFailure.storageLimitExceeded({required int maxBytes}) = _StorageLimitExceededFailure;
  const factory DomainFailure.network({required String message}) = _NetworkFailure;
  const factory DomainFailure.permission({required String permission, String? message}) = _PermissionFailure;
  const factory DomainFailure.notFound({required String resource}) = _NotFoundFailure;
  const factory DomainFailure.conflict({required String message}) = _ConflictFailure;
}

@freezed
sealed class DomainResult<T> with _$DomainResult<T> {
  const factory DomainResult.success(T data) = DomainSuccess<T>;
  const factory DomainResult.failure(DomainFailure failure) = DomainResultFailure<T>;
}
