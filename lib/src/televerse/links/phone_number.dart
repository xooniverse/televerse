part of 'links.dart';

/// Used to link to public and private users by their phone number.
class PhoneNumberLink extends Deeplink {
  /// Phone number of the user.
  final String phoneNumber;

  /// Creates a new [PhoneNumberLink] object.
  const PhoneNumberLink(
    this.phoneNumber,
  );

  /// tg:// link
  @override
  String get tg => 'tg://resolve?phone=$phoneNumber';

  /// https://t.me/ link
  @override
  String get https => 'https://t.me/$phoneNumber';

  /// By default, this method returns the [tg] link.
  @override
  String toString() => tg;
}
