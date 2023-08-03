import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:televerse/televerse.dart';

/// HttpClient is used to send HTTP requests to the Telegram Bot API.
class HttpClient {
  ///
  static final dio = Dio();

  /// Send GET request to the given [uri] and return the response body.
  static Future<dynamic> getURI(Uri uri) async {
    final response = await dio.getUri(uri);
    final body = json.decode(response.data);
    if (body["ok"] == true) {
      return body["result"];
    } else {
      throw TelegramException.fromJson(body);
    }
  }

  /// Send POST request to the given [uri] and return the response body.
  static Future<dynamic> postURI(
    Uri uri,
    Map<String, dynamic> body,
  ) async {
    body.removeWhere((key, value) => value == null || value == "null");
    Map<String, String> bodyContent = body.map(_getEntry);

    final response = await dio.postUri<String>(uri,
        data: bodyContent, options: Options(responseType: ResponseType.json));

    final resBody = json.decode(response.data!);
    if (resBody["ok"] == true) {
      return resBody["result"];
    } else {
      throw TelegramException.fromJson(resBody);
    }
  }

  /// Send Multipart POST request to the given [uri] and return the response body.
  static Future<dynamic> multipartPost(
    Uri uri,
    List<Map<String, MultipartFile>> files,
    Map<String, dynamic> body,
  ) async {
    body.removeWhere((key, value) => value == null || value == "null");
    // final request = MultipartRequest("POST", uri)
    //   ..headers.addAll({"Content-Type": "multipart/form-data"})
    //   ..fields.addAll(body.map(_getEntry))
    //   ..files.addAll(files);
    // final response = await request.send();
    // final resBody = await response.stream.bytesToString();

    final map = body.map(_getEntry).entries;
    final map2 = files.map((e) => MapEntry(e.keys.single, e.values.single));
    final formData = FormData()

      // final formData = FormData.fromMap({
      //   ...body.map(_getEntry),
      //   'files': files,
      // });
      ..fields.addAll(map)
      ..files.addAll(map2);

    final req = await dio.postUri(uri,
        data: formData,
        options: Options(
            headers: {"Content-Type": "multipart/form-data"},
            responseType: ResponseType.bytes));

    final toString = utf8.decode(req.data as List<int>);

    final res = json.decode(toString);
    if (res["ok"] == true) {
      return res["result"];
    } else {
      throw TelegramException.fromJson(res);
    }
  }

  /// Convert the MapEntry to MapEntry<String, String>.
  static MapEntry<String, String> _getEntry(String k, dynamic v) {
    if (v is List) {
      return MapEntry(k, jsonEncode(v));
    }
    if (v is Map) {
      return MapEntry(k, jsonEncode(v));
    }
    return MapEntry(k, "$v");
  }
}
