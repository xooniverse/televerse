part of 'models.dart';

/// This object represents a message that was originally sent by an unknown user.
class MessageOriginHiddenUser implements MessageOrigin {
  /// Type of the message origin, always “hidden_user”
  @override
  final MessageOriginType type = MessageOriginType.hiddenUser;

  /// Date the message was sent originally in Unix time
  @override
  final int date;

  /// Name of the user that sent the message originally
  final String senderUserName;

  /// Constructor
  MessageOriginHiddenUser({
    required this.date,
    required this.senderUserName,
  });

  /// Constructor from JSON data
  factory MessageOriginHiddenUser.fromJson(Map<String, dynamic> json) {
    return MessageOriginHiddenUser(
      date: json['date'],
      senderUserName: json['sender_user_name'],
    );
  }

  /// Converts to JSON encodable [Map]
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'date': date,
      'sender_user_name': senderUserName,
    };
  }
}
