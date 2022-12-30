part of televerse.models;

class HttpException implements Exception {
  final int code;
  final String message;
  HttpException(this.code, this.message);

  @override
  String toString() {
    return "HttpException [$code]: $message";
  }

  bool get isClientException => code >= 400 && code < 500;
  bool get isServerExeption => code >= 500 && code < 600;
}
