part of 'models.dart';

/// This object represents a message.
class Message implements MaybeInaccessibleMessage, WithUser {
  /// Chat the message belonged to
  @override
  final Chat chat;

  /// Unique message identifier inside the chat
  @override
  final int messageId;

  /// Date the message was sent in Unix time. It is always a positive number, representing a valid date.
  @override
  final int date;

  /// Optional. Unique identifier of a message thread to which the message belongs; for supergroups only
  final int? messageThreadId;

  /// Optional. Sender of the message; empty for messages sent to channels. For backward compatibility, the field contains a fake sender user in non-channel chats, if the message was sent on behalf of a chat.
  @override
  final User? from;

  /// Optional. Sender of the message, sent on behalf of a chat. For example, the channel itself for channel posts, the supergroup itself for messages from anonymous group administrators, the linked channel for messages automatically forwarded to the discussion group. For backward compatibility, the field from contains a fake sender user in non-channel chats, if the message was sent on behalf of a chat.
  final Chat? senderChat;

  /// Optional. Information about the original message for forwarded messages
  final MessageOrigin? forwardOrigin;

  /// Optional. True, if the message is sent to a forum topic
  final bool? isTopicMessage;

  /// Optional. True, if the message is a channel post that was automatically forwarded to the connected discussion group
  final bool? isAutomaticForward;

  /// Optional. For replies, the original message. Note that the Message object in this field will not contain further reply_to_message fields even if it itself is a reply.
  final Message? replyToMessage;

  /// Optional. Bot through which the message was sent
  final User? viaBot;

  /// Optional. Date the message was last edited in Unix time
  ///
  /// Note: Handy [DateTime] object is available in [editDateTime] getter.
  final int? editDate;

  /// Optional. True, if the message can't be forwarded
  final bool? hasProtectedContent;

  /// Optional. The unique identifier of a media message group this message belongs to
  final String? mediaGroupId;

  /// Optional. Signature of the post author for messages in channels, or the custom title of an anonymous group administrator
  final String? authorSignature;

  /// Optional. For text messages, the actual UTF-8 text of the message
  final String? text;

  /// Optional. For text messages, special entities like usernames, URLs, bot commands, etc. that appear in the text
  final List<MessageEntity>? entities;

  /// Optional. Message is an animation, information about the animation. For backward compatibility, when this field is set, the document field will also be set
  final Animation? animation;

  /// Optional. Message is an audio file, information about the file
  final Audio? audio;

  /// Optional. Message is a general file, information about the file
  final Document? document;

  /// Optional. Message is a photo, available sizes of the photo
  final List<PhotoSize>? photo;

  /// Optional. Message is a sticker, information about the sticker
  final Sticker? sticker;

  /// Optional. Message is a video, information about the video
  final Video? video;

  /// Optional. Message is a video note, information about the video message
  final VideoNote? videoNote;

  /// Optional. Message is a voice message, information about the file
  final Voice? voice;

  /// Optional. Caption for the animation, audio, document, photo, video or voice
  final String? caption;

  /// Optional. For messages with a caption, special entities like usernames, URLs, bot commands, etc. that appear in the caption
  final List<MessageEntity>? captionEntities;

  /// Optional. Message is a shared contact, information about the contact
  final Contact? contact;

  /// Optional. Message is a dice with random value
  final Dice? dice;

  /// Optional. Message is a game, information about the game. More about games »
  final Game? game;

  /// Optional. Message is a native poll, information about the poll
  final Poll? poll;

  /// Optional. Message is a venue, information about the venue. For backward compatibility, when this field is set, the location field will also be set
  final Venue? venue;

  /// Optional. Message is a shared location, information about the location
  final Location? location;

  /// Optional. New members that were added to the group or supergroup and information about them (the bot itself may be one of these members)
  final List<User>? newChatMembers;

  /// Optional. A member was removed from the group, information about them (this member may be the bot itself)
  final User? leftChatMember;

  /// Optional. A chat title was changed to this value
  final String? newChatTitle;

  /// Optional. A chat photo was change to this value
  final List<PhotoSize>? newChatPhoto;

  /// Optional. Service message: the chat photo was deleted
  final bool? deleteChatPhoto;

  /// Optional. Service message: the group has been created
  final bool? groupChatCreated;

  /// Optional. Service message: the supergroup has been created. This field can't be received in a message coming through updates, because bot can't be a member of a supergroup when it is created. It can only be found in reply_to_message if someone replies to a very first message in a directly created supergroup.
  final bool? supergroupChatCreated;

  /// Optional. Service message: the channel has been created. This field can't be received in a message coming through updates, because bot can't be a member of a channel when it is created. It can only be found in reply_to_message if someone replies to a very first message in a channel.
  final bool? channelChatCreated;

  /// Optional. Service message: auto-delete timer settings changed in the chat
  final MessageAutoDeleteTimerChanged? messageAutoDeleteTimerChanged;

  /// Optional. The group has been migrated to a supergroup with the specified identifier. This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a signed 64-bit integer or double-precision float type are safe for storing this identifier.
  final int? migrateToChatId;

  /// Optional. The supergroup has been migrated from a group with the specified identifier. This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a signed 64-bit integer or double-precision float type are safe for storing this identifier.
  final int? migrateFromChatId;

  /// Optional. Specified message was pinned. Note that the Message object in this field will not contain further reply_to_message fields even if it is itself a reply.
  final Message? pinnedMessage;

  /// Optional. Message is an invoice for a payment, information about the invoice. [More about payments »](https://core.telegram.org/bots/api#payments)
  final Invoice? invoice;

  /// Optional. Message is a service message about a successful payment, information about the payment. [More about payments »](https://core.telegram.org/bots/api#payments)
  final SuccessfulPayment? successfulPayment;

  /// Optional. The domain name of the website on which the user has logged in. [More about Telegram Login »](https://core.telegram.org/widgets/login)
  final String? connectedWebsite;

  /// Optional. Telegram Passport data
  final PassportData? passportData;

  /// Optional. Service message. A user in the chat triggered another user's proximity alert while sharing Live Location.
  final ProximityAlertTriggered? proximityAlertTriggered;

  /// Optional. Service message: forum topic created
  final ForumTopicCreated? forumTopicCreated;

  /// Optional. Service message: forum topic closed
  final ForumTopicClosed? forumTopicClosed;

  /// Optional. Service message: forum topic reopened
  final ForumTopicReopened? forumTopicReopened;

  /// Optional. Service message: video chat scheduled
  final VideoChatScheduled? videoChatScheduled;

  /// Optional. Service message: video chat started
  final VideoChatStarted? videoChatStarted;

  /// Optional. Service message: video chat ended
  final VideoChatEnded? videoChatEnded;

  /// Optional. Service message: new participants invited to a video chat
  final VideoChatParticipantsInvited? videoChatParticipantsInvited;

  /// Optional. Service message: data sent by a Web App
  final WebAppData? webAppData;

  /// Optional. Inline keyboard attached to the message. login_url buttons are represented as ordinary url buttons.
  final InlineKeyboardMarkup? replyMarkup;

  /// Optional. Service message: a user was shared with the bot
  final UsersShared? usersShared;

  /// Optional. Service message: a chat was shared with the bot
  final ChatShared? chatShared;

  /// Optional. True, if the message media is covered by a spoiler animation
  final bool? hasMediaSpoiler;

  /// Optional. Service message: forum topic edited
  final ForumTopicEdited? forumTopicEdited;

  /// Optional. Service message: the 'General' forum topic hidden
  final GeneralForumTopicHidden? generalForumTopicHidden;

  /// Optional. Service message: the 'General' forum topic unhidden
  final GeneralForumTopicUnhidden? generalForumTopicUnhidden;

  /// Optional. Service message: the user allowed the bot added to the attachment menu to write messages
  final WriteAccessAllowed? writeAccessAllowed;

  /// Optional. Message is a forwarded story
  final Story? story;

  /// Optional. Information about the message that is being replied to, which may come from another chat or forum topic
  final ExternalReplyInfo? externalReply;

  /// Optional. For replies that quote part of the original message, the quoted part of the message
  final TextQuote? quote;

  /// Optional. Options used for link preview generation for the message, if it is a text message and link preview options were changed
  final LinkPreviewOptions? linkPreviewOptions;

  /// Optional. The message is a scheduled giveaway message
  final Giveaway? giveaway;

  /// Optional. Service message: a scheduled giveaway was created
  final GiveawayCreated? giveawayCreated;

  /// Optional. A giveaway with public winners was completed
  final GiveawayWinners? giveawayWinners;

  /// Optional. Service message: a giveaway without public winners was completed
  final GiveawayCompleted? giveawayCompleted;

  /// Optional. Service message: user boosted the chat
  final ChatBoostAdded? boostAdded;

  /// Optional. If the sender of the message boosted the chat, the number of boosts added by the user
  final int? senderBoostCount;

  /// Optional. For replies to a story, the original story
  final Story? replyToStory;

  /// Optional. Unique identifier of the business connection from which the message was received. If non-empty, the message belongs to a chat of the corresponding business account that is independent from any potential bot chat which might share the same identifier.
  final String? businessConnectionId;

  /// Optional. The bot that actually sent the message on behalf of the business account. Available only for outgoing messages sent on behalf of the connected business account.
  final User? senderBusinessBot;

  /// Optional. True, if the message was sent by an implicit action, for example, as an away or a greeting business message, or as a scheduled message
  final bool? isFromOffline;

  /// Optional. Service message: chat background set
  final ChatBackground? chatBackgroundSet;

  // (Since Bot API 7.4)

  /// Optional. Unique identifier of the message effect added to the message
  final String? effectId;

  /// Optional. True, if the caption must be shown above the message media
  final bool? showCaptionAboveMedia;

  /// Optional. Message contains paid media; information about the paid media
  final PaidMediaInfo? paidMedia;

  /// Optional. Message is a service message about a refunded payment, information about the payment. More about payments »
  final RefundedPayment? refundedPayment;

  /// Creates a Message object.
  const Message({
    this.from,
    this.senderChat,
    this.replyToMessage,
    this.viaBot,
    this.editDate,
    this.mediaGroupId,
    this.authorSignature,
    this.text,
    this.entities,
    this.animation,
    this.audio,
    this.document,
    this.photo,
    this.sticker,
    this.video,
    this.videoNote,
    this.voice,
    this.caption,
    this.captionEntities,
    this.contact,
    this.dice,
    this.game,
    this.poll,
    this.venue,
    this.location,
    this.newChatMembers,
    this.leftChatMember,
    this.newChatTitle,
    this.newChatPhoto,
    this.deleteChatPhoto,
    this.groupChatCreated,
    this.supergroupChatCreated,
    this.channelChatCreated,
    this.messageAutoDeleteTimerChanged,
    this.migrateToChatId,
    this.migrateFromChatId,
    this.pinnedMessage,
    this.invoice,
    this.successfulPayment,
    this.connectedWebsite,
    this.passportData,
    this.proximityAlertTriggered,
    this.forumTopicCreated,
    this.forumTopicClosed,
    this.forumTopicReopened,
    this.videoChatScheduled,
    this.videoChatStarted,
    this.videoChatEnded,
    this.videoChatParticipantsInvited,
    this.webAppData,
    this.replyMarkup,
    this.hasProtectedContent,
    this.isAutomaticForward,
    this.isTopicMessage,
    this.messageThreadId,
    this.usersShared,
    this.chatShared,
    this.hasMediaSpoiler,
    this.forumTopicEdited,
    this.generalForumTopicHidden,
    this.generalForumTopicUnhidden,
    this.writeAccessAllowed,
    this.story,
    this.externalReply,
    this.quote,
    this.linkPreviewOptions,
    this.giveaway,
    this.giveawayCreated,
    this.giveawayWinners,
    this.giveawayCompleted,
    this.forwardOrigin,
    required this.chat,
    required this.date,
    required this.messageId,
    this.boostAdded,
    this.senderBoostCount,
    this.replyToStory,
    this.businessConnectionId,
    this.senderBusinessBot,
    this.isFromOffline,
    this.chatBackgroundSet,
    this.effectId,
    this.showCaptionAboveMedia,
    this.paidMedia,
    this.refundedPayment,
  });

  /// Creates a [Message] object from json map.
  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      messageId: json['message_id'],
      from: _parseJson<User>(json['from'], User.fromJson),
      senderChat: _parseJson<Chat>(json['sender_chat'], Chat.fromJson),
      date: json['date'],
      chat: Chat.fromJson(json['chat']),
      replyToMessage:
          _parseJson<Message>(json['reply_to_message'], Message.fromJson),
      viaBot: _parseJson<User>(json['via_bot'], User.fromJson),
      editDate: json['edit_date'],
      mediaGroupId: json['media_group_id'],
      authorSignature: json['author_signature'],
      text: json['text'],
      entities:
          _parseList<MessageEntity>(json['entities'], MessageEntity.fromJson),
      animation: _parseJson<Animation>(json['animation'], Animation.fromJson),
      audio: _parseJson<Audio>(json['audio'], Audio.fromJson),
      document: _parseJson<Document>(json['document'], Document.fromJson),
      photo: _parseList<PhotoSize>(json['photo'], PhotoSize.fromJson),
      sticker: _parseJson<Sticker>(json['sticker'], Sticker.fromJson),
      video: _parseJson<Video>(json['video'], Video.fromJson),
      videoNote: _parseJson<VideoNote>(json['video_note'], VideoNote.fromJson),
      voice: _parseJson<Voice>(json['voice'], Voice.fromJson),
      caption: json['caption'],
      captionEntities: _parseList<MessageEntity>(
        json['caption_entities'],
        MessageEntity.fromJson,
      ),
      contact: _parseJson<Contact>(json['contact'], Contact.fromJson),
      dice: _parseJson<Dice>(json['dice'], Dice.fromJson),
      game: _parseJson<Game>(json['game'], Game.fromJson),
      poll: _parseJson<Poll>(json['poll'], Poll.fromJson),
      venue: _parseJson<Venue>(json['venue'], Venue.fromJson),
      location: _parseJson<Location>(json['location'], Location.fromJson),
      newChatMembers: _parseList<User>(json['new_chat_members'], User.fromJson),
      leftChatMember: _parseJson<User>(json['left_chat_member'], User.fromJson),
      newChatTitle: json['new_chat_title'],
      newChatPhoto:
          _parseList<PhotoSize>(json['new_chat_photo'], PhotoSize.fromJson),
      deleteChatPhoto: json['delete_chat_photo'],
      groupChatCreated: json['group_chat_created'],
      supergroupChatCreated: json['supergroup_chat_created'],
      channelChatCreated: json['channel_chat_created'],
      messageAutoDeleteTimerChanged: _parseJson<MessageAutoDeleteTimerChanged>(
        json['message_auto_delete_timer_changed'],
        MessageAutoDeleteTimerChanged.fromJson,
      ),
      migrateToChatId: json['migrate_to_chat_id'],
      migrateFromChatId: json['migrate_from_chat_id'],
      pinnedMessage:
          _parseJson<Message>(json['pinned_message'], Message.fromJson),
      invoice: _parseJson<Invoice>(json['invoice'], Invoice.fromJson),
      successfulPayment: _parseJson<SuccessfulPayment>(
        json['successful_payment'],
        SuccessfulPayment.fromJson,
      ),
      connectedWebsite: json['connected_website'],
      passportData: _parseJson<PassportData>(
        json['passport_data'],
        PassportData.fromJson,
      ),
      proximityAlertTriggered: _parseJson<ProximityAlertTriggered>(
        json['proximity_alert_triggered'],
        ProximityAlertTriggered.fromJson,
      ),
      replyMarkup: _parseJson<InlineKeyboardMarkup>(
        json['reply_markup'],
        InlineKeyboardMarkup.fromJson,
      ),
      isAutomaticForward: json['is_automatic_forward'],
      webAppData:
          _parseJson<WebAppData>(json['web_app_data'], WebAppData.fromJson),
      videoChatEnded: _parseJson<VideoChatEnded>(
        json['video_chat_ended'],
        VideoChatEnded.fromJson,
      ),
      videoChatStarted: _parseJson<VideoChatStarted>(
        json['video_chat_started'],
        VideoChatStarted.fromJson,
      ),
      videoChatParticipantsInvited: _parseJson<VideoChatParticipantsInvited>(
        json['video_chat_participants_invited'],
        VideoChatParticipantsInvited.fromJson,
      ),
      videoChatScheduled: _parseJson<VideoChatScheduled>(
        json['video_chat_scheduled'],
        VideoChatScheduled.fromJson,
      ),
      forumTopicClosed: _parseJson<ForumTopicClosed>(
        json['forum_topic_closed'],
        ForumTopicClosed.fromJson,
      ),
      forumTopicCreated: _parseJson<ForumTopicCreated>(
        json['forum_topic_created'],
        ForumTopicCreated.fromJson,
      ),
      forumTopicReopened: _parseJson<ForumTopicReopened>(
        json['forum_topic_reopened'],
        ForumTopicReopened.fromJson,
      ),
      hasProtectedContent: json['has_protected_content'],
      isTopicMessage: json['is_topic_message'],
      messageThreadId: json['message_thread_id'],
      usersShared:
          _parseJson<UsersShared>(json['users_shared'], UsersShared.fromJson),
      chatShared:
          _parseJson<ChatShared>(json['chat_shared'], ChatShared.fromJson),
      hasMediaSpoiler: json['has_media_spoiler'],
      forumTopicEdited: _parseJson<ForumTopicEdited>(
        json['forum_topic_edited'],
        ForumTopicEdited.fromJson,
      ),
      generalForumTopicHidden: _parseJson<GeneralForumTopicHidden>(
        json['general_forum_topic_hidden'],
        GeneralForumTopicHidden.fromJson,
      ),
      generalForumTopicUnhidden: _parseJson<GeneralForumTopicUnhidden>(
        json['general_forum_topic_unhidden'],
        GeneralForumTopicUnhidden.fromJson,
      ),
      writeAccessAllowed: _parseJson<WriteAccessAllowed>(
        json['write_access_allowed'],
        WriteAccessAllowed.fromJson,
      ),
      story: _parseJson<Story>(json['story'], Story.fromJson),
      externalReply: _parseJson<ExternalReplyInfo>(
        json['external_reply'],
        ExternalReplyInfo.fromJson,
      ),
      quote: _parseJson<TextQuote>(json['quote'], TextQuote.fromJson),
      linkPreviewOptions: _parseJson<LinkPreviewOptions>(
        json['link_preview_options'],
        LinkPreviewOptions.fromJson,
      ),
      giveaway: _parseJson<Giveaway>(json['giveaway'], Giveaway.fromJson),
      giveawayCreated: _parseJson<GiveawayCreated>(
        json['giveaway_created'],
        GiveawayCreated.fromJson,
      ),
      giveawayWinners: _parseJson<GiveawayWinners>(
        json['giveaway_winners'],
        GiveawayWinners.fromJson,
      ),
      giveawayCompleted: _parseJson<GiveawayCompleted>(
        json['giveaway_completed'],
        GiveawayCompleted.fromJson,
      ),
      forwardOrigin: _parseJson<MessageOrigin>(
        json['forward_origin'],
        MessageOrigin.fromJson,
      ),
      boostAdded: _parseJson<ChatBoostAdded>(
        json['boost_added'],
        ChatBoostAdded.fromJson,
      ),
      senderBoostCount: json["sender_boost_count"],
      replyToStory: _parseJson<Story>(json["reply_to_story"], Story.fromJson),
      businessConnectionId: json["business_connection_id"],
      senderBusinessBot:
          _parseJson<User>(json["sender_business_bot"], User.fromJson),
      isFromOffline: json["is_from_offline"],
      chatBackgroundSet: _parseJson<ChatBackground>(
        json["chat_background_set"],
        ChatBackground.fromJson,
      ),
      effectId: json["effect_id"],
      showCaptionAboveMedia: json["show_caption_above_media"],
      paidMedia: _parseJson<PaidMediaInfo>(
        json['paid_media'],
        PaidMediaInfo.fromJson,
      ),
      refundedPayment: _parseJson<RefundedPayment>(
        json['refunded_payment'],
        RefundedPayment.fromJson,
      ),
    );
  }

  /// Returns the JSON representation of the Message object.
  @override
  Map<String, dynamic> toJson() {
    return {
      'message_id': messageId,
      'from': from?.toJson(),
      'sender_chat': senderChat?.toJson(),
      'date': date,
      'chat': chat.toJson(),
      'reply_to_message': replyToMessage?.toJson(),
      'via_bot': viaBot?.toJson(),
      'edit_date': editDate,
      'media_group_id': mediaGroupId,
      'author_signature': authorSignature,
      'text': text,
      'entities': entities?.map((e) => e.toJson()).toList(),
      'animation': animation?.toJson(),
      'audio': audio?.toJson(),
      'document': document?.toJson(),
      'photo': photo?.map((e) => e.toJson()).toList(),
      'sticker': sticker?.toJson(),
      'video': video?.toJson(),
      'video_note': videoNote?.toJson(),
      'voice': voice?.toJson(),
      'caption': caption,
      'caption_entities': captionEntities?.map((e) => e.toJson()).toList(),
      'contact': contact?.toJson(),
      'dice': dice?.toJson(),
      'game': game?.toJson(),
      'poll': poll?.toJson(),
      'venue': venue?.toJson(),
      'location': location?.toJson(),
      'new_chat_members': newChatMembers?.map((e) => e.toJson()).toList(),
      'left_chat_member': leftChatMember?.toJson(),
      'new_chat_title': newChatTitle,
      'new_chat_photo': newChatPhoto?.map((e) => e.toJson()).toList(),
      'delete_chat_photo': deleteChatPhoto,
      'group_chat_created': groupChatCreated,
      'supergroup_chat_created': supergroupChatCreated,
      'channel_chat_created': channelChatCreated,
      'message_auto_delete_timer_changed':
          messageAutoDeleteTimerChanged?.toJson(),
      'migrate_to_chat_id': migrateToChatId,
      'migrate_from_chat_id': migrateFromChatId,
      'pinned_message': pinnedMessage?.toJson(),
      'invoice': invoice?.toJson(),
      'successful_payment': successfulPayment?.toJson(),
      'connected_website': connectedWebsite,
      'passport_data': passportData?.toJson(),
      'proximity_alert_triggered': proximityAlertTriggered?.toJson(),
      'reply_markup': replyMarkup?.toJson(),
      'is_automatic_forward': isAutomaticForward,
      'web_app_data': webAppData?.toJson(),
      'video_chat_ended': videoChatEnded?.toJson(),
      'video_chat_started': videoChatStarted?.toJson(),
      'video_chat_participants_invited': videoChatParticipantsInvited?.toJson(),
      'video_chat_scheduled': videoChatScheduled?.toJson(),
      'forum_topic_closed': forumTopicClosed?.toJson(),
      'forum_topic_created': forumTopicCreated?.toJson(),
      'forum_topic_reopened': forumTopicReopened?.toJson(),
      'has_protected_content': hasProtectedContent,
      'is_topic_message': isTopicMessage,
      'message_thread_id': messageThreadId,
      'users_shared': usersShared?.toJson(),
      'chat_shared': chatShared?.toJson(),
      'has_media_spoiler': hasMediaSpoiler,
      'forum_topic_edited': forumTopicEdited?.toJson(),
      'general_forum_topic_hidden': generalForumTopicHidden?.toJson(),
      'general_forum_topic_unhidden': generalForumTopicUnhidden?.toJson(),
      'write_access_allowed': writeAccessAllowed?.toJson(),
      'story': story?.toJson(),
      'external_reply': externalReply?.toJson(),
      'quote': quote?.toJson(),
      'link_preview_options': linkPreviewOptions?.toJson(),
      'giveaway': giveaway?.toJson(),
      'giveaway_created': giveawayCreated?.toJson(),
      'giveaway_winners': giveawayWinners?.toJson(),
      'giveaway_completed': giveawayCompleted?.toJson(),
      'forward_origin': forwardOrigin?.toJson(),
      'boost_added': boostAdded?.toJson(),
      'sender_boost_count': senderBoostCount,
      'reply_to_story': replyToStory?.toJson(),
      'business_connection_id': businessConnectionId,
      'sender_business_bot': senderBusinessBot?.toJson(),
      'is_from_offline': isFromOffline,
      'chat_background_set': chatBackgroundSet?.toJson(),
      'effect_id': effectId,
      'show_caption_above_media': showCaptionAboveMedia,
      'paid_media': paidMedia?.toJson(),
      'refunded_payment': refundedPayment?.toJson(),
    }..removeWhere(_nullFilter);
  }

  @override
  bool get isAccessible => true;

  @override
  bool get isInaccessible => false;
}
