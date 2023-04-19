part of models;

/// This object represents a service message about a user allowing a bot added to the attachment menu to write messages. Currently holds no information.
class WriteAccessAllowed {
  /// Constructs a [WriteAccessAllowed] object
  WriteAccessAllowed();

  /// Converts a [WriteAccessAllowed] object to JSON object
  Map<String, dynamic> toJson() {
    return {};
  }

  /// Creates a [WriteAccessAllowed] object from JSON object
  factory WriteAccessAllowed.fromJson(Map<String, dynamic> json) {
    return WriteAccessAllowed();
  }
}
