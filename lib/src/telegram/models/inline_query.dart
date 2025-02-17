import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/abstractions.dart';
import 'package:televerse/televerse.dart';
import 'user.dart';
import 'location.dart';

part 'inline_query.freezed.dart';
part 'inline_query.g.dart';

/// This object represents an incoming inline query. When the user sends an empty query,
/// your bot could return some default or trending results.
@freezed
class InlineQuery with _$InlineQuery implements WithUser {
  /// Creates an incoming inline query
  ///
  /// [id] Unique identifier for this query
  /// [from] Sender
  /// [query] Text of the query (up to 256 characters)
  /// [offset] Offset of the results to be returned, can be controlled by the bot
  /// [chatType] Type of the chat from which the inline query was sent
  /// [location] Sender location, only for bots that request user location
  const factory InlineQuery({
    /// Unique identifier for this query
    required String id,

    /// Sender
    required User from,

    /// Text of the query (up to 256 characters)
    required String query,

    /// Offset of the results to be returned, can be controlled by the bot
    required String offset,

    /// Optional. Type of the chat from which the inline query was sent.
    /// Can be either "sender" for a private chat with the inline query sender,
    /// "private", "group", "supergroup", or "channel". The chat type should be
    /// always known for requests sent from official clients and most third-party
    /// clients, unless the request was sent from a secret chat
    @JsonKey(name: 'chat_type') ChatType? chatType,

    /// Optional. Sender location, only for bots that request user location
    Location? location,
  }) = _InlineQuery;

  /// Creates an [InlineQuery] from a JSON map
  factory InlineQuery.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryFromJson(json);
}
