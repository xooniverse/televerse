part of '../models.dart';

/// This object describes a message that can be inaccessible to the bot. It can be one of
/// - [Message]
/// - [InaccessibleMessage]
abstract class MaybeInaccessibleMessage implements WithChat {
  /// Chat the message belonged to
  @override
  final Chat chat;

  /// Unique message identifier inside the chat
  final int messageId;

  /// Always 0. The field can be used to differentiate regular and inaccessible messages.
  final int date;

  /// Constructor
  const MaybeInaccessibleMessage({
    required this.chat,
    required this.messageId,
    required this.date,
  });

  /// Constructor from JSON data
  factory MaybeInaccessibleMessage.fromJson(Map<String, dynamic> json) {
    final hasOnlyThreeProps = json.keys.length == 3;
    if (hasOnlyThreeProps) {
      return InaccessibleMessage.fromJson(json);
    } else {
      return Message.fromJson(json);
    }
  }

  /// Converts to JSON encodable [Map]
  Map<String, dynamic> toJson() {
    return {
      'chat': chat.toJson(),
      'message_id': messageId,
      'date': date,
    };
  }

  /// Returns `true` if this message is accessible.
  bool get isAccessible => this is Message;

  /// Returns `true` if this message is inaccessible.
  bool get isInaccessible => this is InaccessibleMessage;
}
