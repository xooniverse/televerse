part of './models.dart';

/// Describes the options used for link preview generation.
class LinkPreviewOptions {
  /// Optional. True, if the link preview is disabled
  final bool? isDisabled;

  /// Optional. URL to use for the link preview. If empty, then the first URL found in the message text will be used
  final String? url;

  /// Optional. True, if the media in the link preview is suppposed to be shrunk; ignored if the URL isn't explicitly specified or media size change isn't supported for the preview
  final bool? preferSmallMedia;

  /// Optional. True, if the media in the link preview is suppposed to be enlarged; ignored if the URL isn't explicitly specified or media size change isn't supported for the preview
  final bool? preferLargeMedia;

  /// Optional. True, if the link preview must be shown above the message text; otherwise, the link preview will be shown below the message text
  final bool? showAboveText;

  /// Constructs an instance of [LinkPreviewOptions].
  const LinkPreviewOptions({
    this.isDisabled,
    this.url,
    this.preferSmallMedia,
    this.preferLargeMedia,
    this.showAboveText,
  });

  /// Creates an instance of [LinkPreviewOptions] from JSON data.
  Map<String, dynamic> toJson() {
    return {
      'is_disabled': isDisabled,
      'url': url,
      'prefer_small_media': preferSmallMedia,
      'prefer_large_media': preferLargeMedia,
      'show_above_text': showAboveText,
    }..removeWhere(_nullFilter);
  }

  /// Creates an instance of [LinkPreviewOptions] from JSON data.
  factory LinkPreviewOptions.fromJson(Map<String, dynamic> json) {
    return LinkPreviewOptions(
      isDisabled: json['is_disabled'],
      url: json['url'],
      preferSmallMedia: json['prefer_small_media'],
      preferLargeMedia: json['prefer_large_media'],
      showAboveText: json['show_above_text'],
    );
  }
}
