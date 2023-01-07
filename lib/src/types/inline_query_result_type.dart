part of types;

/// This object represents the type of a result of an inline query.
enum InlineQueryResultType {
  /// Represents a link to an article or web page.
  article("article"),
  photo("photo"),
  gif("gif"),
  mpeg4Gif("mpeg4_gif"),
  video("video"),
  audio("audio"),
  voice("voice"),
  document("document"),
  location("location"),
  venue("venue"),
  contact("contact"),
  game("game"),
  sticker("sticker"),
  ;

  final String value;
  const InlineQueryResultType(this.value);
}
