import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:televerse/src/televerse/models/http_exception.dart';

class HttpClient {
  /// Send GET request to the given [uri] and return the response body.
  static Future<dynamic> get(Uri uri) async {
    try {
      Map<String, dynamic> params = uri.queryParameters;
      params.removeWhere(_nullFilter);
      uri = uri.replace(queryParameters: params);
      final response = await http.get(uri);
      final body = json.decode(response.body);
      if (body["ok"] == true) {
        return body["result"];
      } else {
        throw HttpException(response.statusCode, body["description"]);
      }
    } catch (err) {
      return Future.error(err);
    }
  }

  /// Send POST request to the given [uri] and return the response body.
  static Future<dynamic> post(
    Uri uri,
    Map<String, dynamic> body,
  ) async {
    body.removeWhere(_nullFilter);
    try {
      final response = await http.post(uri, body: body);
      final resBody = json.decode(response.body);
      if (resBody["ok"] == true) {
        return resBody["result"];
      } else {
        throw HttpException(response.statusCode, resBody["description"]);
      }
    } catch (err) {
      return Future.error(err);
    }
  }

  /// Send Multipart POST request to the given [uri] and return the response body.
  static Future<dynamic> multipartPost(
    Uri uri,
    List<http.MultipartFile> files,
    Map<String, dynamic> body,
  ) async {
    body.removeWhere(_nullFilter);
    try {
      final request = http.MultipartRequest("POST", uri)
        ..headers.addAll({"Content-Type": "multipart/form-data"})
        ..fields.addAll(body.map((k, v) => MapEntry(k, "$v")))
        ..files.addAll(files);
      final response = await request.send();
      final resBody = await response.stream.bytesToString();
      final res = json.decode(resBody);
      if (res["ok"] == true) {
        return res["result"];
      } else {
        throw HttpException(response.statusCode, body["description"]);
      }
    } catch (err) {
      return Future.error(err);
    }
  }

  static bool _nullFilter(_, v) => v != null;
}
