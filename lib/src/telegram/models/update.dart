// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/business_connection.dart';
import 'package:televerse/src/telegram/models/business_messages_deleted.dart';
import 'package:televerse/src/telegram/models/callback_query.dart';
import 'package:televerse/src/telegram/models/chat_boost_removed.dart';
import 'package:televerse/src/telegram/models/chat_boost_updated.dart';
import 'package:televerse/src/telegram/models/chat_join_request.dart';
import 'package:televerse/src/telegram/models/chat_member_updated.dart';
import 'package:televerse/src/telegram/models/chosen_inline_result.dart';
import 'package:televerse/src/telegram/models/inline_query.dart';
import 'package:televerse/src/telegram/models/message.dart';
import 'package:televerse/src/telegram/models/message_reaction_count_updated.dart';
import 'package:televerse/src/telegram/models/message_reaction_updated.dart';
import 'package:televerse/src/telegram/models/paid_media_purchased.dart';
import 'package:televerse/src/telegram/models/poll.dart';
import 'package:televerse/src/telegram/models/poll_answer.dart';
import 'package:televerse/src/telegram/models/pre_checkout_query.dart';
import 'package:televerse/src/telegram/models/shipping_query.dart';
import 'package:televerse/televerse.dart';

part 'update.freezed.dart';
part 'update.g.dart';

/// This object represents an incoming update.
///
/// At most one of the optional parameters can be present in any given update.
@freezed
abstract class Update with _$Update {
  /// Update Constructor
  const factory Update({
    /// The update's unique identifier. Update identifiers start from a certain
    /// positive number and increase sequentially. This ID becomes especially
    /// handy if you're using webhooks, since it allows you to ignore repeated
    /// updates or to restore the correct update sequence, should they get out
    /// of order. If there are no new updates for at least a week, then
    /// identifier of the next update will be chosen randomly instead of
    /// sequentially.
    @JsonKey(name: 'update_id') required int updateId,

    /// Optional. New incoming message of any kind — text, photo, sticker, etc.
    @JsonKey(name: 'message') Message? message,

    /// Optional. New version of a message that is known to the bot and was
    /// edited
    @JsonKey(name: 'edited_message') Message? editedMessage,

    /// Optional. New incoming channel post of any kind - text, photo, sticker,
    /// etc.
    @JsonKey(name: 'channel_post') Message? channelPost,

    /// Optional. New version of a channel post that is known to the bot and was
    /// edited
    @JsonKey(name: 'edited_channel_post') Message? editedChannelPost,

    /// Optional. New incoming inline query
    @JsonKey(name: 'inline_query') InlineQuery? inlineQuery,

    /// Optional. The result of an inline query that was chosen by a user and
    /// sent to their chat partner. Please see our documentation on the feedback
    /// collecting for details on how to enable these updates for your bot.
    @JsonKey(name: 'chosen_inline_result')
    ChosenInlineResult? chosenInlineResult,

    /// Optional. New incoming callback query
    @JsonKey(name: 'callback_query') CallbackQuery? callbackQuery,

    /// Optional. New incoming shipping query. Only for invoices with flexible
    /// price
    @JsonKey(name: 'shipping_query') ShippingQuery? shippingQuery,

    /// Optional. New incoming pre-checkout query. Contains full information
    /// about checkout
    @JsonKey(name: 'pre_checkout_query') PreCheckoutQuery? preCheckoutQuery,

    /// Optional. New poll state. Bots receive only updates about stopped polls
    /// and polls, which are sent by the bot
    @JsonKey(name: 'poll') Poll? poll,

    /// Optional. A user changed their answer in a non-anonymous poll. Bots
    /// receive new votes only in polls that were sent by the bot itself.
    @JsonKey(name: 'poll_answer') PollAnswer? pollAnswer,

    /// Optional. New incoming my_chat_member update.
    @JsonKey(name: 'my_chat_member') ChatMemberUpdated? myChatMember,

    /// Optional. A chat member's status was updated in a chat. The bot must be
    /// an administrator in the chat and must explicitly specify "chat_member"
    /// in the list of allowed_updates to receive these updates.
    @JsonKey(name: 'chat_member') ChatMemberUpdated? chatMember,

    /// Optional. A request to join the chat has been sent. The bot must have
    /// the can_invite_users administrator right in the chat to receive these
    /// updates.
    @JsonKey(name: 'chat_join_request') ChatJoinRequest? chatJoinRequest,

    /// Optional. A reaction to a message was changed by a user. The bot must be
    /// an administrator in the chat and must explicitly specify
    /// "message_reaction" in the list of allowed_updates to receive these
    /// updates. The update isn't received for reactions set by bots.
    @JsonKey(name: 'message_reaction') MessageReactionUpdated? messageReaction,

    /// Optional. Reactions to a message with anonymous reactions were changed.
    /// The bot must be an administrator in the chat and must explicitly specify
    /// "message_reaction_count" in the list of allowed_updates to receive these
    /// updates.
    @JsonKey(name: 'message_reaction_count')
    MessageReactionCountUpdated? messageReactionCount,

    /// Optional. A chat boost was added or changed. The bot must be an
    /// administrator in the chat to receive these updates.
    @JsonKey(name: 'chat_boost') ChatBoostUpdated? chatBoost,

    /// Optional. A chat boost was removed. The bot must be an administrator in
    /// the chat to receive these updates.
    @JsonKey(name: 'removed_chat_boost') ChatBoostRemoved? removedChatBoost,

    /// Optional. The bot was connected to or disconnected from a business
    /// account, or a user edited an existing connection with the bot
    @JsonKey(name: 'business_connection')
    BusinessConnection? businessConnection,

    /// Optional. New non-service message from a connected business account
    @JsonKey(name: 'business_message') Message? businessMessage,

    /// Optional. New version of a message from a connected business account
    @JsonKey(name: 'edited_business_message') Message? editedBusinessMessage,

    /// Optional. Messages were deleted from a connected business account
    @JsonKey(name: 'deleted_business_messages')
    BusinessMessagesDeleted? deletedBusinessMessages,

    /// Optional. A user purchased paid media with a non-empty payload sent by
    /// the bot in a non-channel chat
    @JsonKey(name: 'purchased_paid_media')
    PaidMediaPurchased? purchasedPaidMedia,
  }) = _Update;

  /// Creates a [Update] from json [Map].
  factory Update.fromJson(Map<String, dynamic> json) => _$UpdateFromJson(json);
}

/// Extenson on Update
extension UpdateExt on Update {
  /// Returns the type of the update.
  UpdateType get type {
    if (message != null) {
      return UpdateType.message;
    } else if (editedMessage != null) {
      return UpdateType.editedMessage;
    } else if (channelPost != null) {
      return UpdateType.channelPost;
    } else if (editedChannelPost != null) {
      return UpdateType.editedChannelPost;
    } else if (inlineQuery != null) {
      return UpdateType.inlineQuery;
    } else if (chosenInlineResult != null) {
      return UpdateType.chosenInlineResult;
    } else if (callbackQuery != null) {
      return UpdateType.callbackQuery;
    } else if (shippingQuery != null) {
      return UpdateType.shippingQuery;
    } else if (preCheckoutQuery != null) {
      return UpdateType.preCheckoutQuery;
    } else if (poll != null) {
      return UpdateType.poll;
    } else if (pollAnswer != null) {
      return UpdateType.pollAnswer;
    } else if (myChatMember != null) {
      return UpdateType.myChatMember;
    } else if (chatMember != null) {
      return UpdateType.chatMember;
    } else if (chatJoinRequest != null) {
      return UpdateType.chatJoinRequest;
    } else if (messageReaction != null) {
      return UpdateType.messageReaction;
    } else if (messageReactionCount != null) {
      return UpdateType.messageReactionCount;
    } else if (chatBoost != null) {
      return UpdateType.chatBoost;
    } else if (removedChatBoost != null) {
      return UpdateType.chatBoostRemoved;
    } else if (businessConnection != null) {
      return UpdateType.businessConnection;
    } else if (businessMessage != null) {
      return UpdateType.businessMessage;
    } else if (editedBusinessMessage != null) {
      return UpdateType.editedBusinessMessage;
    } else if (deletedBusinessMessages != null) {
      return UpdateType.deletedBusinessMessages;
    } else if (purchasedPaidMedia != null) {
      return UpdateType.purchasedPaidMedia;
    } else {
      throw TeleverseException(
        "The update type is unknown",
        description: "The given update does not match any known update type.",
        type: TeleverseExceptionType.invalidParameter,
      );
    }
  }
}
