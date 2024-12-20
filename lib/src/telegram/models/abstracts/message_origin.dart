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
    return switch (MessageOriginType.from(json['type'])) {
      MessageOriginType.user => MessageOriginUser.fromJson(json),
      MessageOriginType.hiddenUser => MessageOriginHiddenUser.fromJson(json),
      MessageOriginType.chat => MessageOriginChat.fromJson(json),
      MessageOriginType.channel => MessageOriginChannel.fromJson(json),
    };
  }

  /// Converts [MessageOrigin] instance to a JSON object.
  Map<String, dynamic> toJson();
}
