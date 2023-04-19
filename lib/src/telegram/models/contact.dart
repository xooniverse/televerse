part of models;

/// This object represents a phone contact.
class Contact {
  /// Contact's phone number
  final String phoneNumber;

  /// Contact's first name
  final String firstName;

  /// Optional. Contact's last name
  final String? lastName;

  /// Optional. Contact's user identifier in Telegram
  final int? userId;

  /// Optional. Additional data about the contact in the form of a [vCard](https://en.wikipedia.org/wiki/VCard)
  final String? vcard;

  /// Constructs a [Contact] object.
  const Contact({
    required this.phoneNumber,
    required this.firstName,
    this.lastName,
    this.userId,
    this.vcard,
  });

  /// Creates a [Contact] object from json.
  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(
      phoneNumber: json['phone_number']!,
      firstName: json['first_name']!,
      lastName: json['last_name'],
      userId: json['user_id'],
      vcard: json['vcard'],
    );
  }

  /// Converts a [Contact] object to json.
  Map<String, dynamic> toJson() {
    return {
      'phone_number': phoneNumber,
      'first_name': firstName,
      'last_name': lastName,
      'user_id': userId,
      'vcard': vcard,
    }..removeWhere((key, value) => value == null);
  }
}
