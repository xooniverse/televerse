part of models;

/// This object represents a service message about a user allowing a bot added to the attachment menu to write messages.
class WriteAccessAllowed {
  /// Name of the connected website. Present only if the user allowed the bot to send them messages.
  final String? webAppName;

  /// Constructs a [WriteAccessAllowed] object
  const WriteAccessAllowed({
    this.webAppName,
  });

  /// Converts a [WriteAccessAllowed] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'web_app_name': webAppName,
    }..removeWhere((key, value) => value == null);
  }

  /// Creates a [WriteAccessAllowed] object from JSON object
  factory WriteAccessAllowed.fromJson(Map<String, dynamic> json) {
    return WriteAccessAllowed(
      webAppName: json['web_app_name'],
    );
  }
}
