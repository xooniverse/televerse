part of televerse.models;

/// TeleverseException is thrown when an error occurs in the library.
class TeleverseException implements Exception {
  /// The error message.
  final String message;

  /// Optional description.
  final String? description;

  /// Optional stack trace.
  final StackTrace? stackTrace;

  /// Constructs a new [TeleverseException].
  TeleverseException(
    this.message, {
    this.description,
    this.stackTrace,
  });

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
}
