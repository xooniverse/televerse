part of 'models.dart';

/// This object represents a service message about a user allowing a bot added to the attachment menu to write messages.
class WriteAccessAllowed {
  /// Name of the connected website. Present only if the user allowed the bot to send them messages.
  final String? webAppName;

  /// Optional. True, if the access was granted after the user accepted an explicit request from a Web App sent by the method requestWriteAccess
  final bool? fromRequest;

  /// Optional. True, if the access was granted when the bot was added to the attachment or side menu
  final bool? fromAttachmentMenu;

  /// Constructs a [WriteAccessAllowed] object
  const WriteAccessAllowed({
    this.webAppName,
    this.fromAttachmentMenu,
    this.fromRequest,
  });

  /// Converts a [WriteAccessAllowed] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'web_app_name': webAppName,
      'from_request': fromRequest,
      'from_attachment_menu': fromAttachmentMenu,
    }..removeWhere(_nullFilter);
  }

  /// Creates a [WriteAccessAllowed] object from JSON object
  factory WriteAccessAllowed.fromJson(Map<String, dynamic> json) {
    return WriteAccessAllowed(
      webAppName: json['web_app_name'],
      fromRequest: json['from_request'],
      fromAttachmentMenu: json['from_attachment_menu'],
    );
  }
}
