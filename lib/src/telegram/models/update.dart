part of 'models.dart';

/// This object represents an incoming update.
///
/// At most one of the optional parameters can be present in any given update.
class Update {
  /// The update's unique identifier. Update identifiers start from a certain positive number and increase sequentially. This ID becomes especially handy if you're using webhooks, since it allows you to ignore repeated updates or to restore the correct update sequence, should they get out of order. If there are no new updates for at least a week, then identifier of the next update will be chosen randomly instead of sequentially.
  final int updateId;

  /// Optional. New incoming message of any kind — text, photo, sticker, etc.
  final Message? message;

  /// Optional. New version of a message that is known to the bot and was edited
  final Message? editedMessage;

  /// Optional. New incoming channel post of any kind - text, photo, sticker, etc.
  final Message? channelPost;

  /// Optional. New version of a channel post that is known to the bot and was edited
  final Message? editedChannelPost;

  /// Optional. New incoming inline query
  final InlineQuery? inlineQuery;

  /// Optional. The result of an inline query that was chosen by a user and sent to their chat partner. Please see our documentation on the feedback collecting for details on how to enable these updates for your bot.
  final ChosenInlineResult? chosenInlineResult;

  /// Optional. New incoming callback query
  final CallbackQuery? callbackQuery;

  /// Optional. New incoming shipping query. Only for invoices with flexible price
  final ShippingQuery? shippingQuery;

  /// Optional. New incoming pre-checkout query. Contains full information about checkout
  final PreCheckoutQuery? preCheckoutQuery;

  /// Optional. New poll state. Bots receive only updates about stopped polls and polls, which are sent by the bot
  final Poll? poll;

  /// Optional. A user changed their answer in a non-anonymous poll. Bots receive new votes only in polls that were sent by the bot itself.
  final PollAnswer? pollAnswer;

  /// Optional. New incoming my_chat_member update.
  final ChatMemberUpdated? myChatMember;

  /// Optional. A chat member's status was updated in a chat. The bot must be an administrator in the chat and must explicitly specify “chat_member” in the list of allowed_updates to receive these updates.
  final ChatMemberUpdated? chatMember;

  /// Optional. A request to join the chat has been sent. The bot must have the can_invite_users administrator right in the chat to receive these updates.
  final ChatJoinRequest? chatJoinRequest;

  /// Optional. A reaction to a message was changed by a user. The bot must be an administrator in the chat and must explicitly specify "message_reaction" in the list of allowed_updates to receive these updates. The update isn't received for reactions set by bots.
  final MessageReactionUpdated? messageReaction;

  /// Optional. Reactions to a message with anonymous reactions were changed. The bot must be an administrator in the chat and must explicitly specify "message_reaction_count" in the list of allowed_updates to receive these updates.
  final MessageReactionCountUpdated? messageReactionCount;

  /// Optional. A chat boost was added or changed. The bot must be an administrator in the chat to receive these updates.
  final ChatBoostUpdated? chatBoost;

  /// Optional. A chat boost was removed. The bot must be an administrator in the chat to receive these updates.
  final ChatBoostRemoved? removedChatBoost;

  /// Update Constructor
  const Update({
    required this.updateId,
    this.message,
    this.editedMessage,
    this.channelPost,
    this.editedChannelPost,
    this.inlineQuery,
    this.chosenInlineResult,
    this.callbackQuery,
    this.shippingQuery,
    this.preCheckoutQuery,
    this.poll,
    this.pollAnswer,
    this.myChatMember,
    this.chatMember,
    this.chatJoinRequest,
    this.messageReaction,
    this.messageReactionCount,
    this.chatBoost,
    this.removedChatBoost,
  });

  /// Creates a [Update] from json [Map].
  static Update fromJson(Map<String, dynamic> json) {
    return Update(
      updateId: json['update_id']!,
      message:
          json['message'] != null ? Message.fromJson(json['message']!) : null,
      editedMessage: json['edited_message'] != null
          ? Message.fromJson(json['edited_message']!)
          : null,
      channelPost: json['channel_post'] != null
          ? Message.fromJson(json['channel_post']!)
          : null,
      editedChannelPost: json['edited_channel_post'] != null
          ? Message.fromJson(json['edited_channel_post']!)
          : null,
      inlineQuery: json['inline_query'] != null
          ? InlineQuery.fromJson(json['inline_query']!)
          : null,
      chosenInlineResult: json['chosen_inline_result'] != null
          ? ChosenInlineResult.fromJson(json['chosen_inline_result']!)
          : null,
      callbackQuery: json['callback_query'] != null
          ? CallbackQuery.fromJson(json['callback_query']!)
          : null,
      shippingQuery: json['shipping_query'] != null
          ? ShippingQuery.fromJson(json['shipping_query']!)
          : null,
      preCheckoutQuery: json['pre_checkout_query'] != null
          ? PreCheckoutQuery.fromJson(json['pre_checkout_query']!)
          : null,
      poll: json['poll'] != null ? Poll.fromJson(json['poll']!) : null,
      pollAnswer: json['poll_answer'] != null
          ? PollAnswer.fromJson(json['poll_answer']!)
          : null,
      myChatMember: json['my_chat_member'] != null
          ? ChatMemberUpdated.fromJson(json['my_chat_member']!)
          : null,
      chatMember: json['chat_member'] != null
          ? ChatMemberUpdated.fromJson(json['chat_member']!)
          : null,
      chatJoinRequest: json['chat_join_request'] != null
          ? ChatJoinRequest.fromJson(json['chat_join_request']!)
          : null,
      messageReaction: json['message_reaction'] != null
          ? MessageReactionUpdated.fromJson(json['message_reaction']!)
          : null,
      messageReactionCount: json['message_reaction_count'] != null
          ? MessageReactionCountUpdated.fromJson(
              json['message_reaction_count']!,
            )
          : null,
      chatBoost: json['chat_boost'] != null
          ? ChatBoostUpdated.fromJson(json['chat_boost']!)
          : null,
      removedChatBoost: json['chat_boost_removed'] != null
          ? ChatBoostRemoved.fromJson(json['chat_boost_removed']!)
          : null,
    );
  }

  /// Converts a [Update] to a [Map] which can be serialized to JSON.
  Map<String, dynamic> toJson() {
    return {
      'update_id': updateId,
      'message': message?.toJson(),
      'edited_message': editedMessage?.toJson(),
      'channel_post': channelPost?.toJson(),
      'edited_channel_post': editedChannelPost?.toJson(),
      'inline_query': inlineQuery?.toJson(),
      'chosen_inline_result': chosenInlineResult?.toJson(),
      'callback_query': callbackQuery?.toJson(),
      'shipping_query': shippingQuery?.toJson(),
      'pre_checkout_query': preCheckoutQuery?.toJson(),
      'poll': poll?.toJson(),
      'poll_answer': pollAnswer?.toJson(),
      'my_chat_member': myChatMember?.toJson(),
      'chat_member': chatMember?.toJson(),
      'chat_join_request': chatJoinRequest?.toJson(),
      'message_reaction': messageReaction?.toJson(),
      'message_reaction_count': messageReactionCount?.toJson(),
      'chat_boost': chatBoost?.toJson(),
      'chat_boost_removed': removedChatBoost?.toJson(),
    }..removeWhere((_, value) => value == null);
  }

  /// Converts a [Update] object to a JSON string.
  String toRawJson() => json.encode(toJson());

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
    } else {
      throw TeleverseException(
        "The update type is unknown",
      );
    }
  }
}
