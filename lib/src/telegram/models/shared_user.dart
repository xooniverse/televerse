// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'photo_size.dart';

part 'shared_user.freezed.dart';
part 'shared_user.g.dart';

/// Represents information about a user that was shared with the bot using a
/// KeyboardButtonRequestUser button.
@freezed
abstract class SharedUser with _$SharedUser {
  /// Creates a [SharedUser] object.
  const factory SharedUser({
    /// Identifier of the shared user. This number may have more than 32
    /// significant bits and some programming languages may have
    /// difficulty/silent defects in interpreting it. But it has at most 52
    /// significant bits, so 64-bit integers or double-precision float types are
    /// safe for storing these identifiers. The bot may not have access to the
    /// user and could be unable to use this identifier unless the user is
    /// already known to the bot by some other means.
    @JsonKey(name: 'user_id') required int userId,

    /// Optional. First name of the user, if the name was requested by the bot.
    @JsonKey(name: 'first_name') String? firstName,

    /// Optional. Last name of the user, if the name was requested by the bot.
    @JsonKey(name: 'last_name') String? lastName,

    /// Optional. Username of the user, if the username was requested by the
    /// bot.
    @JsonKey(name: 'username') String? username,

    /// Optional. Available sizes of the chat photo, if the photo was requested
    /// by the bot.
    @JsonKey(name: 'photo') List<PhotoSize>? photo,
  }) = _SharedUser;

  /// Creates a [SharedUser] object from a JSON map.
  factory SharedUser.fromJson(Map<String, dynamic> json) =>
      _$SharedUserFromJson(json);
}
