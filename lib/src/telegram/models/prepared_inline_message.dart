part of 'models.dart';

/// Describes an inline message to be sent by a user of a Mini App.
class PreparedInlineMessage {
  /// Unique identifier of the prepared message.
  final String id;

  /// Expiration date of the prepared message, in Unix time.
  /// Expired prepared messages can no longer be used.
  final int expirationDate;

  /// Creates a [PreparedInlineMessage] object.
  const PreparedInlineMessage({
    required this.id,
    required this.expirationDate,
  });

  /// Creates a [PreparedInlineMessage] object from a JSON map.
  factory PreparedInlineMessage.fromJson(Map<String, dynamic> json) {
    return PreparedInlineMessage(
      id: json['id'],
      expirationDate: json['expiration_date'],
    );
  }

  /// Converts this object to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'expiration_date': expirationDate,
    };
  }
}
