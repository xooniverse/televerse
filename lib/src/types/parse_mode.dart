import 'package:freezed_annotation/freezed_annotation.dart';

part 'parse_mode.g.dart';

/// This object represents the [ParseMode] of a message.
///
/// See the [Telegram API docs](https://core.telegram.org/bots/api#formatting-options) for more information.
@JsonEnum(alwaysCreate: true)
enum ParseMode {
  /// Markdown
  @JsonValue('Markdown')
  markdown,

  /// HTML
  @JsonValue('HTML')
  html,

  /// MarkdownV2
  @JsonValue('MarkdownV2')
  markdownV2;

  /// Converts the [ParseMode] to its corresponding JSON value.
  String toJson() => _$ParseModeEnumMap[this]!;
}
