part of 'models.dart';

/// TeleverseException is thrown when an error occurs in the library.
class TeleverseException implements Exception {
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
    );
  }

  /// Exception thrown when the sessions are used without enabling them.
  static TeleverseException sessionsNotEnabled = TeleverseException(
    "Sessions aren't enabled for the bot ",
    description:
        "To use sessions, enable them using `Televerse.initSessions()` method.",
  );

  /// Exception thrown when the session is tried to be saved without providing path or id.
  static TeleverseException sessionIdNotSet = TeleverseException(
    "Session ID not set",
    description:
        "To save/load the session, you must provide a path or set the session ID.",
  );

  /// Exception thrown when the `getMe` request is failed when setting up a bot command.
  static TeleverseException getMeRequestFailed(Object err, StackTrace stack) =>
      TeleverseException(
        "RawAPI/getMe Request Failed",
        description:
            "The request to getMe failed. Please check your internet connection and try again. \n\nError: $err",
        stackTrace: stack,
      );

  /// Exception thrown when bytes are not provided in case of uploading a file.
  static TeleverseException bytesNotProvided() => TeleverseException(
        "Bytes not provided",
        description:
            "You must provide the bytes of the file to upload. Use the `InputFile.fromBytes` constructor to create an InputFile.",
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
    );
  }
}
