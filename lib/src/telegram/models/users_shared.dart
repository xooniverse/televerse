// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/keyboard_button_request_users.dart'
    show KeyboardButtonRequestUsers;
import 'shared_user.dart';

part 'users_shared.freezed.dart';
part 'users_shared.g.dart';

/// This object contains information about the users whose identifiers were
/// shared with the bot using a [KeyboardButtonRequestUsers] button.
///
/// https://core.telegram.org/bots/api#usershared
@freezed
class UsersShared with _$UsersShared {
  /// Constructs a [UsersShared] object
  const factory UsersShared({
    /// Identifier of the request
    @JsonKey(name: 'request_id') required int requestId,

    /// Identifiers of the shared users. These numbers may have more than 32
    /// significant bits and some programming languages may have
    /// difficulty/silent defects in interpreting them. But they have at most 52
    /// significant bits, so 64-bit integers or double-precision float types are
    /// safe for storing these identifiers. The bot may not have access to the
    /// users and could be unable to use these identifiers, unless the users are
    /// already known to the bot by some other means.
    @JsonKey(name: 'users') required List<SharedUser> users,
  }) = _UsersShared;

  /// Creates a [UsersShared] object from JSON object
  factory UsersShared.fromJson(Map<String, dynamic> json) =>
      _$UsersSharedFromJson(json);
}
