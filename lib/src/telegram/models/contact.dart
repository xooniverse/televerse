/// This object represents a phone contact.
class Contact {
  /// Contact's phone number
  String phoneNumber;

  /// Contact's first name
  String firstName;

  /// Optional. Contact's last name
  String? lastName;

  /// Optional. Contact's user identifier in Telegram
  int? userId;

  /// Optional. Additional data about the contact in the form of a [vCard](https://en.wikipedia.org/wiki/VCard)
  String? vcard;

  Contact({
    required this.phoneNumber,
    required this.firstName,
    this.lastName,
    this.userId,
    this.vcard,
  });

  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(
      phoneNumber: json['phone_number']!,
      firstName: json['first_name']!,
      lastName: json['last_name'],
      userId: json['user_id'],
      vcard: json['vcard'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'phone_number': phoneNumber,
      'first_name': firstName,
      'last_name': lastName,
      'user_id': userId,
      'vcard': vcard,
    };
  }
}
