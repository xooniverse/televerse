part of models;

/// Describes why a request was unsuccessful.
class ResponseParameters {
  /// Optional. The group has been migrated to a supergroup with the specified identifier. This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a signed 64-bit integer or double-precision float type are safe for storing this identifier.
  final int? migrateToChatId;

  /// Optional. In case of exceeding flood control, the number of seconds left to wait before the request can be repeated
  final int? retryAfter;

  /// Constructs a [ResponseParameters] object
  const ResponseParameters({
    this.migrateToChatId,
    this.retryAfter,
  });

  /// Creates a [ResponseParameters] object from JSON object
  factory ResponseParameters.fromJson(Map<String, dynamic> json) {
    return ResponseParameters(
      migrateToChatId: json['migrate_to_chat_id'] as int?,
      retryAfter: json['retry_after'] as int?,
    );
  }

  /// Converts a [ResponseParameters] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'migrate_to_chat_id': migrateToChatId,
      'retry_after': retryAfter,
    }..removeWhere((key, value) => value == null);
  }

  /// Returns a string representation of this object.
  @override
  String toString() => "ResponseParameters(${toJson()})";
}
