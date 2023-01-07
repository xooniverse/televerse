part of televerse.models;

/// HttpException is thrown when the HTTP request fails.
class HttpException implements Exception {
  final int code;
  final String message;
  final String? description;
  HttpException(this.code, this.message, {this.description});

  @override
  String toString() {
    return "HttpException [$code]: $message${description != null ? '\n($description)' : ''}";
  }

  bool get isClientException => code >= 400 && code < 500;
  bool get isServerExeption => code >= 500 && code < 600;
}

/// Bad Request Exception is thrown when the request is invalid.
class BadRequestException extends HttpException {
  BadRequestException(String message) : super(400, message);
}

/// This exception is thrown when the bot token is invalid.
class UnauthorizedException extends HttpException {
  UnauthorizedException(String message)
      : super(
          401,
          message,
          description:
              "This exception is thrown when the bot token is invalid.",
        );
}
