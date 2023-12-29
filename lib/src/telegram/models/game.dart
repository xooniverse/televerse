part of 'games.dart';

/// This object represents a game. Use BotFather to create and edit games, their short names will act as unique identifiers.
class Game {
  /// Title of the game
  String title;

  /// Description of the game
  String description;

  /// Photo that will be displayed in the game message in chats.
  List<PhotoSize> photo;

  /// Optional. Brief description of the game or high scores included in the game message. Can be automatically edited to include current high scores for the game when the bot calls [setGameScore](https://core.telegram.org/bots/api#setgamescore), or manually edited using [editMessageText](https://core.telegram.org/bots/api#editmessagetext). 0-4096 characters.
  String? text;

  /// Optional. Special entities that appear in text, such as usernames, URLs, bot commands, etc.
  List<MessageEntity>? textEntities;

  /// Optional. Animation that will be displayed in the game message in chats. Upload via [BotFather](https://t.me/botfather).
  Animation? animation;

  /// Constructs a [Game] object
  Game({
    required this.title,
    required this.description,
    required this.photo,
    this.text,
    this.textEntities,
    this.animation,
  });

  /// De-serializes a [Game] object from a JSON map
  factory Game.fromJson(Map<String, dynamic> json) {
    return Game(
      title: json['title'] as String,
      description: json['description'] as String,
      photo: (json['photo'] as List<dynamic>)
          .map((e) => PhotoSize.fromJson(e as Map<String, dynamic>))
          .toList(),
      text: json['text'] as String?,
      textEntities: (json['text_entities'] as List<dynamic>?)
          ?.map((e) => MessageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      animation: json['animation'] == null
          ? null
          : Animation.fromJson(json['animation'] as Map<String, dynamic>),
    );
  }

  /// Serializes a [Game] object to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'photo': photo.map((e) => e.toJson()).toList(),
      'text': text,
      'text_entities': textEntities?.map((e) => e.toJson()).toList(),
      'animation': animation?.toJson(),
    }..removeWhere((key, value) => value == null);
  }
}
