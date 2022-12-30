import 'package:televerse/src/telegram/models/abstracts/inline_query_result.dart';
import 'package:televerse/src/types/inline_query_result_type.dart';

import 'inline_keyboard_markup.dart';

/// Represents a Game.
class InlineQueryResultGame extends InlineQueryResult {
  @override
  InlineQueryResultType get type => InlineQueryResultType.game;

  /// Short name of the game
  String gameShortName;

  /// Optional. Inline keyboard attached to the message
  InlineKeyboardMarkup? replyMarkup;

  InlineQueryResultGame({
    required this.gameShortName,
    required String id,
    this.replyMarkup,
  }) : super(id: id);

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'id': id,
      'game_short_name': gameShortName,
      'reply_markup': replyMarkup?.toJson(),
    };
  }

  factory InlineQueryResultGame.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultGame(
      gameShortName: json['game_short_name'] as String,
      id: json['id'] as String,
      replyMarkup: json['reply_markup'] == null
          ? null
          : InlineKeyboardMarkup.fromJson(
              json['reply_markup'] as Map<String, dynamic>),
    );
  }
}
