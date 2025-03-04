import 'package:freezed_annotation/freezed_annotation.dart';

part 'keyboard_button_request_users.freezed.dart';
part 'keyboard_button_request_users.g.dart';

/// This object defines the criteria used to request a suitable user. The
/// identifier of the selected user will be shared with the bot when the
/// corresponding button is pressed.
@freezed
class KeyboardButtonRequestUsers with _$KeyboardButtonRequestUsers {
  /// Creates a new [KeyboardButtonRequestUsers] object.
  const factory KeyboardButtonRequestUsers({
    /// Signed 32-bit identifier of the request.
    @JsonKey(name: 'request_id') required int requestId,

    /// Optional. Pass True to request a bot, pass False to request a regular
    /// user. If not specified, no additional restrictions are applied.
    @JsonKey(name: 'user_is_bot') bool? userIsBot,

    /// Optional. Pass True to request a premium user, pass False to request a
    /// non-premium user. If not specified, no additional restrictions are
    /// applied.
    @JsonKey(name: 'user_is_premium') bool? userIsPremium,

    /// Optional. The maximum number of users to be selected; 1-10. Defaults to
    /// 1.
    @JsonKey(name: 'max_quantity') int? maxQuantity,

    /// Optional. Pass True to request the users' first and last name.
    @JsonKey(name: 'request_name') bool? requestName,

    /// Optional. Pass True to request the users' username.
    @JsonKey(name: 'request_username') bool? requestUsername,

    /// Optional. Pass True to request the users' photo.
    @JsonKey(name: 'request_photo') bool? requestPhoto,
  }) = _KeyboardButtonRequestUsers;

  /// Creates a new [KeyboardButtonRequestUsers] from a JSON object.
  factory KeyboardButtonRequestUsers.fromJson(Map<String, dynamic> json) =>
      _$KeyboardButtonRequestUsersFromJson(json);
}
