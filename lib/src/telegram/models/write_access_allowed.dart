part of models;

/// This object represents a service message about a user allowing a bot added to the attachment menu to write messages. Currently holds no information.
class WriteAccessAllowed {
  WriteAccessAllowed();

  Map<String, dynamic> toJson() {
    return {};
  }

  factory WriteAccessAllowed.fromJson(Map<String, dynamic> json) {
    return WriteAccessAllowed();
  }
}
