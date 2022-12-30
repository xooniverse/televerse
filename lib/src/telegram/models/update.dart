import 'package:televerse/src/telegram/payments.dart';

import 'callback_query.dart';
import 'chat_join_request.dart';
import 'chat_member_updated.dart';
import 'chosen_inline_result.dart';
import 'inline_query.dart';
import 'message.dart';
import 'poll.dart';
import 'poll_answer.dart';

/// This object represents an incoming update.
///
/// At most one of the optional parameters can be present in any given update.
class Update {
  /// The update's unique identifier. Update identifiers start from a certain positive number and increase sequentially. This ID becomes especially handy if you're using webhooks, since it allows you to ignore repeated updates or to restore the correct update sequence, should they get out of order. If there are no new updates for at least a week, then identifier of the next update will be chosen randomly instead of sequentially.
  int updateId;

  /// Optional. New incoming message of any kind — text, photo, sticker, etc.
  Message? message;

  /// Optional. New version of a message that is known to the bot and was edited
  Message? editedMessage;

  /// Optional. New incoming channel post of any kind - text, photo, sticker, etc.
  Message? channelPost;

  /// Optional. New version of a channel post that is known to the bot and was edited
  Message? editedChannelPost;

  /// Optional. New incoming inline query
  InlineQuery? inlineQuery;

  /// Optional. The result of an inline query that was chosen by a user and sent to their chat partner. Please see our documentation on the feedback collecting for details on how to enable these updates for your bot.
  ChosenInlineResult? chosenInlineResult;

  /// Optional. New incoming callback query
  CallbackQuery? callbackQuery;

  /// Optional. New incoming shipping query. Only for invoices with flexible price
  ShippingQuery? shippingQuery;

  /// Optional. New incoming pre-checkout query. Contains full information about checkout
  PreCheckoutQuery? preCheckoutQuery;

  /// Optional. New poll state. Bots receive only updates about stopped polls and polls, which are sent by the bot
  Poll? poll;

  /// Optional. A user changed their answer in a non-anonymous poll. Bots receive new votes only in polls that were sent by the bot itself.
  PollAnswer? pollAnswer;

  /// Optional. New incoming my_chat_member update.
  ChatMemberUpdated? myChatMember;

  /// Optional. A chat member's status was updated in a chat. The bot must be an administrator in the chat and must explicitly specify “chat_member” in the list of allowed_updates to receive these updates.
  ChatMemberUpdated? chatMember;

  /// Optional. A request to join the chat has been sent. The bot must have the can_invite_users administrator right in the chat to receive these updates.
  ChatJoinRequest? chatJoinRequest;

  Update({
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
  });
}
