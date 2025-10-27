import 'base_exception.dart';

class StorageException extends BaseException {
  const StorageException(super.message, {super.code, super.originalError});

  factory StorageException.databaseError(String details) =>
      StorageException('データベースエラー: $details', code: 'DATABASE_ERROR', originalError: details);

  factory StorageException.fileNotFound(String path) =>
      StorageException('ファイルが見つかりません: $path', code: 'FILE_NOT_FOUND');

  factory StorageException.insufficientSpace() =>
      const StorageException('ストレージ容量が不足しています', code: 'STORAGE_FULL');
}
