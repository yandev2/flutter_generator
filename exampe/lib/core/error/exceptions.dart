class ServerException implements Exception {
  final String message;
  final int? statusCode;

  const ServerException({required this.message, this.statusCode});

  @override
  String toString() => 'ServerException($statusCode): $message';
}

/// Thrown when there is no internet connection or the server is unreachable.
class NetworkException implements Exception {
  final String message;

  const NetworkException({
    this.message = 'Tidak ada koneksi internet. Periksa jaringan Anda.',
  });

  @override
  String toString() => 'NetworkException: $message';
}

/// Thrown when the user's token is invalid or expired (HTTP 401).
class UnauthorizedException implements Exception {
  final String message;

  const UnauthorizedException({
    this.message = 'Sesi Anda telah berakhir. Silakan login kembali.',
  });

  @override
  String toString() => 'UnauthorizedException: $message';
}

/// Thrown when a request exceeds the allowed timeout duration.
class RequestTimeoutException implements Exception {
  final String message;

  const RequestTimeoutException({
    this.message = 'Koneksi timeout. Silakan coba lagi.',
  });

  @override
  String toString() => 'RequestTimeoutException: $message';
}

/// Thrown when the local cache/database operation fails.
class CacheException implements Exception {
  final String message;

  const CacheException({this.message = 'Gagal mengakses data lokal.'});

  @override
  String toString() => 'CacheException: $message';
}

/// Thrown when request data validation fails before sending.
class ValidationException implements Exception {
  final String message;
  final Map<String, dynamic>? errors;

  const ValidationException({required this.message, this.errors});

  @override
  String toString() => 'ValidationException: $message';
}
