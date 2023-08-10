import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:televerse/televerse.dart';

/// HttpClient is used to send HTTP requests to the Telegram Bot API.
class HttpClient {
  /// Construc client with optionally logging
  HttpClient({required bool enableLogging}) : _enableLogging = enableLogging {
    if (_enableLogging) {
      _dio.interceptors
          .add(LogInterceptor(requestBody: true, responseBody: true));
    }
  }

  /// Initialize Dio
  final _dio = Dio();

  /// Enable logging flag
  final bool _enableLogging;

  // Throws formatted exception
  void _dioCatch(Object? e) {
    if (e is TelegramException) {
      throw e;
    }
    if (e is DioException) {
      if (e.response != null) {
        final body = json.decode(e.response!.data);
        throw TelegramException.fromJson(body);
      }
      throw TelegramException(
        e.response?.statusCode ?? 500,
        description: e.message,
        stackTrace: e.stackTrace,
      );
    }
  }

  /// Send GET request to the given [uri] and return the response body.
  Future<dynamic> getURI(Uri uri) async {
    try {
      final response = await _dio.getUri(uri);
      final body = json.decode(response.data);
      if (body["ok"] == true) {
        return body["result"];
      } else {
        throw TelegramException.fromJson(body);
      }
    } catch (e) {
      _dioCatch(e);
    }
  }

  /// Send POST request to the given [uri] and return the response body.
  Future<dynamic> postURI(
    Uri uri,
    Map<String, dynamic> body,
  ) async {
    body.removeWhere((key, value) => value == null || value == "null");
    Map<String, String> bodyContent = body.map(_getEntry);

    try {
      final response = await _dio.postUri<String>(
        uri,
        data: bodyContent,
        options: Options(responseType: ResponseType.json),
      );

      final resBody = json.decode(response.data!);
      if (resBody["ok"] == true) {
        return resBody["result"];
      } else {
        throw TelegramException.fromJson(resBody);
      }
    } catch (e) {
      _dioCatch(e);
    }
  }

  /// Send Multipart POST request to the given [uri] and return the response body.
  Future<dynamic> multipartPost(
    Uri uri,
    List<Map<String, MultipartFile>> files,
    Map<String, dynamic> body,
  ) async {
    body.removeWhere((key, value) => value == null || value == "null");

    final parameters = body.map(_getEntry).entries;
    final filesMap = files.map((e) => MapEntry(e.keys.single, e.values.single));
    final formData = FormData()
      ..fields.addAll(parameters)
      ..files.addAll(filesMap);

    try {
      final req = await _dio.postUri(
        uri,
        data: formData,
        options: Options(
          headers: {"Content-Type": "multipart/form-data"},
          responseType: ResponseType.bytes,
        ),
      );

      final toString = utf8.decode(req.data as List<int>);

      final res = json.decode(toString);
      if (res["ok"] == true) {
        return res["result"];
      } else {
        throw TelegramException.fromJson(res);
      }
    } catch (e) {
      _dioCatch(e);
    }
  }

  /// Convert the MapEntry to MapEntry<String, String>.
  MapEntry<String, String> _getEntry(String k, dynamic v) {
    if (v is List) {
      return MapEntry(k, jsonEncode(v));
    }
    if (v is Map) {
      return MapEntry(k, jsonEncode(v));
    }
    return MapEntry(k, "$v");
  }
}
