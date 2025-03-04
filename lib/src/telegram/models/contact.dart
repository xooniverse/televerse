import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact.freezed.dart';
part 'contact.g.dart';

/// This object represents a phone contact.
@freezed
class Contact with _$Contact {
  /// Constructs a [Contact] object.
  const factory Contact({
    /// Contact's phone number
    @JsonKey(name: 'phone_number') required String phoneNumber,

    /// Contact's first name
    @JsonKey(name: 'first_name') required String firstName,

    /// Optional. Contact's last name
    @JsonKey(name: 'last_name') String? lastName,

    /// Optional. Contact's user identifier in Telegram
    @JsonKey(name: 'user_id') int? userId,

    /// Optional. Additional data about the contact in the form of a
    /// [vCard](https://en.wikipedia.org/wiki/VCard)
    @JsonKey(name: 'vcard') String? vcard,
  }) = _Contact;

  /// Creates a [Contact] object from json.
  factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);
}
