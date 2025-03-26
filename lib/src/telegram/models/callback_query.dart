// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/abstractions.dart';
import 'package:televerse/src/telegram/models/message.dart';
import 'user.dart';

part 'callback_query.freezed.dart';
part 'callback_query.g.dart';

/// This object represents an incoming callback query from a callback button in
/// an inline keyboard. If the button that originated the query was attached to
/// a message sent by the bot, the field message will be present. If the button
/// was attached to a message sent via the bot (in inline mode), the field
/// inline_message_id will be present. Exactly one of the fields data or
/// game_short_name will be present.
///
/// NOTE: After the user presses a callback button, Telegram clients will
/// display a progress bar until you call
/// [answerCallbackQuery](https://core.telegram.org/bots/api#answercallbackquery).
/// It is, therefore, necessary to react by calling
/// [answerCallbackQuery](https://core.telegram.org/bots/api#answercallbackquery)
/// even if no notification to the user is needed (e.g., without specifying any
/// of the optional parameters).
@freezed
abstract class CallbackQuery with _$CallbackQuery implements WithUser {
  /// Creates an incoming callback query
  ///
  /// - [id] Unique identifier for this query [from] Sender [message] Message
  ///   sent by the bot with the callback button that originated the query
  /// - [inlineMessageId] Identifier of the message sent via the bot in inline
  ///   mode
  /// - [chatInstance] Global identifier for the chat with the callback button
  /// - [data] Data associated with the callback button
  /// - [gameShortName] Short name of a Game to be returned
  const factory CallbackQuery({
    /// Unique identifier for this query
    @JsonKey(name: 'id') required String id,

    /// Sender
    @JsonKey(name: 'from') required User from,

    /// Optional. Message sent by the bot with the callback button that
    /// originated the query
    @JsonKey(name: 'message') MaybeInaccessibleMessage? message,

    /// Optional. Identifier of the message sent via the bot in inline mode,
    /// that originated the query.
    @JsonKey(name: 'inline_message_id') String? inlineMessageId,

    /// Global identifier, uniquely corresponding to the chat to which the
    /// message with the callback button was sent. Useful for high scores in
    /// games.
    @JsonKey(name: 'chat_instance') required String chatInstance,

    /// Optional. Data associated with the callback button. Be aware that the
    /// message originated the query can contain no callback buttons with this
    /// data.
    @JsonKey(name: 'data') String? data,

    /// Optional. Short name of a Game to be returned, serves as the unique
    /// identifier for the game
    @JsonKey(name: 'game_short_name') String? gameShortName,
  }) = _CallbackQuery;

  /// Creates a [CallbackQuery] from a JSON map
  factory CallbackQuery.fromJson(Map<String, dynamic> json) =>
      _$CallbackQueryFromJson(json);
}
