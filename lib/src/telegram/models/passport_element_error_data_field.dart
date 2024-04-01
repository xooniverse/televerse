part of 'passport.dart';

/// Represents an issue in one of the data fields that was provided by the user. The error is considered resolved when the field's value changes.
class PassportElementErrorDataField extends PassportElementError {
  /// Error message
  final String message;

  /// Name of the data field which has the error
  final String fieldName;

  /// Base64-encoded data hash
  final String dataHash;

  /// Constructs a [PassportElementErrorDataField] object
  const PassportElementErrorDataField({
    required super.source,
    required super.type,
    required this.message,
    required this.fieldName,
    required this.dataHash,
  });

  /// Creates a [PassportElementErrorDataField] object from JSON object
  @override
  Map<String, dynamic> toJson() {
    return {
      'source': source,
      'type': type,
      'message': message,
      'field_name': fieldName,
      'data_hash': dataHash,
    }..removeWhere(_nullFilter);
  }

  /// Creates a [PassportElementErrorDataField] object from JSON object
  factory PassportElementErrorDataField.fromJson(Map<String, dynamic> json) {
    return PassportElementErrorDataField(
      source: json['source']!,
      type: PassportType.fromJson(json['type']!),
      message: json['message']!,
      fieldName: json['field_name']!,
      dataHash: json['data_hash']!,
    );
  }
}
