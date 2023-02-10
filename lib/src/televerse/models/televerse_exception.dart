part of televerse.models;

/// TeleverseException is thrown when an error occurs in the library.
class TeleverseException implements Exception {
  final String message;
  final String? description;
  final StackTrace? stackTrace;
  TeleverseException(
    this.message, {
    this.description,
    this.stackTrace,
  });

  @override
  String toString() {
    return 'TeleverseException: $message\n${description ?? ''}\n';
  }

  static TeleverseException fileDoesNotExist(String path) {
    return TeleverseException(
      "File does not exist",
      description:
          "The file $path does not exist. Please check the path and try again.",
    );
  }
}
