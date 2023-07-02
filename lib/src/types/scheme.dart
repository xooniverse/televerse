part of types;

/// API Scheme - HTTP or HTTPS.
enum APIScheme {
  /// HTTP
  http,

  /// HTTPS
  https;

  /// Returns the value of the scheme as [String].
  String get value => toString().split('.').last;

  /// Checks equality of the scheme with [other].
  bool isEqual(dynamic other) {
    if (other is APIScheme) {
      return other.value == value;
    } else if (other is String) {
      return other == value;
    } else {
      return false;
    }
  }
}
