part of 'models.dart';

/// This object represents a message that was originally sent by a known user.
class MessageOriginUser implements MessageOrigin {
  /// Type of the message origin, always “user”
  @override
  final MessageOriginType type = MessageOriginType.user;

  /// Date the message was sent originally in Unix time
  @override
  final int date;

  /// User that sent the message originally
  final User senderUser;

  /// Constructor
  MessageOriginUser({
    required this.date,
    required this.senderUser,
  });

  /// Constructor from JSON data
  factory MessageOriginUser.fromJson(Map<String, dynamic> json) {
    return MessageOriginUser(
      date: json['date'],
      senderUser: User.fromJson(json['sender_user']),
    );
  }

  /// Converts to JSON encodable [Map]
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'date': date,
      'sender_user': senderUser.toJson(),
    };
  }
}
