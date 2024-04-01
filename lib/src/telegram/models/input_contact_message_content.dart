part of 'models.dart';

/// Represents the content of a contact message to be sent as the result of an inline query.
class InputContactMessageContent extends InputMessageContent {
  /// Contact's phone number
  final String phoneNumber;

  /// Contact's first name
  final String firstName;

  /// Optional. Contact's last name
  final String? lastName;

  /// Optional. Additional data about the contact in the form of a [vCard](https://en.wikipedia.org/wiki/VCard), 0-2048 bytes
  final String? vcard;

  /// Constructs an [InputContactMessageContent] object
  const InputContactMessageContent({
    required this.phoneNumber,
    required this.firstName,
    this.lastName,
    this.vcard,
  });

  /// Converts an [InputContactMessageContent] object to a JSON map
  @override
  Map<String, dynamic> toJson() {
    return {
      'phone_number': phoneNumber,
      'first_name': firstName,
      'last_name': lastName,
      'vcard': vcard,
    }..removeWhere(_nullFilter);
  }

  /// Constructs an [InputContactMessageContent] object from a JSON map
  factory InputContactMessageContent.fromJson(Map<String, dynamic> json) {
    return InputContactMessageContent(
      phoneNumber: json['phone_number'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String?,
      vcard: json['vcard'] as String?,
    );
  }
}
