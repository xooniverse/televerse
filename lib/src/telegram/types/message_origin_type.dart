import 'package:freezed_annotation/freezed_annotation.dart';

/// The type of a `MessageOrigin`
@JsonEnum(fieldRename: FieldRename.snake)
enum MessageOriginType {
  /// User
  @JsonValue('user')
  user,

  /// Hidden User
  @JsonValue('hidden_user')
  hiddenUser,

  /// Chat
  @JsonValue('chat')
  chat,

  /// Channel
  @JsonValue('channel')
  channel;
}
