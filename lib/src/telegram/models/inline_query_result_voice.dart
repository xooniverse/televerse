// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'models.dart';

/// Represents a link to a voice recording in an .OGG container encoded with OPUS. By default, this voice recording will be sent by the user. Alternatively, you can use input_message_content to send a message with the specified content instead of the the voice message.
///
/// Note: This will only work in Telegram versions released after 9 April, 2016. Older clients will ignore them.
class InlineQueryResultVoice implements InlineQueryResult {
  /// Unique identifier for this result, 1-64 Bytes
  @override
  final String id;

  /// Type of the result, always [InlineQueryResultType.voice]
  @override
  InlineQueryResultType get type => InlineQueryResultType.voice;

  /// A valid URL for the voice recording
  final String voiceUrl;

  /// Recording title
  final String title;

  /// Optional. Caption, 0-1024 characters after entities parsing
  final String? caption;

  /// Optional. Mode for parsing entities in the voice message caption. See formatting options for more details.
  final ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  final List<MessageEntity>? captionEntities;

  /// Optional. Recording duration in seconds
  final int? voiceDuration;

  /// Optional. Inline keyboard attached to the message
  final InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the voice recording
  final InputMessageContent? inputMessageContent;

  /// Constructs an [InlineQueryResultVoice] object
  const InlineQueryResultVoice({
    required this.voiceUrl,
    required this.title,
    required this.id,
    this.caption,
    this.parseMode,
    this.captionEntities,
    this.voiceDuration,
    this.replyMarkup,
    this.inputMessageContent,
  });

  /// Converts an [InlineQueryResultVoice] object to a JSON map
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'voice_url': voiceUrl,
      'title': title,
      'caption': caption,
      'parse_mode': parseMode?.value,
      'caption_entities': captionEntities?.map((e) => e.toJson()).toList(),
      'voice_duration': voiceDuration,
      'reply_markup': replyMarkup?.toJson(),
      'input_message_content': inputMessageContent?.toJson(),
      'id': id,
    }..removeWhere(_nullFilter);
  }

  /// Copy method
  InlineQueryResultVoice copyWith({
    String? id,
    String? voiceUrl,
    String? title,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    int? voiceDuration,
    InlineKeyboardMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
  }) {
    return InlineQueryResultVoice(
      id: id ?? this.id,
      voiceUrl: voiceUrl ?? this.voiceUrl,
      title: title ?? this.title,
      caption: caption ?? this.caption,
      parseMode: parseMode ?? this.parseMode,
      captionEntities: captionEntities ?? this.captionEntities,
      voiceDuration: voiceDuration ?? this.voiceDuration,
      replyMarkup: replyMarkup ?? this.replyMarkup,
      inputMessageContent: inputMessageContent ?? this.inputMessageContent,
    );
  }
}
