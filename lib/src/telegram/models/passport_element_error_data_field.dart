part of passport;

/// Represents an issue in one of the data fields that was provided by the user. The error is considered resolved when the field's value changes.
class PassportElementErrorDataField extends PassportElementError {
  /// Error message
  final String message;

  /// Name of the data field which has the error
  final String fieldName;

  /// Base64-encoded data hash
  final String dataHash;

  const PassportElementErrorDataField({
    required String source,
    required PassportType type,
    required this.message,
    required this.fieldName,
    required this.dataHash,
  }) : super(
          source: source,
          type: type,
        );

  @override
  Map<String, dynamic> toJson() {
    return {
      'source': source,
      'type': type,
      'message': message,
      'field_name': fieldName,
      'data_hash': dataHash,
    }..removeWhere((key, value) => value == null);
  }

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
