// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'link_preview_options.freezed.dart';
part 'link_preview_options.g.dart';

/// Describes the options used for link preview generation.
@freezed
abstract class LinkPreviewOptions with _$LinkPreviewOptions {
  /// Constructs an instance of [LinkPreviewOptions].
  const factory LinkPreviewOptions({
    /// Optional. True, if the link preview is disabled
    @JsonKey(name: 'is_disabled') bool? isDisabled,

    /// Optional. URL to use for the link preview. If empty, then the first URL
    /// found in the message text will be used
    @JsonKey(name: 'url') String? url,

    /// Optional. True, if the media in the link preview is supposed to be
    /// shrunk; ignored if the URL isn't explicitly specified or media size
    /// change isn't supported for the preview
    @JsonKey(name: 'prefer_small_media') bool? preferSmallMedia,

    /// Optional. True, if the media in the link preview is supposed to be
    /// enlarged; ignored if the URL isn't explicitly specified or media size
    /// change isn't supported for the preview
    @JsonKey(name: 'prefer_large_media') bool? preferLargeMedia,

    /// Optional. True, if the link preview must be shown above the message
    /// text; otherwise, the link preview will be shown below the message text
    @JsonKey(name: 'show_above_text') bool? showAboveText,
  }) = _LinkPreviewOptions;

  /// Returns a [LinkPreviewOptions] instance with link preview disabled.
  ///
  /// This is a convenience getter that provides a pre-configured instance with
  /// [isDisabled] set to true, which will disable link previews when used.
  ///
  /// Example usage:
  /// ```dart
  /// // Disable link previews in a message
  /// bot.api.sendMessage(
  ///   chatId,
  ///   'Check this link: https://example.com',
  ///   linkPreviewOptions: LinkPreviewOptions.disabled,
  /// );
  /// ```
  static LinkPreviewOptions get disabled =>
      _LinkPreviewOptions(isDisabled: true);

  /// Creates an instance of [LinkPreviewOptions] from JSON data.
  factory LinkPreviewOptions.fromJson(Map<String, dynamic> json) =>
      _$LinkPreviewOptionsFromJson(json);
}
