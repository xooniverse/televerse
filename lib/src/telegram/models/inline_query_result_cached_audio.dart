// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/inline_query_result.dart';
import 'package:televerse/src/telegram/models/input_message_content.dart';
import 'package:televerse/src/telegram/models/reply_markup.dart';
import 'package:televerse/src/telegram/models/message_entity.dart';
import 'package:televerse/televerse.dart' show InlineQueryResultType, ParseMode;

part 'inline_query_result_cached_audio.freezed.dart';
part 'inline_query_result_cached_audio.g.dart';

/// Represents a link to an MP3 audio file stored on the Telegram servers. By
/// default, this audio file will be sent by the user. Alternatively, you can
/// use input_message_content to send a message with the specified content
/// instead of the audio.
///
/// Note: This will only work in Telegram versions released after 9 April, 2016.
/// Older clients will ignore them.
@freezed
class InlineQueryResultCachedAudio
    with _$InlineQueryResultCachedAudio
    implements InlineQueryResult {
  /// Constructs an [InlineQueryResultCachedAudio] object
  const factory InlineQueryResultCachedAudio({
    /// Unique identifier for this result, 1-64 Bytes
    @JsonKey(name: 'id') required String id,

    /// A valid file identifier for the audio file
    @JsonKey(name: 'audio_file_id') required String audioFileId,

    /// Optional. Caption, 0-1024 characters after entities parsing
    @JsonKey(name: 'caption') String? caption,

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

    /// Type of the result, always [InlineQueryResultType.audio]
    @JsonKey(name: 'type')
    @Default(InlineQueryResultType.audio)
    InlineQueryResultType type,
  }) = _InlineQueryResultCachedAudio;

  /// Creates an [InlineQueryResultCachedAudio] object from a JSON map
  factory InlineQueryResultCachedAudio.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultCachedAudioFromJson(json);
}
