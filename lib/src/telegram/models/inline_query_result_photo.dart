// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'models.dart';

/// Represents a link to a photo. By default, this photo will be sent by the user with optional caption. Alternatively, you can use input_message_content to send a message with the specified content instead of the photo.
class InlineQueryResultPhoto implements InlineQueryResult {
  /// Unique identifier for this result, 1-64 Bytes
  @override
  final String id;

  /// Type of the result, always [InlineQueryResultType.photo]
  @override
  InlineQueryResultType get type => InlineQueryResultType.photo;

  /// A valid URL of the photo. Photo must be in JPEG format. Photo size must not exceed 5MB
  final String photoUrl;

  /// URL of the thumbnail for the photo
  final String thumbnailUrl;

  /// Optional. Width of the photo
  final int? photoWidth;

  /// Optional. Height of the photo
  final int? photoHeight;

  /// Optional. Title for the result
  final String? title;

  /// Optional. Short description of the result
  final String? description;

  /// Optional. Caption of the photo to be sent, 0-1024 characters after entities parsing
  final String? caption;

  /// Optional. Mode for parsing entities in the photo caption. See formatting options for more details.
  final ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  final List<MessageEntity>? captionEntities;

  /// Optional. Inline keyboard attached to the message
  final InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the photo
  @override
  final InputMessageContent? inputMessageContent;

  /// Constructs an [InlineQueryResultPhoto] object
  const InlineQueryResultPhoto({
    required this.photoUrl,
    required this.thumbnailUrl,
    required this.id,
    this.photoWidth,
    this.photoHeight,
    this.title,
    this.description,
    this.caption,
    this.parseMode,
    this.captionEntities,
    this.replyMarkup,
    this.inputMessageContent,
  });

  /// Converts an [InlineQueryResultPhoto] object to a JSON object
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'photo_url': photoUrl,
      'thumbnail_url': thumbnailUrl,
      'photo_width': photoWidth,
      'photo_height': photoHeight,
      'title': title,
      'description': description,
      'caption': caption,
      'parse_mode': parseMode?.value,
      'caption_entities': captionEntities?.map((e) => e.toJson()).toList(),
      'reply_markup': replyMarkup?.toJson(),
      'input_message_content': inputMessageContent?.toJson(),
      'id': id,
    }..removeWhere(_nullFilter);
  }

  /// Constructs an [InlineQueryResultPhoto] object from a JSON object
  factory InlineQueryResultPhoto.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultPhoto(
      photoUrl: json['photo_url'] as String,
      thumbnailUrl: json['thumbnail_url'] as String,
      id: json['id'] as String,
      photoWidth: json['photo_width'] as int?,
      photoHeight: json['photo_height'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
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
  InlineQueryResultPhoto copyWith({
    String? id,
    String? photoUrl,
    String? thumbnailUrl,
    int? photoWidth,
    int? photoHeight,
    String? title,
    String? description,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    InlineKeyboardMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
  }) {
    return InlineQueryResultPhoto(
      id: id ?? this.id,
      photoUrl: photoUrl ?? this.photoUrl,
      thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
      photoWidth: photoWidth ?? this.photoWidth,
      photoHeight: photoHeight ?? this.photoHeight,
      title: title ?? this.title,
      description: description ?? this.description,
      caption: caption ?? this.caption,
      parseMode: parseMode ?? this.parseMode,
      captionEntities: captionEntities ?? this.captionEntities,
      replyMarkup: replyMarkup ?? this.replyMarkup,
      inputMessageContent: inputMessageContent ?? this.inputMessageContent,
    );
  }
}
