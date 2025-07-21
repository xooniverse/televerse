// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/telegram.dart' show Chat, MessageOriginType, User;

part 'message_origin.freezed.dart';
part 'message_origin.g.dart';

/// Interface to expose the `type` and `date` properties on `MessageOrigin`
abstract interface class _MessageOriginImpl {
  /// Type of the message origin
  MessageOriginType get type;

  /// Date the message was sent originally in Unix time
  int get date;
}

/// This object describes the origin of a message. It can be one of
/// - [MessageOriginUser]
/// - [MessageOriginHiddenUser]
/// - [MessageOriginChat]
/// - [MessageOriginChannel]
@Freezed(
  fromJson: true,
  toJson: true,
  unionKey: 'type',
  unionValueCase: FreezedUnionCase.snake,
)
sealed class MessageOrigin with _$MessageOrigin implements _MessageOriginImpl {
  /// Message was originally sent by a known user
  @Assert(
    'type == MessageOriginType.user',
    'type must be MessageOriginType.user',
  )
  const factory MessageOrigin.user({
    /// Type of the message origin, must be "user"
    @JsonKey(defaultValue: MessageOriginType.user, name: 'type')
    @Default(MessageOriginType.user)
    MessageOriginType type,

    /// Date the message was sent originally in Unix time
    @JsonKey(required: true, name: 'date') required int date,

    /// User that sent the message originally
    @JsonKey(name: 'sender_user') required final User senderUser,
  }) = MessageOriginUser;

  /// Message was originally sent by an unknown user
  @Assert(
    'type == MessageOriginType.hiddenUser',
    'type must be MessageOriginType.hiddenUser',
  )
  const factory MessageOrigin.hiddenUser({
    /// Type of the message origin, must be "hidden_user"
    @JsonKey(name: 'type', defaultValue: MessageOriginType.hiddenUser)
    @Default(MessageOriginType.hiddenUser)
    MessageOriginType type,

    /// Date the message was sent originally in Unix time
    @JsonKey(name: 'date', required: true) required int date,

    /// Name of the user that sent the message originally
    @JsonKey(name: 'sender_user_name') required String senderUserName,
  }) = MessageOriginHiddenUser;

  /// Message was originally sent on behalf of a chat
  @Assert(
    'type == MessageOriginType.chat',
    'type must be MessageOriginType.chat',
  )
  const factory MessageOrigin.chat({
    /// Type of the message origin, must be "chat"
    @JsonKey(name: 'type', defaultValue: MessageOriginType.chat)
    @Default(MessageOriginType.chat)
    MessageOriginType type,

    /// Date the message was sent originally in Unix time
    @JsonKey(name: 'date', required: true) required int date,

    /// Chat that sent the message originally
    @JsonKey(name: 'sender_chat') required Chat senderChat,

    /// For messages originally sent by an anonymous chat administrator,
    /// original message author signature
    @JsonKey(name: 'author_signature') String? authorSignature,
  }) = MessageOriginChat;

  /// Message was originally sent to a channel chat
  @Assert(
    'type == MessageOriginType.channel',
    'type must be MessageOriginType.channel',
  )
  const factory MessageOrigin.channel({
    /// Type of the message origin, must be "channel"
    @JsonKey(name: 'type', defaultValue: MessageOriginType.channel)
    @Default(MessageOriginType.channel)
    MessageOriginType type,

    /// Date the message was sent originally in Unix time
    @JsonKey(name: 'date', required: true) required int date,

    /// Channel chat to which the message was originally sent
    @JsonKey(name: 'chat') required Chat chat,

    /// Unique message identifier inside the chat
    @JsonKey(name: 'message_id') required int messageId,

    /// Signature of the original post author
    @JsonKey(name: 'author_signature') String? authorSignature,
  }) = MessageOriginChannel;

  factory MessageOrigin.fromJson(Map<String, Object?> json) =>
      _$MessageOriginFromJson(json);
}
