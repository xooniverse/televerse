part of 'models.dart';

/// HttpException is thrown when the HTTP request fails.
class TelegramException implements Exception {
  /// The HTTP status code.
  final int code;

  /// Optional description.
  final String? description;

  /// Stack trace of the exception.
  final StackTrace stackTrace;

  /// Constructs a new [TelegramException].
  TelegramException(
    this.code, {
    this.description,
    this.parameters,
    StackTrace? stackTrace,
  }) : stackTrace = stackTrace ?? StackTrace.current;

  /// Constructs a new [TelegramException] from a JSON object.
  factory TelegramException.fromJson(
    Map<String, dynamic> json, {
    StackTrace? stack,
  }) {
    return TelegramException(
      json['error_code'],
      description: json['description'],
      parameters: json['parameters'] != null
          ? ResponseParameters.fromJson(json['parameters'])
          : null,
      stackTrace: stack,
    );
  }

  /// Response Parameters
  ResponseParameters? parameters;

  /// Returns a string representation of the exception.
  @override
  String toString() {
    String str = "TelegramException [$code]: ";
    if (description != null) {
      str += "($description)\n";
    }
    if (parameters != null) {
      str += "\nParameters: $parameters";
    }

    str += "\nStack Trace:\n$stackTrace";
    return str;
  }

  /// Returns true if the exception is a client exception.
  bool get isClientException => code >= 400 && code < 500;

  /// Returns true if the exception is a server exception.
  bool get isServerExeption => code >= 500 && code < 600;

  /// Returns the JSON encodable Map
  Map<String, dynamic> toJson() {
    return {
      "error_code": code,
      "description": description,
      "parameters": parameters?.toJson(),
    }..removeWhere(nullFilter);
  }
}
