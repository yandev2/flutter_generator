import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import '../const/app_constants.dart';
import '../error/exceptions.dart';

class ApiClient {
  final http.Client _client;
  final Duration _timeout;
  String? _token;

  ApiClient({http.Client? client, Duration? timeout})
    : _client = client ?? http.Client(),
      _timeout = timeout ?? const Duration(milliseconds: AppConstants.connectionTimeout);

  // ── Token Management ─────────────────────────────────────────────────

  void setToken(String token) => _token = token;
  void clearToken() => _token = null;
  bool get hasToken => _token != null && _token!.isNotEmpty;

  /// Runs [action] without Authorization header, then restores prior token.
  Future<T> runWithoutAuth<T>(Future<T> Function() action) async {
    final previous = _token;
    _token = null;
    try {
      return await action();
    } finally {
      _token = previous;
    }
  }

  // ── Private Helpers ──────────────────────────────────────────────────

  /// Builds headers with optional auth token injection.
  Map<String, String> _buildHeaders({Map<String, String>? extra}) {
    final headers = <String, String>{
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    };

    // Inject Bearer token if available
    if (_token != null && _token!.isNotEmpty) {
      headers['Authorization'] = 'Bearer $_token';
    }

    // Merge any extra headers
    if (extra != null) {
      headers.addAll(extra);
    }

    return headers;
  }

  /// Builds the full URI from an endpoint path.
  Uri _buildUri(String endpoint, {Map<String, dynamic>? queryParams}) {
    final uri = Uri.parse('${AppConstants.baseUrl}$endpoint');
    if (queryParams != null && queryParams.isNotEmpty) {
      return uri.replace(
        queryParameters: queryParams.map((key, value) => MapEntry(key, value.toString())),
      );
    }
    return uri;
  }

  /// Evaluates the HTTP response and returns decoded JSON on success.
  /// Throws appropriate exceptions on failure.
  dynamic _handleResponse(http.Response response) {
    final statusCode = response.statusCode;
    final body = response.body.isNotEmpty ? jsonDecode(response.body) : null;

    // ── Success (2xx) ──────────────────────────────────────────────────
    if (statusCode >= 200 && statusCode < 300) {
      return body;
    }

    // ── Extract error message from API response ────────────────────────
    final message = _extractErrorMessage(body, statusCode);

    // ── Unauthorized (401) ─────────────────────────────────────────────
    if (statusCode == 401) {
      throw UnauthorizedException(message: message);
    }

    // ── Validation Error (422) ─────────────────────────────────────────
    if (statusCode == 422) {
      throw ValidationException(
        message: message,
        errors: body is Map<String, dynamic> ? body['errors'] : null,
      );
    }

    // ── Client/Server Error (4xx / 5xx) ────────────────────────────────
    throw ServerException(message: message, statusCode: statusCode);
  }

  /// Extracts a human-readable error message from the API response body.
  String _extractErrorMessage(dynamic body, int statusCode) {
    if (body is Map<String, dynamic>) {
      // Common API response patterns
      return body['message'] ?? body['error'] ?? body['msg'] ?? 'Server error ($statusCode)';
    }
    return 'Server error ($statusCode)';
  }

  /// Wraps an async request with timeout and network error handling.
  Future<T> _safeRequest<T>(Future<T> Function() request) async {
    try {
      return await request().timeout(_timeout);
    } on TimeoutException {
      throw const RequestTimeoutException();
    } on SocketException {
      throw const NetworkException();
    } on http.ClientException {
      throw const NetworkException(message: 'Gagal terhubung ke server.');
    }
  }

  // ── REST Methods ─────────────────────────────────────────────────────

  /// Performs a **GET** request.
  ///
  /// ```dart
  /// final data = await apiClient.get('/zakat', query: {'page': 1});
  /// ```
  Future<dynamic> get(
    String endpoint, {
    Map<String, dynamic>? query,
    Map<String, String>? headers,
  }) {
    return _safeRequest(() async {
      final response = await _client.get(
        _buildUri(endpoint, queryParams: query),
        headers: _buildHeaders(extra: headers),
      );
      return _handleResponse(response);
    });
  }

  /// Performs a **POST** request with a JSON body.
  ///
  /// ```dart
  /// final data = await apiClient.post('/zakat', body: {'amount': 2500000});
  /// ```
  Future<dynamic> post(
    String endpoint, {
    Map<String, dynamic>? body,
    Map<String, String>? headers,
  }) {
    return _safeRequest(() async {
      final response = await _client.post(
        _buildUri(endpoint),
        headers: _buildHeaders(extra: headers),
        body: body != null ? jsonEncode(body) : null,
      );
      return _handleResponse(response);
    });
  }

  /// Performs a **PUT** request with a JSON body.
  ///
  /// ```dart
  /// final data = await apiClient.put('/zakat/1', body: {'amount': 3000000});
  /// ```
  Future<dynamic> put(String endpoint, {Map<String, dynamic>? body, Map<String, String>? headers}) {
    return _safeRequest(() async {
      final response = await _client.put(
        _buildUri(endpoint),
        headers: _buildHeaders(extra: headers),
        body: body != null ? jsonEncode(body) : null,
      );
      return _handleResponse(response);
    });
  }

  /// Performs a **PATCH** request with a JSON body.
  ///
  /// ```dart
  /// final data = await apiClient.patch('/zakat/1', body: {'status': 'paid'});
  /// ```
  Future<dynamic> patch(
    String endpoint, {
    Map<String, dynamic>? body,
    Map<String, String>? headers,
  }) {
    return _safeRequest(() async {
      final response = await _client.patch(
        _buildUri(endpoint),
        headers: _buildHeaders(extra: headers),
        body: body != null ? jsonEncode(body) : null,
      );
      return _handleResponse(response);
    });
  }

  /// Performs a **DELETE** request.
  ///
  /// ```dart
  /// await apiClient.delete('/zakat/1');
  /// ```
  Future<dynamic> delete(String endpoint, {Map<String, String>? headers}) {
    return _safeRequest(() async {
      final response = await _client.delete(
        _buildUri(endpoint),
        headers: _buildHeaders(extra: headers),
      );
      return _handleResponse(response);
    });
  }

  // ── Multipart / File Upload ──────────────────────────────────────────

  /// Uploads a file using **multipart/form-data**.
  ///
  /// ```dart
  /// final data = await apiClient.uploadFile(
  ///   '/zakat/upload-proof',
  ///   filePath: '/path/to/image.jpg',
  ///   fileField: 'proof_image',
  ///   fields: {'zakat_id': '123', 'note': 'Bukti transfer'},
  /// );
  /// ```
  Future<dynamic> uploadFile(
    String endpoint, {
    required String filePath,
    String fileField = 'file',
    Map<String, String>? fields,
    String method = 'POST',
  }) {
    return _safeRequest(() async {
      final uri = _buildUri(endpoint);
      final request = http.MultipartRequest(method, uri);

      // Inject auth headers
      final headers = _buildHeaders();
      headers.remove('Content-Type'); // Multipart sets its own Content-Type
      request.headers.addAll(headers);

      // Attach the file
      request.files.add(await http.MultipartFile.fromPath(fileField, filePath));

      // Attach extra text fields
      if (fields != null) {
        request.fields.addAll(fields);
      }

      // Send and read response
      final streamedResponse = await request.send().timeout(_timeout);
      final response = await http.Response.fromStream(streamedResponse);
      return _handleResponse(response);
    });
  }

  /// Uploads multiple files using **multipart/form-data**.
  ///
  /// ```dart
  /// final data = await apiClient.uploadMultipleFiles(
  ///   '/zakat/upload-documents',
  ///   files: {
  ///     'ktp': '/path/to/ktp.jpg',
  ///     'proof': '/path/to/bukti.jpg',
  ///   },
  ///   fields: {'zakat_id': '123'},
  /// );
  /// ```
  Future<dynamic> uploadMultipleFiles(
    String endpoint, {
    required Map<String, dynamic> files,
    Map<String, String>? fields,
    String method = 'POST',
  }) {
    return _safeRequest(() async {
      final uri = _buildUri(endpoint);
      final request = http.MultipartRequest(method, uri);

      // Inject auth headers
      final headers = _buildHeaders();
      headers.remove('Content-Type');
      request.headers.addAll(headers);

      // Attach all files
      for (final entry in files.entries) {
        if (entry.value is String) {
          request.files.add(await http.MultipartFile.fromPath(entry.key, entry.value as String));
        } else if (entry.value is List) {
          for (final path in entry.value as List) {
            if (path is String && path.isNotEmpty) {
              request.files.add(await http.MultipartFile.fromPath(entry.key, path));
            }
          }
        }
      }

      // Attach extra text fields
      if (fields != null) {
        request.fields.addAll(fields);
      }

      // Send and read response
      final streamedResponse = await request.send().timeout(_timeout);
      final response = await http.Response.fromStream(streamedResponse);
      return _handleResponse(response);
    });
  }

  // ── Lifecycle ────────────────────────────────────────────────────────

  /// Closes the underlying HTTP client. Call when the app is disposed.
  void dispose() {
    _client.close();
  }
}
