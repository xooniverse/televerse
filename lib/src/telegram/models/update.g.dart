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
          : Message.fromJson(
              json['edited_channel_post'] as Map<String, dynamic>),
      inlineQuery: json['inline_query'] == null
          ? null
          : InlineQuery.fromJson(json['inline_query'] as Map<String, dynamic>),
      chosenInlineResult: json['chosen_inline_result'] == null
          ? null
          : ChosenInlineResult.fromJson(
              json['chosen_inline_result'] as Map<String, dynamic>),
      callbackQuery: json['callback_query'] == null
          ? null
          : CallbackQuery.fromJson(
              json['callback_query'] as Map<String, dynamic>),
      shippingQuery: json['shipping_query'] == null
          ? null
          : ShippingQuery.fromJson(
              json['shipping_query'] as Map<String, dynamic>),
      preCheckoutQuery: json['pre_checkout_query'] == null
          ? null
          : PreCheckoutQuery.fromJson(
              json['pre_checkout_query'] as Map<String, dynamic>),
      poll: json['poll'] == null
          ? null
          : Poll.fromJson(json['poll'] as Map<String, dynamic>),
      pollAnswer: json['poll_answer'] == null
          ? null
          : PollAnswer.fromJson(json['poll_answer'] as Map<String, dynamic>),
      myChatMember: json['my_chat_member'] == null
          ? null
          : ChatMemberUpdated.fromJson(
              json['my_chat_member'] as Map<String, dynamic>),
      chatMember: json['chat_member'] == null
          ? null
          : ChatMemberUpdated.fromJson(
              json['chat_member'] as Map<String, dynamic>),
      chatJoinRequest: json['chat_join_request'] == null
          ? null
          : ChatJoinRequest.fromJson(
              json['chat_join_request'] as Map<String, dynamic>),
      messageReaction: json['message_reaction'] == null
          ? null
          : MessageReactionUpdated.fromJson(
              json['message_reaction'] as Map<String, dynamic>),
      messageReactionCount: json['message_reaction_count'] == null
          ? null
          : MessageReactionCountUpdated.fromJson(
              json['message_reaction_count'] as Map<String, dynamic>),
      chatBoost: json['chat_boost'] == null
          ? null
          : ChatBoostUpdated.fromJson(
              json['chat_boost'] as Map<String, dynamic>),
      removedChatBoost: json['removed_chat_boost'] == null
          ? null
          : ChatBoostRemoved.fromJson(
              json['removed_chat_boost'] as Map<String, dynamic>),
      businessConnection: json['business_connection'] == null
          ? null
          : BusinessConnection.fromJson(
              json['business_connection'] as Map<String, dynamic>),
      businessMessage: json['business_message'] == null
          ? null
          : Message.fromJson(json['business_message'] as Map<String, dynamic>),
      editedBusinessMessage: json['edited_business_message'] == null
          ? null
          : Message.fromJson(
              json['edited_business_message'] as Map<String, dynamic>),
      deletedBusinessMessages: json['deleted_business_messages'] == null
          ? null
          : BusinessMessagesDeleted.fromJson(
              json['deleted_business_messages'] as Map<String, dynamic>),
      purchasedPaidMedia: json['purchased_paid_media'] == null
          ? null
          : PaidMediaPurchased.fromJson(
              json['purchased_paid_media'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdateToJson(_Update instance) => <String, dynamic>{
      'update_id': instance.updateId,
      if (instance.message case final value?) 'message': value,
      if (instance.editedMessage case final value?) 'edited_message': value,
      if (instance.channelPost case final value?) 'channel_post': value,
      if (instance.editedChannelPost case final value?)
        'edited_channel_post': value,
      if (instance.inlineQuery case final value?) 'inline_query': value,
      if (instance.chosenInlineResult case final value?)
        'chosen_inline_result': value,
      if (instance.callbackQuery case final value?) 'callback_query': value,
      if (instance.shippingQuery case final value?) 'shipping_query': value,
      if (instance.preCheckoutQuery case final value?)
        'pre_checkout_query': value,
      if (instance.poll case final value?) 'poll': value,
      if (instance.pollAnswer case final value?) 'poll_answer': value,
      if (instance.myChatMember case final value?) 'my_chat_member': value,
      if (instance.chatMember case final value?) 'chat_member': value,
      if (instance.chatJoinRequest case final value?)
        'chat_join_request': value,
      if (instance.messageReaction case final value?) 'message_reaction': value,
      if (instance.messageReactionCount case final value?)
        'message_reaction_count': value,
      if (instance.chatBoost case final value?) 'chat_boost': value,
      if (instance.removedChatBoost case final value?)
        'removed_chat_boost': value,
      if (instance.businessConnection case final value?)
        'business_connection': value,
      if (instance.businessMessage case final value?) 'business_message': value,
      if (instance.editedBusinessMessage case final value?)
        'edited_business_message': value,
      if (instance.deletedBusinessMessages case final value?)
        'deleted_business_messages': value,
      if (instance.purchasedPaidMedia case final value?)
        'purchased_paid_media': value,
    };
