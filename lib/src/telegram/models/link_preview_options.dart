part of './models.dart';

/// Describes the options used for link preview generation.
class LinkPreviewOptions {
  /// Constructs an instance of [LinkPreviewOptions].
  LinkPreviewOptions();

  /// Creates an instance of [LinkPreviewOptions] from JSON data.
  Map<String, dynamic> toJson() {
    return {};
  }

  /// Creates an instance of [LinkPreviewOptions] from JSON data.
  factory LinkPreviewOptions.fromJson(Map<String, dynamic> json) {
    return LinkPreviewOptions();
  }
}
