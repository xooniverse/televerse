import 'package:freezed_annotation/freezed_annotation.dart';
part 'message_origin_type.g.dart';

/// The type of a `MessageOrigin`
@JsonEnum(fieldRename: FieldRename.snake, alwaysCreate: true)
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

  /// Converts the [MessageOriginType] to its corresponding JSON value.
  String toJson() => _$MessageOriginTypeEnumMap[this]!;
}
