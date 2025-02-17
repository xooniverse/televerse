import 'package:freezed_annotation/freezed_annotation.dart';

part 'inline_query_result_type.g.dart';

/// This object represents the type of a result of an inline query.
@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.snake)
enum InlineQueryResultType {
  /// Represents a link to an article or web page.
  @JsonValue('article')
  article,

  /// Represents a link to a photo.
  @JsonValue('photo')
  photo,

  /// Represents an animated GIF file.
  @JsonValue('gif')
  gif,

  /// Represents a video animation (H.264/MPEG-4 AVC video without sound).
  @JsonValue('mpeg4_gif')
  mpeg4Gif,

  /// Represents a video file.
  @JsonValue('video')
  video,

  /// Represents an MP3 audio file.
  @JsonValue('audio')
  audio,

  /// Represents a voice recording in an .ogg container encoded with OPUS.
  @JsonValue('voice')
  voice,

  /// Represents a file.
  @JsonValue('document')
  document,

  /// Represents a location on a map.
  @JsonValue('location')
  location,

  /// Represents a venue.
  @JsonValue('venue')
  venue,

  /// Represents a contact with a phone number.
  @JsonValue('contact')
  contact,

  /// Represents a game.
  @JsonValue('game')
  game,

  /// Represents a native poll.
  @JsonValue('sticker')
  sticker,
  ;

  /// Converts the [InlineQueryResultType] to its corresponding JSON value.
  String toJson() => _$InlineQueryResultTypeEnumMap[this]!;
}
