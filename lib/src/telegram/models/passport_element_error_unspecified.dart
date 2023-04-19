part of passport;

/// Represents an issue in an unspecified place. The error is considered resolved when new data is added.
class PassportElementErrorUnspecified extends PassportElementError {
  /// Error message
  final String message;

  /// Base64-encoded element hash
  final String elementHash;

  /// Constructs a [PassportElementErrorUnspecified] object
  const PassportElementErrorUnspecified({
    required String source,
    required PassportType type,
    required this.message,
    required this.elementHash,
  }) : super(
          source: source,
          type: type,
        );

  /// Converts a [PassportElementErrorUnspecified] object to JSON object
  @override
  Map<String, dynamic> toJson() {
    return {
      'source': source,
      'type': type,
      'message': message,
      'element_hash': elementHash,
    }..removeWhere((key, value) => value == null);
  }

  /// Creates a [PassportElementErrorUnspecified] object from JSON object
  factory PassportElementErrorUnspecified.fromJson(Map<String, dynamic> json) {
    return PassportElementErrorUnspecified(
      source: json['source']!,
      type: PassportType.fromJson(json['type']!),
      message: json['message']!,
      elementHash: json['element_hash']!,
    );
  }
}
