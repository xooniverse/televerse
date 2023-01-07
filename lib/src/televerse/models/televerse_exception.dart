part of televerse.models;

/// TeleverseException is thrown when an error occurs in the library.
class TeleverseException implements Exception {
  final String message;
  final String? description;
  TeleverseException(this.message, [this.description]);

  @override
  String toString() {
    return 'TeleverseException: $message\n${description ?? ''}\n';
  }

  static TeleverseException fileDoesNotExist(String path) {
    return TeleverseException(
      "File does not exist",
      "The file $path does not exist. Please check the path and try again.",
    );
  }
}
