// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/telegram.dart'
    show InlineKeyboardMarkup, InlineQueryResult, InlineQueryResultType;

part 'inline_query_result_game.freezed.dart';
part 'inline_query_result_game.g.dart';

/// Represents a Game.
@freezed
abstract class InlineQueryResultGame
    with _$InlineQueryResultGame
    implements InlineQueryResult {
  /// Constructs an [InlineQueryResultGame] object
  const factory InlineQueryResultGame({
    /// Type of the result, always [InlineQueryResultType.game]
    @JsonKey(name: 'type')
    @Default(InlineQueryResultType.game)
    InlineQueryResultType type,

    /// Unique identifier for this result, 1-64 Bytes
    @JsonKey(name: 'id') required String id,

    /// Short name of the game
    @JsonKey(name: 'game_short_name') required String gameShortName,

    /// Optional. Inline keyboard attached to the message
    @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,
  }) = _InlineQueryResultGame;

  /// Constructs an [InlineQueryResultGame] object from a JSON map
  factory InlineQueryResultGame.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultGameFromJson(json);
}
