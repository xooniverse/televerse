part of types;

/// This object represents the type of a result of an inline query.
enum InlineQueryResultType {
  /// Represents a link to an article or web page.
  article("article"),

  /// Represents a link to a photo.
  photo("photo"),

  /// Represents an animated GIF file.
  gif("gif"),

  /// Represents a video animation (H.264/MPEG-4 AVC video without sound).
  mpeg4Gif("mpeg4_gif"),

  /// Represents a video file.
  video("video"),

  /// Represents an MP3 audio file.
  audio("audio"),

  /// Represents a voice recording in an .ogg container encoded with OPUS.
  voice("voice"),

  /// Represents a file.
  document("document"),

  /// Represents a location on a map.
  location("location"),

  /// Represents a venue.
  venue("venue"),

  /// Represents a contact with a phone number.
  contact("contact"),

  /// Represents a game.
  game("game"),

  /// Represents a native poll.
  sticker("sticker"),
  ;

  /// The value of this enum.
  final String value;

  /// Constructs a new [InlineQueryResultType].
  const InlineQueryResultType(this.value);
}
