// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/telegram.dart'
    show
        InlineKeyboardMarkup,
        InlineQueryResult,
        InlineQueryResultAudio,
        InlineQueryResultType,
        InputMessageContent,
        InputMessageContentConverter,
        MessageEntity,
        ParseMode;

part 'inline_query_result_audio.freezed.dart';
part 'inline_query_result_audio.g.dart';

/// Represents a link to an MP3 audio file. By default, this audio file will be
/// sent by the user. Alternatively, you can use input_message_content to send a
/// message with the specified content instead of the audio.
///
/// Note: This will only work in Telegram versions released after 9 April, 2016.
/// Older clients will ignore them.
@freezed
abstract class InlineQueryResultAudio
    with _$InlineQueryResultAudio
    implements InlineQueryResult {
  /// Constructs an [InlineQueryResultAudio] object
  const factory InlineQueryResultAudio({
    /// Unique identifier for this result, 1-64 Bytes
    @JsonKey(name: 'id') required String id,

    /// A valid URL for the audio file
    @JsonKey(name: 'audio_url') required String audioUrl,

    /// Title
    @JsonKey(name: 'title') required String title,

    /// Optional. Caption, 0-1024 characters after entities parsing
    @JsonKey(name: 'caption') String? caption,

    /// Optional. Mode for parsing entities in the audio caption. See formatting
    /// options for more details.
    @JsonKey(name: 'parse_mode') ParseMode? parseMode,

    /// Optional. List of special entities that appear in the caption, which can
    /// be specified instead of parse_mode
    @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,

    /// Optional. Performer
    @JsonKey(name: 'performer') String? performer,

    /// Optional. Audio duration in seconds
    @JsonKey(name: 'audio_duration') int? audioDuration,

    /// Optional. Inline keyboard attached to the message
    @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,

    /// Optional. Content of the message to be sent instead of the audio
    @JsonKey(name: 'input_message_content')
    @InputMessageContentConverter()
    InputMessageContent? inputMessageContent,

    /// Type of the result, always [InlineQueryResultType.audio]
    @JsonKey(name: 'type')
    @Default(InlineQueryResultType.audio)
    InlineQueryResultType type,
  }) = _InlineQueryResultAudio;

  /// Creates an [InlineQueryResultAudio] object from JSON
  factory InlineQueryResultAudio.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultAudioFromJson(json);
}
