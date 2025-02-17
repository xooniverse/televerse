import 'package:freezed_annotation/freezed_annotation.dart';

part 'encrypted_credentials.freezed.dart';
part 'encrypted_credentials.g.dart';

/// Describes data required for decrypting and authenticating
/// EncryptedPassportElement. See the Telegram Passport Documentation for a
/// complete description of the data decryption and authentication processes.
@freezed
class EncryptedCredentials with _$EncryptedCredentials {
  /// Creates a new [EncryptedCredentials] object.
  const factory EncryptedCredentials({
    /// Base64-encoded encrypted JSON-serialized data with unique user's
    /// payload, data hashes, and secrets required for EncryptedPassportElement
    /// decryption and authentication
    required String data,

    /// Base64-encoded data hash for data authentication
    required String hash,

    /// Base64-encoded secret, encrypted with the bot's public RSA key, required
    /// for data decryption
    required String secret,
  }) = _EncryptedCredentials;

  /// Creates a new [EncryptedCredentials] object from json.
  factory EncryptedCredentials.fromJson(Map<String, dynamic> json) =>
      _$EncryptedCredentialsFromJson(json);
}
