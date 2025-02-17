import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/abstractions.dart';
import 'package:televerse/televerse.dart';

part 'chat.freezed.dart';
part 'chat.g.dart';

/// This object represents a chat.
@freezed
class Chat with _$Chat implements WithID {
  /// Constructs a [Chat] object.
  const factory Chat({
    /// Unique identifier for this chat.
    required int id,

    /// Type of the chat, can be either "private", "group", "supergroup" or
    /// "channel".
    required ChatType type,

    /// Title, for supergroups, channels, and group chats.
    String? title,

    /// Username, for private chats, supergroups, and channels if available.
    String? username,

    /// First name of the other party in a private chat.
    @JsonKey(name: 'first_name') String? firstName,

    /// Last name of the other party in a private chat.
    @JsonKey(name: 'last_name') String? lastName,

    /// True, if the supergroup chat is a forum (has topics enabled).
    @JsonKey(name: 'is_forum') bool? isForum,
  }) = _Chat;

  /// Creates a [Chat] object from JSON.
  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);
}
