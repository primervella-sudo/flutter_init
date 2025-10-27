sealed class LocalDataException implements Exception {
  const LocalDataException(this.message, {this.cause});

  final String message;
  final Object? cause;

  @override
  String toString() => 'LocalDataException(message: $message, cause: $cause)';
}

class LocalDatabaseException extends LocalDataException {
  const LocalDatabaseException(super.message, {super.cause});
}

class LocalStorageException extends LocalDataException {
  const LocalStorageException(super.message, {super.cause});
}
