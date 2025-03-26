// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/televerse.dart';
import 'message_entity.dart';

part 'reply_parameters.freezed.dart';
part 'reply_parameters.g.dart';

/// Describes reply parameters for the message that is being sent.
@freezed
abstract class ReplyParameters with _$ReplyParameters {
  /// Constructs a `ReplyParameters`.
  const factory ReplyParameters({
    /// Identifier of the message that will be replied to in the current chat,
    /// or in the chat chat_id if it is specified.
    @JsonKey(name: 'message_id') required int messageId,

    /// If the message to be replied to is from a different chat, unique
    /// identifier for the chat or username of the channel (in the format
    /// @channelusername).
    @IDConverter() @JsonKey(name: 'chat_id') ID? chatId,

    /// Pass True if the message should be sent even if the specified message to
    /// be replied to is not found; can be used only for replies in the same
    /// chat and forum topic.
    @JsonKey(name: 'allow_sending_without_reply')
    bool? allowSendingWithoutReply,

    /// Quoted part of the message to be replied to; 0-1024 characters after
    /// entities parsing. The quote must be an exact substring of the message to
    /// be replied to, including bold, italic, underline, strikethrough,
    /// spoiler, and custom_emoji entities. The message will fail to send if the
    /// quote isn't found in the original message.
    @JsonKey(name: 'quote') String? quote,

    /// Mode for parsing entities in the quote. See formatting options for more
    /// details.
    @JsonKey(name: 'quote_parse_mode') String? quoteParseMode,

    /// A JSON-serialized list of special entities that appear in the quote. It
    /// can be specified instead of quote_parse_mode.
    @JsonKey(name: 'quote_entities') List<MessageEntity>? quoteEntities,

    /// Position of the quote in the original message in UTF-16 code units.
    @JsonKey(name: 'quote_position') int? quotePosition,
  }) = _ReplyParameters;

  /// Creates a `ReplyParameters` object from a JSON object.
  factory ReplyParameters.fromJson(Map<String, dynamic> json) =>
      _$ReplyParametersFromJson(json);
}
