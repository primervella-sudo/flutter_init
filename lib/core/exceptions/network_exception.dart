import 'base_exception.dart';

class NetworkException extends BaseException {
  const NetworkException(super.message, {super.code, super.originalError});

  factory NetworkException.connectionTimeout() =>
      const NetworkException('接続がタイムアウトしました', code: 'CONNECTION_TIMEOUT');

  factory NetworkException.noInternet() =>
      const NetworkException('インターネット接続がありません', code: 'NO_INTERNET');

  factory NetworkException.quotaExceeded() =>
      const NetworkException('APIの利用上限に達しました', code: 'QUOTA_EXCEEDED');
}
