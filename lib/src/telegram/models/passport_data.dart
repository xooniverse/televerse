part of 'passport.dart';

/// Describes Telegram Passport data shared with the bot by the user.
class PassportData {
  /// Array with information about documents and other Telegram Passport elements that was shared with the bot
  final List<EncryptedPassportElement> data;

  /// Encrypted credentials required to decrypt the data
  final EncryptedCredentials credentials;

  /// Constructs a [PassportData] object
  const PassportData({
    required this.data,
    required this.credentials,
  });

  /// Converts a [PassportData] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'data': data.map((e) => e.toJson()).toList(),
      'credentials': credentials.toJson(),
    };
  }

  /// Creates a [PassportData] object from JSON object
  factory PassportData.fromJson(Map<String, dynamic> json) {
    return PassportData(
      data: (json['data'] as List<dynamic>)
          .map((e) => EncryptedPassportElement.fromJson(e))
          .toList(),
      credentials: EncryptedCredentials.fromJson(json['credentials']!),
    );
  }
}
