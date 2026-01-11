part of 'models.dart';

/// Enum to classify different types of Televerse exceptions.
enum TeleverseExceptionType {
  /// File does not exist.
  fileDoesNotExist,

  /// Thrown when a API request is failed
  requestFailed,

  /// Thrown when the timeout exception occurs.
  timeoutException,

  /// Parameter Exception
  ///
  /// This type of exception is thrown when a request is made with invalid parameters.
  invalidParameter,

  /// Bot is not initialized.
  ///
  /// This type of exception is thrown when a method is called before even creating the bot instance.
  botNotInitialized,

  /// Update type doesn't have a chat.
  ///
  /// This type of exception is thrown when the update type doesn't have a chat.
  updateTypeDoesNotHaveChat,

  /// Unsupported feature.
  ///
  /// This type of exception is thrown when a feature is not supported.
  unsupported,
}

/// TeleverseException is thrown when an error occurs in the library.
class TeleverseException implements Exception {
  /// The type of the exception.
  final TeleverseExceptionType type;

  /// The error message.
  final String message;

  /// Optional description.
  final String? description;

  /// Optional stack trace.
  final StackTrace stackTrace;

  /// Constructs a new [TeleverseException].
  TeleverseException(
    this.message, {
    this.description,
    StackTrace? stackTrace,
    required this.type,
  }) : stackTrace = stackTrace ?? StackTrace.current;

  /// Returns a string representation of the exception.
  @override
  String toString() {
    return 'TeleverseException: $message\n${description ?? ''}\n';
  }

  /// Returns a list of invalid limit exceptions.
  static TeleverseException fileDoesNotExist(String path) {
    return TeleverseException(
      "File does not exist",
      description:
          "The file $path does not exist. Please check the path and try again.",
      type: TeleverseExceptionType.fileDoesNotExist,
    );
  }

  /// Exception thrown when the `getMe` request is failed when setting up a bot command.
  static TeleverseException getMeRequestFailed(Object err, StackTrace stack) =>
      TeleverseException(
        "RawAPI/getMe Request Failed",
        description:
            "The request to /getMe failed.\n\n"
            "Error: $err \n\n"
            "Here are a few things you can try:\n"
            "  1. Make sure the bot token passed is correct.\n"
            "  2. Make sure you have a stable internet connection.\n",
        stackTrace: stack,
        type: TeleverseExceptionType.requestFailed,
      );

  /// Exception thrown when the timeout exception occurs.
  static TeleverseException timeoutException(StackTrace st, Duration timeout) {
    return TeleverseException(
      "Connection timeout.",
      description:
          "The request took too long to complete. This might be due to a slow internet connection or sometimes due to the Telegram servers. Try again later.\n\n"
          "Possible solutions:\n"
          "   1. Increase the timeout duration. Currently it is set to $timeout.\n"
          "   2. Check your internet connection.\n"
          "   3. Attach a error handler using `Bot.onError` to handle the timeout exception.",
      stackTrace: st,
      type: TeleverseExceptionType.timeoutException,
    );
  }

  /// Exception thrown when the timeout exception occurs.
  static TeleverseException typeParameterRequired(
    String method,
    Type type,
    List<Type> expected,
  ) {
    return TeleverseException(
      "Type Parameter Required.",
      description:
          "Televerse is a strictly typed library and does not allows usage of dynamic types. This exception is thrown either\n"
          "   1. when you do not mention type parameter when it is required or\n"
          "   2. when you've passed the type [$type] where types [${expected.join(', ')}] are expected.\n\n"
          "If you are using the `Context.$method` method, try `ctx.$method<bool>(...)` for inline messages or `ctx.$method<Message>(...)` otherwise.",
      type: TeleverseExceptionType.invalidParameter,
    );
  }
}
