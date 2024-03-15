part of '../models.dart';

/// This object describes the origin of a message. It can be one of
/// - [MessageOriginUser]
/// - [MessageOriginHiddenUser]
/// - [MessageOriginChat]
/// - [MessageOriginChannel]

abstract class MessageOrigin {
  /// Type of the message origin
  final MessageOriginType type;

  /// Date the message was sent originally in Unix time
  final int date;

  /// Creates a new [MessageOrigin] instance.
  const MessageOrigin({
    required this.type,
    required this.date,
  });

  /// Creates a new [MessageOrigin] instance from a JSON object.
  factory MessageOrigin.fromJson(Map<String, dynamic> json) {
    switch (json['type']) {
      case 'user':
        return MessageOriginUser.fromJson(json);
      case 'hidden_user':
        return MessageOriginHiddenUser.fromJson(json);
      case 'chat':
        return MessageOriginChat.fromJson(json);
      case 'channel':
        return MessageOriginChannel.fromJson(json);
      default:
        throw TeleverseException(
          "Unknown message origin type",
          description:
              "The given JSON object does not match any MessageOrigin type.",
          type: TeleverseExceptionType.invalidParameter,
        );
    }
  }

  /// Converts [MessageOrigin] instance to a JSON object.
  Map<String, dynamic> toJson();
}
