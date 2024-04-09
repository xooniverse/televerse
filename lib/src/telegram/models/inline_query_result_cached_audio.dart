// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'models.dart';

/// Represents a link to an MP3 audio file stored on the Telegram servers. By default, this audio file will be sent by the user. Alternatively, you can use input_message_content to send a message with the specified content instead of the audio.
///
/// Note: This will only work in Telegram versions released after 9 April, 2016. Older clients will ignore them.
class InlineQueryResultCachedAudio implements InlineQueryResult {
  /// Unique identifier for this result, 1-64 Bytes
  @override
  final String id;

  /// Type of the result, always [InlineQueryResultType.audio]
  @override
  InlineQueryResultType get type => InlineQueryResultType.audio;

  /// A valid file identifier for the audio file
  final String audioFileId;

  /// Optional. Caption, 0-1024 characters after entities parsing
  final String? caption;

  /// Optional. Mode for parsing entities in the video caption. See formatting options for more details.
  final ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  final List<MessageEntity>? captionEntities;

  /// Optional. Inline keyboard attached to the message
  final InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the voice message
  final InputMessageContent? inputMessageContent;

  /// Constructs an [InlineQueryResultCachedAudio] objectA
  const InlineQueryResultCachedAudio({
    required this.audioFileId,
    required this.id,
    this.caption,
    this.parseMode,
    this.captionEntities,
    this.replyMarkup,
    this.inputMessageContent,
  });

  /// Converts an [InlineQueryResultCachedAudio] object to a JSON map
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'audio_file_id': audioFileId,
      'caption': caption,
      'parse_mode': parseMode?.value,
      'caption_entities': captionEntities?.map((e) => e.toJson()).toList(),
      'reply_markup': replyMarkup?.toJson(),
      'input_message_content': inputMessageContent?.toJson(),
      'id': id,
    }..removeWhere(_nullFilter);
  }

  /// Constructs an [InlineQueryResultCachedAudio] object from a JSON map
  factory InlineQueryResultCachedAudio.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultCachedAudio(
      audioFileId: json['audio_file_id'] as String,
      id: json['id'] as String,
      caption: json['caption'] as String?,
      parseMode: json['parse_mode'] == null
          ? null
          : ParseMode.fromJson(json['parse_mode'] as String),
      captionEntities: (json['caption_entities'] as List<dynamic>?)
          ?.map((e) => MessageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      replyMarkup: json['reply_markup'] == null
          ? null
          : InlineKeyboardMarkup.fromJson(
              json['reply_markup'] as Map<String, dynamic>,
            ),
      inputMessageContent: json['input_message_content'] == null
          ? null
          : InputMessageContent.fromJson(
              json['input_message_content'] as Map<String, dynamic>,
            ),
    );
  }

  /// Copy method
  InlineQueryResultCachedAudio copyWith({
    String? id,
    String? audioFileId,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    InlineKeyboardMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
  }) {
    return InlineQueryResultCachedAudio(
      id: id ?? this.id,
      audioFileId: audioFileId ?? this.audioFileId,
      caption: caption ?? this.caption,
      parseMode: parseMode ?? this.parseMode,
      captionEntities: captionEntities ?? this.captionEntities,
      replyMarkup: replyMarkup ?? this.replyMarkup,
      inputMessageContent: inputMessageContent ?? this.inputMessageContent,
    );
  }
}
