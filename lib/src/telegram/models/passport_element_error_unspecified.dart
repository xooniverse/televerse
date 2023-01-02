part of passport;

/// Represents an issue in an unspecified place. The error is considered resolved when new data is added.
class PassportElementErrorUnspecified extends PassportElementError {
  /// Error message
  final String message;

  /// Base64-encoded element hash
  final String elementHash;

  const PassportElementErrorUnspecified({
    required String source,
    required PassportType type,
    required this.message,
    required this.elementHash,
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
      'element_hash': elementHash,
    };
  }

  factory PassportElementErrorUnspecified.fromJson(Map<String, dynamic> json) {
    return PassportElementErrorUnspecified(
      source: json['source']!,
      type: PassportType.fromJson(json['type']!),
      message: json['message']!,
      elementHash: json['element_hash']!,
    );
  }
}
