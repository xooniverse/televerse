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
        _InaccessibleMessage instance) =>
    <String, dynamic>{
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
          : MessageOrigin.fromJson(
              json['forward_origin'] as Map<String, dynamic>),
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
                  json['message_auto_delete_timer_changed']
                      as Map<String, dynamic>),
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
              json['successful_payment'] as Map<String, dynamic>),
      connectedWebsite: json['connected_website'] as String?,
      passportData: json['passport_data'] == null
          ? null
          : PassportData.fromJson(
              json['passport_data'] as Map<String, dynamic>),
      proximityAlertTriggered: json['proximity_alert_triggered'] == null
          ? null
          : ProximityAlertTriggered.fromJson(
              json['proximity_alert_triggered'] as Map<String, dynamic>),
      forumTopicCreated: json['forum_topic_created'] == null
          ? null
          : ForumTopicCreated.fromJson(
              json['forum_topic_created'] as Map<String, dynamic>),
      forumTopicClosed: json['forum_topic_closed'] == null
          ? null
          : ForumTopicClosed.fromJson(
              json['forum_topic_closed'] as Map<String, dynamic>),
      forumTopicReopened: json['forum_topic_reopened'] == null
          ? null
          : ForumTopicReopened.fromJson(
              json['forum_topic_reopened'] as Map<String, dynamic>),
      videoChatScheduled: json['video_chat_scheduled'] == null
          ? null
          : VideoChatScheduled.fromJson(
              json['video_chat_scheduled'] as Map<String, dynamic>),
      videoChatStarted: json['video_chat_started'] == null
          ? null
          : VideoChatStarted.fromJson(
              json['video_chat_started'] as Map<String, dynamic>),
      videoChatEnded: json['video_chat_ended'] == null
          ? null
          : VideoChatEnded.fromJson(
              json['video_chat_ended'] as Map<String, dynamic>),
      videoChatParticipantsInvited: json['video_chat_participants_invited'] ==
              null
          ? null
          : VideoChatParticipantsInvited.fromJson(
              json['video_chat_participants_invited'] as Map<String, dynamic>),
      webAppData: json['web_app_data'] == null
          ? null
          : WebAppData.fromJson(json['web_app_data'] as Map<String, dynamic>),
      replyMarkup: json['reply_markup'] == null
          ? null
          : InlineKeyboardMarkup.fromJson(
              json['reply_markup'] as Map<String, dynamic>),
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
              json['forum_topic_edited'] as Map<String, dynamic>),
      generalForumTopicHidden: json['general_forum_topic_hidden'] == null
          ? null
          : GeneralForumTopicHidden.fromJson(
              json['general_forum_topic_hidden'] as Map<String, dynamic>),
      generalForumTopicUnhidden: json['general_forum_topic_unhidden'] == null
          ? null
          : GeneralForumTopicUnhidden.fromJson(
              json['general_forum_topic_unhidden'] as Map<String, dynamic>),
      writeAccessAllowed: json['write_access_allowed'] == null
          ? null
          : WriteAccessAllowed.fromJson(
              json['write_access_allowed'] as Map<String, dynamic>),
      story: json['story'] == null
          ? null
          : Story.fromJson(json['story'] as Map<String, dynamic>),
      externalReply: json['external_reply'] == null
          ? null
          : ExternalReplyInfo.fromJson(
              json['external_reply'] as Map<String, dynamic>),
      quote: json['quote'] == null
          ? null
          : TextQuote.fromJson(json['quote'] as Map<String, dynamic>),
      linkPreviewOptions: json['link_preview_options'] == null
          ? null
          : LinkPreviewOptions.fromJson(
              json['link_preview_options'] as Map<String, dynamic>),
      giveaway: json['giveaway'] == null
          ? null
          : Giveaway.fromJson(json['giveaway'] as Map<String, dynamic>),
      giveawayCreated: json['giveaway_created'] == null
          ? null
          : GiveawayCreated.fromJson(
              json['giveaway_created'] as Map<String, dynamic>),
      giveawayWinners: json['giveaway_winners'] == null
          ? null
          : GiveawayWinners.fromJson(
              json['giveaway_winners'] as Map<String, dynamic>),
      giveawayCompleted: json['giveaway_completed'] == null
          ? null
          : GiveawayCompleted.fromJson(
              json['giveaway_completed'] as Map<String, dynamic>),
      boostAdded: json['boost_added'] == null
          ? null
          : ChatBoostAdded.fromJson(
              json['boost_added'] as Map<String, dynamic>),
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
              json['chat_background_set'] as Map<String, dynamic>),
      effectId: json['effect_id'] as String?,
      showCaptionAboveMedia: json['show_caption_above_media'] as bool?,
      paidMedia: json['paid_media'] == null
          ? null
          : PaidMediaInfo.fromJson(json['paid_media'] as Map<String, dynamic>),
      refundedPayment: json['refunded_payment'] == null
          ? null
          : RefundedPayment.fromJson(
              json['refunded_payment'] as Map<String, dynamic>),
      gift: json['gift'] == null
          ? null
          : GiftInfo.fromJson(json['gift'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MessageToJson(_Message instance) => <String, dynamic>{
      'chat': instance.chat,
      'message_id': instance.messageId,
      'date': instance.date,
      if (instance.messageThreadId case final value?)
        'message_thread_id': value,
      if (instance.from case final value?) 'from': value,
      if (instance.senderChat case final value?) 'sender_chat': value,
      if (instance.forwardOrigin case final value?) 'forward_origin': value,
      if (instance.isTopicMessage case final value?) 'is_topic_message': value,
      if (instance.isAutomaticForward case final value?)
        'is_automatic_forward': value,
      if (instance.replyToMessage case final value?) 'reply_to_message': value,
      if (instance.viaBot case final value?) 'via_bot': value,
      if (instance.editDate case final value?) 'edit_date': value,
      if (instance.hasProtectedContent case final value?)
        'has_protected_content': value,
      if (instance.mediaGroupId case final value?) 'media_group_id': value,
      if (instance.authorSignature case final value?) 'author_signature': value,
      if (instance.text case final value?) 'text': value,
      if (instance.entities case final value?) 'entities': value,
      if (instance.animation case final value?) 'animation': value,
      if (instance.audio case final value?) 'audio': value,
      if (instance.document case final value?) 'document': value,
      if (instance.photo case final value?) 'photo': value,
      if (instance.sticker case final value?) 'sticker': value,
      if (instance.video case final value?) 'video': value,
      if (instance.videoNote case final value?) 'video_note': value,
      if (instance.voice case final value?) 'voice': value,
      if (instance.caption case final value?) 'caption': value,
      if (instance.captionEntities case final value?) 'caption_entities': value,
      if (instance.contact case final value?) 'contact': value,
      if (instance.dice case final value?) 'dice': value,
      if (instance.game case final value?) 'game': value,
      if (instance.poll case final value?) 'poll': value,
      if (instance.venue case final value?) 'venue': value,
      if (instance.location case final value?) 'location': value,
      if (instance.newChatMembers case final value?) 'new_chat_members': value,
      if (instance.leftChatMember case final value?) 'left_chat_member': value,
      if (instance.newChatTitle case final value?) 'new_chat_title': value,
      if (instance.newChatPhoto case final value?) 'new_chat_photo': value,
      if (instance.deleteChatPhoto case final value?)
        'delete_chat_photo': value,
      if (instance.groupChatCreated case final value?)
        'group_chat_created': value,
      if (instance.supergroupChatCreated case final value?)
        'supergroup_chat_created': value,
      if (instance.channelChatCreated case final value?)
        'channel_chat_created': value,
      if (instance.messageAutoDeleteTimerChanged case final value?)
        'message_auto_delete_timer_changed': value,
      if (instance.migrateToChatId case final value?)
        'migrate_to_chat_id': value,
      if (instance.migrateFromChatId case final value?)
        'migrate_from_chat_id': value,
      if (instance.pinnedMessage case final value?) 'pinned_message': value,
      if (instance.invoice case final value?) 'invoice': value,
      if (instance.successfulPayment case final value?)
        'successful_payment': value,
      if (instance.connectedWebsite case final value?)
        'connected_website': value,
      if (instance.passportData case final value?) 'passport_data': value,
      if (instance.proximityAlertTriggered case final value?)
        'proximity_alert_triggered': value,
      if (instance.forumTopicCreated case final value?)
        'forum_topic_created': value,
      if (instance.forumTopicClosed case final value?)
        'forum_topic_closed': value,
      if (instance.forumTopicReopened case final value?)
        'forum_topic_reopened': value,
      if (instance.videoChatScheduled case final value?)
        'video_chat_scheduled': value,
      if (instance.videoChatStarted case final value?)
        'video_chat_started': value,
      if (instance.videoChatEnded case final value?) 'video_chat_ended': value,
      if (instance.videoChatParticipantsInvited case final value?)
        'video_chat_participants_invited': value,
      if (instance.webAppData case final value?) 'web_app_data': value,
      if (instance.replyMarkup case final value?) 'reply_markup': value,
      if (instance.usersShared case final value?) 'users_shared': value,
      if (instance.chatShared case final value?) 'chat_shared': value,
      if (instance.hasMediaSpoiler case final value?)
        'has_media_spoiler': value,
      if (instance.forumTopicEdited case final value?)
        'forum_topic_edited': value,
      if (instance.generalForumTopicHidden case final value?)
        'general_forum_topic_hidden': value,
      if (instance.generalForumTopicUnhidden case final value?)
        'general_forum_topic_unhidden': value,
      if (instance.writeAccessAllowed case final value?)
        'write_access_allowed': value,
      if (instance.story case final value?) 'story': value,
      if (instance.externalReply case final value?) 'external_reply': value,
      if (instance.quote case final value?) 'quote': value,
      if (instance.linkPreviewOptions case final value?)
        'link_preview_options': value,
      if (instance.giveaway case final value?) 'giveaway': value,
      if (instance.giveawayCreated case final value?) 'giveaway_created': value,
      if (instance.giveawayWinners case final value?) 'giveaway_winners': value,
      if (instance.giveawayCompleted case final value?)
        'giveaway_completed': value,
      if (instance.boostAdded case final value?) 'boost_added': value,
      if (instance.senderBoostCount case final value?)
        'sender_boost_count': value,
      if (instance.replyToStory case final value?) 'reply_to_story': value,
      if (instance.businessConnectionId case final value?)
        'business_connection_id': value,
      if (instance.senderBusinessBot case final value?)
        'sender_business_bot': value,
      if (instance.isFromOffline case final value?) 'is_from_offline': value,
      if (instance.chatBackgroundSet case final value?)
        'chat_background_set': value,
      if (instance.effectId case final value?) 'effect_id': value,
      if (instance.showCaptionAboveMedia case final value?)
        'show_caption_above_media': value,
      if (instance.paidMedia case final value?) 'paid_media': value,
      if (instance.refundedPayment case final value?) 'refunded_payment': value,
      if (instance.gift case final value?) 'gift': value,
    };
