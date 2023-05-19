import 'dart:convert';

import 'package:http/http.dart';
import 'package:televerse/televerse.dart';

/// HttpClient is used to send HTTP requests to the Telegram Bot API.
class HttpClient {
  /// Send GET request to the given [uri] and return the response body.
  static Future<dynamic> getURI(Uri uri) async {
    final response = await get(uri);
    final body = json.decode(response.body);
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
    Map<String, String> bodyContent = body.map((k, v) {
      if (v is List) {
        return MapEntry(k, jsonEncode(v));
      }
      return MapEntry(k, "$v");
    });

    final response = await post(uri, body: bodyContent);
    final resBody = json.decode(response.body);
    if (resBody["ok"] == true) {
      return resBody["result"];
    } else {
      throw TelegramException.fromJson(resBody);
    }
  }

  /// Send Multipart POST request to the given [uri] and return the response body.
  static Future<dynamic> multipartPost(
    Uri uri,
    List<MultipartFile> files,
    Map<String, dynamic> body,
  ) async {
    body.removeWhere((key, value) => value == null || value == "null");
    final request = MultipartRequest("POST", uri)
      ..headers.addAll({"Content-Type": "multipart/form-data"})
      ..fields.addAll(body.map((k, v) => MapEntry(k, "$v")))
      ..files.addAll(files);
    final response = await request.send();
    final resBody = await response.stream.bytesToString();
    final res = json.decode(resBody);
    if (res["ok"] == true) {
      return res["result"];
    } else {
      throw TelegramException.fromJson(res);
    }
  }
}
