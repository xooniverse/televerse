import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/inline_query_result.dart'
    show InlineQueryResult;
import 'package:televerse/src/telegram/models/input_message_content.dart';
import 'package:televerse/src/telegram/models/message_entity.dart';
import 'package:televerse/src/telegram/models/reply_markup.dart';
import 'package:televerse/televerse.dart';

part 'inline_query_result_voice.freezed.dart';
part 'inline_query_result_voice.g.dart';

/// Represents a link to a voice recording in an .OGG container encoded with
/// OPUS. By default, this voice recording will be sent by the user.
/// Alternatively, you can use input_message_content to send a message with the
/// specified content instead of the the voice message.
///
/// Note: This will only work in Telegram versions released after 9 April, 2016.
/// Older clients will ignore them.
@freezed
class InlineQueryResultVoice
    with _$InlineQueryResultVoice
    implements InlineQueryResult {
  /// Constructs the `InlineQueryResultVoice`
  const factory InlineQueryResultVoice({
    /// Type of the result, always [InlineQueryResultType.voice]
    @Default(InlineQueryResultType.voice) InlineQueryResultType type,

    /// Unique identifier for this result, 1-64 Bytes
    @JsonKey(name: 'id') required String id,

    /// A valid URL for the voice recording
    @JsonKey(name: 'voice_url') required String voiceUrl,

    /// Recording title
    @JsonKey(name: 'title') required String title,

    /// Optional. Caption, 0-1024 characters after entities parsing
    @JsonKey(name: 'caption') String? caption,

    /// Optional. Mode for parsing entities in the voice message caption. See
    /// formatting options for more details.
    @JsonKey(name: 'parse_mode') ParseMode? parseMode,

    /// Optional. List of special entities that appear in the caption, which can
    /// be specified instead of parse_mode
    @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,

    /// Optional. Recording duration in seconds
    @JsonKey(name: 'voice_duration') int? voiceDuration,

    /// Optional. Inline keyboard attached to the message
    @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,

    /// Optional. Content of the message to be sent instead of the voice
    /// recording
    @JsonKey(name: 'input_message_content')
    @InputMessageContentConverter()
    InputMessageContent? inputMessageContent,
  }) = _InlineQueryResultVoice;

  /// Creates an [InlineQueryResultVoice] instance from JSON data
  factory InlineQueryResultVoice.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultVoiceFromJson(json);
}
