// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'write_access_allowed.freezed.dart';
part 'write_access_allowed.g.dart';

/// This object represents a service message about a user allowing a bot added
/// to the attachment menu to write messages.
@freezed
abstract class WriteAccessAllowed with _$WriteAccessAllowed {
  /// Constructs a [WriteAccessAllowed] object.
  const factory WriteAccessAllowed({
    /// Name of the connected website. Present only if the user allowed the bot
    /// to send them messages.
    @JsonKey(name: 'web_app_name') String? webAppName,

    /// Optional. True, if the access was granted after the user accepted an
    /// explicit request from a Web App sent by the method requestWriteAccess
    @JsonKey(name: 'from_request') bool? fromRequest,

    /// Optional. True, if the access was granted when the bot was added to the
    /// attachment or side menu
    @JsonKey(name: 'from_attachment_menu') bool? fromAttachmentMenu,
  }) = _WriteAccessAllowed;

  /// Creates a [WriteAccessAllowed] object from JSON object.
  factory WriteAccessAllowed.fromJson(Map<String, dynamic> json) =>
      _$WriteAccessAllowedFromJson(json);
}
