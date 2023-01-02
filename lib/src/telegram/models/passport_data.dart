part of passport;

/// Describes Telegram Passport data shared with the bot by the user.
class PassportData {
  /// Array with information about documents and other Telegram Passport elements that was shared with the bot
  List<EncryptedPassportElement> data;

  /// Encrypted credentials required to decrypt the data
  EncryptedCredentials credentials;

  PassportData({
    required this.data,
    required this.credentials,
  });

  Map<String, dynamic> toJson() {
    return {
      'data': data.map((e) => e.toJson()).toList(),
      'credentials': credentials.toJson(),
    };
  }

  factory PassportData.fromJson(Map<String, dynamic> json) {
    return PassportData(
      data: (json['data'] as List)
          .map((e) => EncryptedPassportElement.fromJson(e))
          .toList(),
      credentials: EncryptedCredentials.fromJson(json['credentials']!),
    );
  }
}
