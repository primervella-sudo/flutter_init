sealed class RemoteDataException implements Exception {
  const RemoteDataException(this.message, {this.statusCode, this.cause});

  final String message;
  final int? statusCode;
  final Object? cause;

  @override
  String toString() => 'RemoteDataException(message: $message, statusCode: $statusCode, cause: $cause)';
}

class RemoteTimeoutException extends RemoteDataException {
  const RemoteTimeoutException({Object? cause})
      : super('リクエストがタイムアウトしました', cause: cause);
}

class RemoteQuotaExceededException extends RemoteDataException {
  const RemoteQuotaExceededException({Object? cause})
      : super('APIの利用上限に達しました', cause: cause);
}

class RemoteAuthException extends RemoteDataException {
  const RemoteAuthException({int? statusCode, Object? cause})
      : super('APIキーが無効です', statusCode: statusCode, cause: cause);
}

class RemoteContentFilteredException extends RemoteDataException {
  const RemoteContentFilteredException({int? statusCode, Object? cause})
      : super('コンテンツポリシーによりブロックされました', statusCode: statusCode, cause: cause);
}

class RemoteUnexpectedException extends RemoteDataException {
  const RemoteUnexpectedException({int? statusCode, Object? cause})
      : super('予期しないエラーが発生しました', statusCode: statusCode, cause: cause);
}
