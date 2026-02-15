// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InaccessibleMessage _$InaccessibleMessageFromJson(Map<String, dynamic> json) =>
    _InaccessibleMessage(
      chat: Chat.fromJson(json['chat'] as Map<String, dynamic>),
      messageId: (json['message_id'] as num).toInt(),
      date: (json['date'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$InaccessibleMessageToJson(
  _InaccessibleMessage instance,
) => <String, dynamic>{
  'chat': instance.chat,
  'message_id': instance.messageId,
  'date': instance.date,
};

_Message _$MessageFromJson(Map<String, dynamic> json) => _Message(
  chat: Chat.fromJson(json['chat'] as Map<String, dynamic>),
  messageId: (json['message_id'] as num).toInt(),
  date: (json['date'] as num).toInt(),
  messageThreadId: (json['message_thread_id'] as num?)?.toInt(),
  from: json['from'] == null
      ? null
      : User.fromJson(json['from'] as Map<String, dynamic>),
  senderChat: json['sender_chat'] == null
      ? null
      : Chat.fromJson(json['sender_chat'] as Map<String, dynamic>),
  forwardOrigin: json['forward_origin'] == null
      ? null
      : MessageOrigin.fromJson(json['forward_origin'] as Map<String, dynamic>),
  isTopicMessage: json['is_topic_message'] as bool?,
  isAutomaticForward: json['is_automatic_forward'] as bool?,
  replyToMessage: json['reply_to_message'] == null
      ? null
      : Message.fromJson(json['reply_to_message'] as Map<String, dynamic>),
  viaBot: json['via_bot'] == null
      ? null
      : User.fromJson(json['via_bot'] as Map<String, dynamic>),
  editDate: (json['edit_date'] as num?)?.toInt(),
  hasProtectedContent: json['has_protected_content'] as bool?,
  mediaGroupId: json['media_group_id'] as String?,
  authorSignature: json['author_signature'] as String?,
  text: json['text'] as String?,
  entities: (json['entities'] as List<dynamic>?)
      ?.map((e) => MessageEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  animation: json['animation'] == null
      ? null
      : Animation.fromJson(json['animation'] as Map<String, dynamic>),
  audio: json['audio'] == null
      ? null
      : Audio.fromJson(json['audio'] as Map<String, dynamic>),
  document: json['document'] == null
      ? null
      : Document.fromJson(json['document'] as Map<String, dynamic>),
  photo: (json['photo'] as List<dynamic>?)
      ?.map((e) => PhotoSize.fromJson(e as Map<String, dynamic>))
      .toList(),
  sticker: json['sticker'] == null
      ? null
      : Sticker.fromJson(json['sticker'] as Map<String, dynamic>),
  video: json['video'] == null
      ? null
      : Video.fromJson(json['video'] as Map<String, dynamic>),
  videoNote: json['video_note'] == null
      ? null
      : VideoNote.fromJson(json['video_note'] as Map<String, dynamic>),
  voice: json['voice'] == null
      ? null
      : Voice.fromJson(json['voice'] as Map<String, dynamic>),
  caption: json['caption'] as String?,
  captionEntities: (json['caption_entities'] as List<dynamic>?)
      ?.map((e) => MessageEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  contact: json['contact'] == null
      ? null
      : Contact.fromJson(json['contact'] as Map<String, dynamic>),
  dice: json['dice'] == null
      ? null
      : Dice.fromJson(json['dice'] as Map<String, dynamic>),
  game: json['game'] == null
      ? null
      : Game.fromJson(json['game'] as Map<String, dynamic>),
  poll: json['poll'] == null
      ? null
      : Poll.fromJson(json['poll'] as Map<String, dynamic>),
  venue: json['venue'] == null
      ? null
      : Venue.fromJson(json['venue'] as Map<String, dynamic>),
  location: json['location'] == null
      ? null
      : Location.fromJson(json['location'] as Map<String, dynamic>),
  newChatMembers: (json['new_chat_members'] as List<dynamic>?)
      ?.map((e) => User.fromJson(e as Map<String, dynamic>))
      .toList(),
  leftChatMember: json['left_chat_member'] == null
      ? null
      : User.fromJson(json['left_chat_member'] as Map<String, dynamic>),
  newChatTitle: json['new_chat_title'] as String?,
  newChatPhoto: (json['new_chat_photo'] as List<dynamic>?)
      ?.map((e) => PhotoSize.fromJson(e as Map<String, dynamic>))
      .toList(),
  deleteChatPhoto: json['delete_chat_photo'] as bool?,
  groupChatCreated: json['group_chat_created'] as bool?,
  supergroupChatCreated: json['supergroup_chat_created'] as bool?,
  channelChatCreated: json['channel_chat_created'] as bool?,
  messageAutoDeleteTimerChanged:
      json['message_auto_delete_timer_changed'] == null
      ? null
      : MessageAutoDeleteTimerChanged.fromJson(
          json['message_auto_delete_timer_changed'] as Map<String, dynamic>,
        ),
  migrateToChatId: (json['migrate_to_chat_id'] as num?)?.toInt(),
  migrateFromChatId: (json['migrate_from_chat_id'] as num?)?.toInt(),
  pinnedMessage: json['pinned_message'] == null
      ? null
      : Message.fromJson(json['pinned_message'] as Map<String, dynamic>),
  invoice: json['invoice'] == null
      ? null
      : Invoice.fromJson(json['invoice'] as Map<String, dynamic>),
  successfulPayment: json['successful_payment'] == null
      ? null
      : SuccessfulPayment.fromJson(
          json['successful_payment'] as Map<String, dynamic>,
        ),
  connectedWebsite: json['connected_website'] as String?,
  passportData: json['passport_data'] == null
      ? null
      : PassportData.fromJson(json['passport_data'] as Map<String, dynamic>),
  proximityAlertTriggered: json['proximity_alert_triggered'] == null
      ? null
      : ProximityAlertTriggered.fromJson(
          json['proximity_alert_triggered'] as Map<String, dynamic>,
        ),
  forumTopicCreated: json['forum_topic_created'] == null
      ? null
      : ForumTopicCreated.fromJson(
          json['forum_topic_created'] as Map<String, dynamic>,
        ),
  forumTopicClosed: json['forum_topic_closed'] == null
      ? null
      : ForumTopicClosed.fromJson(
          json['forum_topic_closed'] as Map<String, dynamic>,
        ),
  forumTopicReopened: json['forum_topic_reopened'] == null
      ? null
      : ForumTopicReopened.fromJson(
          json['forum_topic_reopened'] as Map<String, dynamic>,
        ),
  videoChatScheduled: json['video_chat_scheduled'] == null
      ? null
      : VideoChatScheduled.fromJson(
          json['video_chat_scheduled'] as Map<String, dynamic>,
        ),
  videoChatStarted: json['video_chat_started'] == null
      ? null
      : VideoChatStarted.fromJson(
          json['video_chat_started'] as Map<String, dynamic>,
        ),
  videoChatEnded: json['video_chat_ended'] == null
      ? null
      : VideoChatEnded.fromJson(
          json['video_chat_ended'] as Map<String, dynamic>,
        ),
  videoChatParticipantsInvited: json['video_chat_participants_invited'] == null
      ? null
      : VideoChatParticipantsInvited.fromJson(
          json['video_chat_participants_invited'] as Map<String, dynamic>,
        ),
  webAppData: json['web_app_data'] == null
      ? null
      : WebAppData.fromJson(json['web_app_data'] as Map<String, dynamic>),
  replyMarkup: json['reply_markup'] == null
      ? null
      : InlineKeyboardMarkup.fromJson(
          json['reply_markup'] as Map<String, dynamic>,
        ),
  usersShared: json['users_shared'] == null
      ? null
      : UsersShared.fromJson(json['users_shared'] as Map<String, dynamic>),
  chatShared: json['chat_shared'] == null
      ? null
      : ChatShared.fromJson(json['chat_shared'] as Map<String, dynamic>),
  hasMediaSpoiler: json['has_media_spoiler'] as bool?,
  forumTopicEdited: json['forum_topic_edited'] == null
      ? null
      : ForumTopicEdited.fromJson(
          json['forum_topic_edited'] as Map<String, dynamic>,
        ),
  generalForumTopicHidden: json['general_forum_topic_hidden'] == null
      ? null
      : GeneralForumTopicHidden.fromJson(
          json['general_forum_topic_hidden'] as Map<String, dynamic>,
        ),
  generalForumTopicUnhidden: json['general_forum_topic_unhidden'] == null
      ? null
      : GeneralForumTopicUnhidden.fromJson(
          json['general_forum_topic_unhidden'] as Map<String, dynamic>,
        ),
  writeAccessAllowed: json['write_access_allowed'] == null
      ? null
      : WriteAccessAllowed.fromJson(
          json['write_access_allowed'] as Map<String, dynamic>,
        ),
  story: json['story'] == null
      ? null
      : Story.fromJson(json['story'] as Map<String, dynamic>),
  externalReply: json['external_reply'] == null
      ? null
      : ExternalReplyInfo.fromJson(
          json['external_reply'] as Map<String, dynamic>,
        ),
  quote: json['quote'] == null
      ? null
      : TextQuote.fromJson(json['quote'] as Map<String, dynamic>),
  linkPreviewOptions: json['link_preview_options'] == null
      ? null
      : LinkPreviewOptions.fromJson(
          json['link_preview_options'] as Map<String, dynamic>,
        ),
  giveaway: json['giveaway'] == null
      ? null
      : Giveaway.fromJson(json['giveaway'] as Map<String, dynamic>),
  giveawayCreated: json['giveaway_created'] == null
      ? null
      : GiveawayCreated.fromJson(
          json['giveaway_created'] as Map<String, dynamic>,
        ),
  giveawayWinners: json['giveaway_winners'] == null
      ? null
      : GiveawayWinners.fromJson(
          json['giveaway_winners'] as Map<String, dynamic>,
        ),
  giveawayCompleted: json['giveaway_completed'] == null
      ? null
      : GiveawayCompleted.fromJson(
          json['giveaway_completed'] as Map<String, dynamic>,
        ),
  boostAdded: json['boost_added'] == null
      ? null
      : ChatBoostAdded.fromJson(json['boost_added'] as Map<String, dynamic>),
  senderBoostCount: (json['sender_boost_count'] as num?)?.toInt(),
  replyToStory: json['reply_to_story'] == null
      ? null
      : Story.fromJson(json['reply_to_story'] as Map<String, dynamic>),
  businessConnectionId: json['business_connection_id'] as String?,
  senderBusinessBot: json['sender_business_bot'] == null
      ? null
      : User.fromJson(json['sender_business_bot'] as Map<String, dynamic>),
  isFromOffline: json['is_from_offline'] as bool?,
  chatBackgroundSet: json['chat_background_set'] == null
      ? null
      : ChatBackground.fromJson(
          json['chat_background_set'] as Map<String, dynamic>,
        ),
  effectId: json['effect_id'] as String?,
  showCaptionAboveMedia: json['show_caption_above_media'] as bool?,
  paidMedia: json['paid_media'] == null
      ? null
      : PaidMediaInfo.fromJson(json['paid_media'] as Map<String, dynamic>),
  refundedPayment: json['refunded_payment'] == null
      ? null
      : RefundedPayment.fromJson(
          json['refunded_payment'] as Map<String, dynamic>,
        ),
  gift: json['gift'] == null
      ? null
      : GiftInfo.fromJson(json['gift'] as Map<String, dynamic>),
  uniqueGift: json['unique_gift'] == null
      ? null
      : UniqueGiftInfo.fromJson(json['unique_gift'] as Map<String, dynamic>),
  paidMessagePriceChanged: json['paid_message_price_changed'] == null
      ? null
      : PaidMessagePriceChanged.fromJson(
          json['paid_message_price_changed'] as Map<String, dynamic>,
        ),
  paidStarCount: (json['paid_star_count'] as num?)?.toInt(),
  checklist: json['checklist'] == null
      ? null
      : Checklist.fromJson(json['checklist'] as Map<String, dynamic>),
  checklistTasksDone: json['checklist_tasks_done'] == null
      ? null
      : ChecklistTasksDone.fromJson(
          json['checklist_tasks_done'] as Map<String, dynamic>,
        ),
  checklistTasksAdded: json['checklist_tasks_added'] == null
      ? null
      : ChecklistTasksAdded.fromJson(
          json['checklist_tasks_added'] as Map<String, dynamic>,
        ),
  directMessagePriceChanged: json['direct_message_price_changed'] == null
      ? null
      : DirectMessagePriceChanged.fromJson(
          json['direct_message_price_changed'] as Map<String, dynamic>,
        ),
  replyToChecklistTaskId: (json['reply_to_checklist_task_id'] as num?)?.toInt(),
  directMessagesTopic: json['direct_messages_topic'] == null
      ? null
      : DirectMessagesTopic.fromJson(
          json['direct_messages_topic'] as Map<String, dynamic>,
        ),
  isPaidPost: json['is_paid_post'] as bool?,
  suggestedPostInfo: json['suggested_post_info'] == null
      ? null
      : SuggestedPostInfo.fromJson(
          json['suggested_post_info'] as Map<String, dynamic>,
        ),
  suggestedPostApproved: json['suggested_post_approved'] == null
      ? null
      : SuggestedPostApproved.fromJson(
          json['suggested_post_approved'] as Map<String, dynamic>,
        ),
  suggestedPostApprovalFailed: json['suggested_post_approval_failed'] == null
      ? null
      : SuggestedPostApprovalFailed.fromJson(
          json['suggested_post_approval_failed'] as Map<String, dynamic>,
        ),
  suggestedPostDeclined: json['suggested_post_declined'] == null
      ? null
      : SuggestedPostDeclined.fromJson(
          json['suggested_post_declined'] as Map<String, dynamic>,
        ),
  suggestedPostPaid: json['suggested_post_paid'] == null
      ? null
      : SuggestedPostPaid.fromJson(
          json['suggested_post_paid'] as Map<String, dynamic>,
        ),
  suggestedPostRefunded: json['suggested_post_refunded'] == null
      ? null
      : SuggestedPostRefunded.fromJson(
          json['suggested_post_refunded'] as Map<String, dynamic>,
        ),
  giftUpgradeSent: json['gift_upgrade_sent'] == null
      ? null
      : GiftInfo.fromJson(json['gift_upgrade_sent'] as Map<String, dynamic>),
  chatOwnerLeft: json['chat_owner_left'] == null
      ? null
      : ChatOwnerLeft.fromJson(json['chat_owner_left'] as Map<String, dynamic>),
  chatOwnerChanged: json['chat_owner_changed'] == null
      ? null
      : ChatOwnerChanged.fromJson(
          json['chat_owner_changed'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$MessageToJson(_Message instance) => <String, dynamic>{
  'chat': instance.chat,
  'message_id': instance.messageId,
  'date': instance.date,
  'message_thread_id': ?instance.messageThreadId,
  'from': ?instance.from,
  'sender_chat': ?instance.senderChat,
  'forward_origin': ?instance.forwardOrigin,
  'is_topic_message': ?instance.isTopicMessage,
  'is_automatic_forward': ?instance.isAutomaticForward,
  'reply_to_message': ?instance.replyToMessage,
  'via_bot': ?instance.viaBot,
  'edit_date': ?instance.editDate,
  'has_protected_content': ?instance.hasProtectedContent,
  'media_group_id': ?instance.mediaGroupId,
  'author_signature': ?instance.authorSignature,
  'text': ?instance.text,
  'entities': ?instance.entities,
  'animation': ?instance.animation,
  'audio': ?instance.audio,
  'document': ?instance.document,
  'photo': ?instance.photo,
  'sticker': ?instance.sticker,
  'video': ?instance.video,
  'video_note': ?instance.videoNote,
  'voice': ?instance.voice,
  'caption': ?instance.caption,
  'caption_entities': ?instance.captionEntities,
  'contact': ?instance.contact,
  'dice': ?instance.dice,
  'game': ?instance.game,
  'poll': ?instance.poll,
  'venue': ?instance.venue,
  'location': ?instance.location,
  'new_chat_members': ?instance.newChatMembers,
  'left_chat_member': ?instance.leftChatMember,
  'new_chat_title': ?instance.newChatTitle,
  'new_chat_photo': ?instance.newChatPhoto,
  'delete_chat_photo': ?instance.deleteChatPhoto,
  'group_chat_created': ?instance.groupChatCreated,
  'supergroup_chat_created': ?instance.supergroupChatCreated,
  'channel_chat_created': ?instance.channelChatCreated,
  'message_auto_delete_timer_changed': ?instance.messageAutoDeleteTimerChanged,
  'migrate_to_chat_id': ?instance.migrateToChatId,
  'migrate_from_chat_id': ?instance.migrateFromChatId,
  'pinned_message': ?instance.pinnedMessage,
  'invoice': ?instance.invoice,
  'successful_payment': ?instance.successfulPayment,
  'connected_website': ?instance.connectedWebsite,
  'passport_data': ?instance.passportData,
  'proximity_alert_triggered': ?instance.proximityAlertTriggered,
  'forum_topic_created': ?instance.forumTopicCreated,
  'forum_topic_closed': ?instance.forumTopicClosed,
  'forum_topic_reopened': ?instance.forumTopicReopened,
  'video_chat_scheduled': ?instance.videoChatScheduled,
  'video_chat_started': ?instance.videoChatStarted,
  'video_chat_ended': ?instance.videoChatEnded,
  'video_chat_participants_invited': ?instance.videoChatParticipantsInvited,
  'web_app_data': ?instance.webAppData,
  'reply_markup': ?instance.replyMarkup,
  'users_shared': ?instance.usersShared,
  'chat_shared': ?instance.chatShared,
  'has_media_spoiler': ?instance.hasMediaSpoiler,
  'forum_topic_edited': ?instance.forumTopicEdited,
  'general_forum_topic_hidden': ?instance.generalForumTopicHidden,
  'general_forum_topic_unhidden': ?instance.generalForumTopicUnhidden,
  'write_access_allowed': ?instance.writeAccessAllowed,
  'story': ?instance.story,
  'external_reply': ?instance.externalReply,
  'quote': ?instance.quote,
  'link_preview_options': ?instance.linkPreviewOptions,
  'giveaway': ?instance.giveaway,
  'giveaway_created': ?instance.giveawayCreated,
  'giveaway_winners': ?instance.giveawayWinners,
  'giveaway_completed': ?instance.giveawayCompleted,
  'boost_added': ?instance.boostAdded,
  'sender_boost_count': ?instance.senderBoostCount,
  'reply_to_story': ?instance.replyToStory,
  'business_connection_id': ?instance.businessConnectionId,
  'sender_business_bot': ?instance.senderBusinessBot,
  'is_from_offline': ?instance.isFromOffline,
  'chat_background_set': ?instance.chatBackgroundSet,
  'effect_id': ?instance.effectId,
  'show_caption_above_media': ?instance.showCaptionAboveMedia,
  'paid_media': ?instance.paidMedia,
  'refunded_payment': ?instance.refundedPayment,
  'gift': ?instance.gift,
  'unique_gift': ?instance.uniqueGift,
  'paid_message_price_changed': ?instance.paidMessagePriceChanged,
  'paid_star_count': ?instance.paidStarCount,
  'checklist': ?instance.checklist,
  'checklist_tasks_done': ?instance.checklistTasksDone,
  'checklist_tasks_added': ?instance.checklistTasksAdded,
  'direct_message_price_changed': ?instance.directMessagePriceChanged,
  'reply_to_checklist_task_id': ?instance.replyToChecklistTaskId,
  'direct_messages_topic': ?instance.directMessagesTopic,
  'is_paid_post': ?instance.isPaidPost,
  'suggested_post_info': ?instance.suggestedPostInfo,
  'suggested_post_approved': ?instance.suggestedPostApproved,
  'suggested_post_approval_failed': ?instance.suggestedPostApprovalFailed,
  'suggested_post_declined': ?instance.suggestedPostDeclined,
  'suggested_post_paid': ?instance.suggestedPostPaid,
  'suggested_post_refunded': ?instance.suggestedPostRefunded,
  'gift_upgrade_sent': ?instance.giftUpgradeSent,
  'chat_owner_left': ?instance.chatOwnerLeft,
  'chat_owner_changed': ?instance.chatOwnerChanged,
};
