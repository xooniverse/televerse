// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Update _$UpdateFromJson(Map<String, dynamic> json) => _Update(
  updateId: (json['update_id'] as num).toInt(),
  message: json['message'] == null
      ? null
      : Message.fromJson(json['message'] as Map<String, dynamic>),
  editedMessage: json['edited_message'] == null
      ? null
      : Message.fromJson(json['edited_message'] as Map<String, dynamic>),
  channelPost: json['channel_post'] == null
      ? null
      : Message.fromJson(json['channel_post'] as Map<String, dynamic>),
  editedChannelPost: json['edited_channel_post'] == null
      ? null
      : Message.fromJson(json['edited_channel_post'] as Map<String, dynamic>),
  inlineQuery: json['inline_query'] == null
      ? null
      : InlineQuery.fromJson(json['inline_query'] as Map<String, dynamic>),
  chosenInlineResult: json['chosen_inline_result'] == null
      ? null
      : ChosenInlineResult.fromJson(
          json['chosen_inline_result'] as Map<String, dynamic>,
        ),
  callbackQuery: json['callback_query'] == null
      ? null
      : CallbackQuery.fromJson(json['callback_query'] as Map<String, dynamic>),
  shippingQuery: json['shipping_query'] == null
      ? null
      : ShippingQuery.fromJson(json['shipping_query'] as Map<String, dynamic>),
  preCheckoutQuery: json['pre_checkout_query'] == null
      ? null
      : PreCheckoutQuery.fromJson(
          json['pre_checkout_query'] as Map<String, dynamic>,
        ),
  poll: json['poll'] == null
      ? null
      : Poll.fromJson(json['poll'] as Map<String, dynamic>),
  pollAnswer: json['poll_answer'] == null
      ? null
      : PollAnswer.fromJson(json['poll_answer'] as Map<String, dynamic>),
  myChatMember: json['my_chat_member'] == null
      ? null
      : ChatMemberUpdated.fromJson(
          json['my_chat_member'] as Map<String, dynamic>,
        ),
  chatMember: json['chat_member'] == null
      ? null
      : ChatMemberUpdated.fromJson(json['chat_member'] as Map<String, dynamic>),
  chatJoinRequest: json['chat_join_request'] == null
      ? null
      : ChatJoinRequest.fromJson(
          json['chat_join_request'] as Map<String, dynamic>,
        ),
  messageReaction: json['message_reaction'] == null
      ? null
      : MessageReactionUpdated.fromJson(
          json['message_reaction'] as Map<String, dynamic>,
        ),
  messageReactionCount: json['message_reaction_count'] == null
      ? null
      : MessageReactionCountUpdated.fromJson(
          json['message_reaction_count'] as Map<String, dynamic>,
        ),
  chatBoost: json['chat_boost'] == null
      ? null
      : ChatBoostUpdated.fromJson(json['chat_boost'] as Map<String, dynamic>),
  removedChatBoost: json['removed_chat_boost'] == null
      ? null
      : ChatBoostRemoved.fromJson(
          json['removed_chat_boost'] as Map<String, dynamic>,
        ),
  businessConnection: json['business_connection'] == null
      ? null
      : BusinessConnection.fromJson(
          json['business_connection'] as Map<String, dynamic>,
        ),
  businessMessage: json['business_message'] == null
      ? null
      : Message.fromJson(json['business_message'] as Map<String, dynamic>),
  editedBusinessMessage: json['edited_business_message'] == null
      ? null
      : Message.fromJson(
          json['edited_business_message'] as Map<String, dynamic>,
        ),
  deletedBusinessMessages: json['deleted_business_messages'] == null
      ? null
      : BusinessMessagesDeleted.fromJson(
          json['deleted_business_messages'] as Map<String, dynamic>,
        ),
  purchasedPaidMedia: json['purchased_paid_media'] == null
      ? null
      : PaidMediaPurchased.fromJson(
          json['purchased_paid_media'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$UpdateToJson(_Update instance) => <String, dynamic>{
  'update_id': instance.updateId,
  'message': ?instance.message,
  'edited_message': ?instance.editedMessage,
  'channel_post': ?instance.channelPost,
  'edited_channel_post': ?instance.editedChannelPost,
  'inline_query': ?instance.inlineQuery,
  'chosen_inline_result': ?instance.chosenInlineResult,
  'callback_query': ?instance.callbackQuery,
  'shipping_query': ?instance.shippingQuery,
  'pre_checkout_query': ?instance.preCheckoutQuery,
  'poll': ?instance.poll,
  'poll_answer': ?instance.pollAnswer,
  'my_chat_member': ?instance.myChatMember,
  'chat_member': ?instance.chatMember,
  'chat_join_request': ?instance.chatJoinRequest,
  'message_reaction': ?instance.messageReaction,
  'message_reaction_count': ?instance.messageReactionCount,
  'chat_boost': ?instance.chatBoost,
  'removed_chat_boost': ?instance.removedChatBoost,
  'business_connection': ?instance.businessConnection,
  'business_message': ?instance.businessMessage,
  'edited_business_message': ?instance.editedBusinessMessage,
  'deleted_business_messages': ?instance.deletedBusinessMessages,
  'purchased_paid_media': ?instance.purchasedPaidMedia,
};
