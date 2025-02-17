import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/inline_query_result.dart';
import 'package:televerse/src/telegram/models/input_message_content.dart';
import 'package:televerse/src/telegram/models/reply_markup.dart';
import 'package:televerse/src/telegram/models/message_entity.dart';
import 'package:televerse/televerse.dart' show InlineQueryResultType, ParseMode;

part 'inline_query_result_cached_voice.freezed.dart';
part 'inline_query_result_cached_voice.g.dart';

/// Represents a link to a voice message stored on the Telegram servers. By
/// default, this voice message will be sent by the user. Alternatively, you can
/// use input_message_content to send a message with the specified content
/// instead of the voice message.
///
/// Note: This will only work in Telegram versions released after 9 April, 2016.
/// Older clients will ignore them.
@freezed
class InlineQueryResultCachedVoice
    with _$InlineQueryResultCachedVoice
    implements InlineQueryResult {
  /// Constructs an [InlineQueryResultCachedVoice] object
  const factory InlineQueryResultCachedVoice({
    /// Unique identifier for this result, 1-64 Bytes
    required String id,

    /// Type of the result, always [InlineQueryResultType.voice]
    @Default(InlineQueryResultType.voice) InlineQueryResultType type,

    /// A valid file identifier for the voice message
    @JsonKey(name: 'voice_file_id') required String voiceFileId,

    /// Voice message title
    required String title,

    /// Optional. Caption, 0-1024 characters after entities parsing
    String? caption,

    /// Optional. Mode for parsing entities in the video caption. See formatting
    /// options for more details.
    @JsonKey(name: 'parse_mode') ParseMode? parseMode,

    /// Optional. List of special entities that appear in the caption, which can
    /// be specified instead of parse_mode
    @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,

    /// Optional. Inline keyboard attached to the message
    @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,

    /// Optional. Content of the message to be sent instead of the voice message
    @JsonKey(name: 'input_message_content')
    @InputMessageContentConverter()
    InputMessageContent? inputMessageContent,
  }) = _InlineQueryResultCachedVoice;

  /// Constructs an [InlineQueryResultCachedVoice] object from a JSON map
  factory InlineQueryResultCachedVoice.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultCachedVoiceFromJson(json);
}
