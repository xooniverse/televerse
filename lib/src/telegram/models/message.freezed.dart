// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InaccessibleMessage {
  /// Chat to which the message belongs
  Chat get chat;

  /// Unique message identifier
  @JsonKey(name: 'message_id')
  int get messageId;

  /// Date the message was sent in Unix time
  int get date;

  /// Serializes this InaccessibleMessage to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'InaccessibleMessage(chat: $chat, messageId: $messageId, date: $date)';
  }
}

/// Adds pattern-matching-related methods to [InaccessibleMessage].
extension InaccessibleMessagePatterns on InaccessibleMessage {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_InaccessibleMessage value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InaccessibleMessage() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_InaccessibleMessage value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InaccessibleMessage():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_InaccessibleMessage value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InaccessibleMessage() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _InaccessibleMessage implements InaccessibleMessage {
  const _InaccessibleMessage({
    required this.chat,
    @JsonKey(name: 'message_id') required this.messageId,
    this.date = 0,
  });
  factory _InaccessibleMessage.fromJson(Map<String, dynamic> json) =>
      _$InaccessibleMessageFromJson(json);

  /// Chat to which the message belongs
  @override
  final Chat chat;

  /// Unique message identifier
  @override
  @JsonKey(name: 'message_id')
  final int messageId;

  /// Date the message was sent in Unix time
  @override
  @JsonKey()
  final int date;

  @override
  Map<String, dynamic> toJson() {
    return _$InaccessibleMessageToJson(this);
  }

  @override
  String toString() {
    return 'InaccessibleMessage(chat: $chat, messageId: $messageId, date: $date)';
  }
}

/// @nodoc
mixin _$Message {
  /// Chat the message belonged to
  @JsonKey(name: "chat")
  Chat get chat;

  /// Unique message identifier inside the chat
  @JsonKey(name: "message_id")
  int get messageId;

  /// Date the message was sent in Unix time. It is always a positive number,
  /// representing a valid date.
  @JsonKey(name: "date")
  int get date;

  /// Optional. Unique identifier of a message thread or forum topic to which the message belongs; for supergroups and private chats only
  @JsonKey(name: 'message_thread_id')
  int? get messageThreadId;

  /// Optional. Sender of the message; empty for messages sent to channels.
  /// For backward compatibility, the field contains a fake sender user in
  /// non-channel chats, if the message was sent on behalf of a chat.
  @JsonKey(name: 'from')
  User? get from;

  /// Optional. Sender of the message, sent on behalf of a chat. For example,
  /// the channel itself for channel posts, the supergroup itself for messages
  /// from anonymous group administrators, the linked channel for messages
  /// automatically forwarded to the discussion group. For backward
  /// compatibility, the field from contains a fake sender user in non-channel
  /// chats, if the message was sent on behalf of a chat.
  @JsonKey(name: 'sender_chat')
  Chat? get senderChat;

  /// Optional. Information about the original message for forwarded messages
  @JsonKey(name: 'forward_origin')
  MessageOrigin? get forwardOrigin;

  /// Optional. True, if the message is sent to a topic in a forum supergroup or a private chat with the bot
  @JsonKey(name: 'is_topic_message')
  bool? get isTopicMessage;

  /// Optional. True, if the message is a channel post that was automatically
  /// forwarded to the connected discussion group
  @JsonKey(name: 'is_automatic_forward')
  bool? get isAutomaticForward;

  /// Optional. For replies, the original message. Note that the Message
  /// object in this field will not contain further reply_to_message fields
  /// even if it itself is a reply.
  @JsonKey(name: 'reply_to_message')
  Message? get replyToMessage;

  /// Optional. Bot through which the message was sent
  @JsonKey(name: 'via_bot')
  User? get viaBot;

  /// Optional. Date the message was last edited in Unix time
  ///
  /// Note: Handy [DateTime] object is available in `editDateTime` getter.
  @JsonKey(name: 'edit_date')
  int? get editDate;

  /// Optional. True, if the message can't be forwarded
  @JsonKey(name: 'has_protected_content')
  bool? get hasProtectedContent;

  /// Optional. The unique identifier of a media message group this message
  /// belongs to
  @JsonKey(name: 'media_group_id')
  String? get mediaGroupId;

  /// Optional. Signature of the post author for messages in channels, or the
  /// custom title of an anonymous group administrator
  @JsonKey(name: 'author_signature')
  String? get authorSignature;

  /// Optional. For text messages, the actual UTF-8 text of the message
  @JsonKey(name: 'text')
  String? get text;

  /// Optional. For text messages, special entities like usernames, URLs, bot
  /// commands, etc. that appear in the text
  @JsonKey(name: 'entities')
  List<MessageEntity>? get entities;

  /// Optional. Message is an animation, information about the animation. For
  /// backward compatibility, when this field is set, the document field will
  /// also be set
  @JsonKey(name: 'animation')
  Animation? get animation;

  /// Optional. Message is an audio file, information about the file
  @JsonKey(name: 'audio')
  Audio? get audio;

  /// Optional. Message is a general file, information about the file
  @JsonKey(name: 'document')
  Document? get document;

  /// Optional. Message is a photo, available sizes of the photo
  @JsonKey(name: 'photo')
  List<PhotoSize>? get photo;

  /// Optional. Message is a sticker, information about the sticker
  @JsonKey(name: 'sticker')
  Sticker? get sticker;

  /// Optional. Message is a video, information about the video
  @JsonKey(name: 'video')
  Video? get video;

  /// Optional. Message is a video note, information about the video message
  @JsonKey(name: 'video_note')
  VideoNote? get videoNote;

  /// Optional. Message is a voice message, information about the file
  @JsonKey(name: 'voice')
  Voice? get voice;

  /// Optional. Caption for the animation, audio, document, photo, video or
  /// voice
  @JsonKey(name: 'caption')
  String? get caption;

  /// Optional. For messages with a caption, special entities like usernames,
  /// URLs, bot commands, etc. that appear in the caption
  @JsonKey(name: 'caption_entities')
  List<MessageEntity>? get captionEntities;

  /// Optional. Message is a shared contact, information about the contact
  @JsonKey(name: 'contact')
  Contact? get contact;

  /// Optional. Message is a dice with random value
  @JsonKey(name: 'dice')
  Dice? get dice;

  /// Optional. Message is a game, information about the game. More about
  /// games »
  @JsonKey(name: 'game')
  Game? get game;

  /// Optional. Message is a native poll, information about the poll
  @JsonKey(name: 'poll')
  Poll? get poll;

  /// Optional. Message is a venue, information about the venue. For backward
  /// compatibility, when this field is set, the location field will also be
  /// set
  @JsonKey(name: 'venue')
  Venue? get venue;

  /// Optional. Message is a shared location, information about the location
  @JsonKey(name: 'location')
  Location? get location;

  /// Optional. New members that were added to the group or supergroup and
  /// information about them (the bot itself may be one of these members)
  @JsonKey(name: 'new_chat_members')
  List<User>? get newChatMembers;

  /// Optional. A member was removed from the group, information about them
  /// (this member may be the bot itself)
  @JsonKey(name: 'left_chat_member')
  User? get leftChatMember;

  /// Optional. A chat title was changed to this value
  @JsonKey(name: 'new_chat_title')
  String? get newChatTitle;

  /// Optional. A chat photo was change to this value
  @JsonKey(name: 'new_chat_photo')
  List<PhotoSize>? get newChatPhoto;

  /// Optional. Service message: the chat photo was deleted
  @JsonKey(name: 'delete_chat_photo')
  bool? get deleteChatPhoto;

  /// Optional. Service message: the group has been created
  @JsonKey(name: 'group_chat_created')
  bool? get groupChatCreated;

  /// Optional. Service message: the supergroup has been created. This field
  /// can't be received in a message coming through updates, because bot can't
  /// be a member of a supergroup when it is created. It can only be found in
  /// reply_to_message if someone replies to a very first message in a
  /// directly created supergroup.
  @JsonKey(name: 'supergroup_chat_created')
  bool? get supergroupChatCreated;

  /// Optional. Service message: the channel has been created. This field
  /// can't be received in a message coming through updates, because bot can't
  /// be a member of a channel when it is created. It can only be found in
  /// reply_to_message if someone replies to a very first message in a
  /// channel.
  @JsonKey(name: 'channel_chat_created')
  bool? get channelChatCreated;

  /// Optional. Service message: auto-delete timer settings changed in the
  /// chat
  @JsonKey(name: 'message_auto_delete_timer_changed')
  MessageAutoDeleteTimerChanged? get messageAutoDeleteTimerChanged;

  /// Optional. The group has been migrated to a supergroup with the specified
  /// identifier. This number may have more than 32 significant bits and some
  /// programming languages may have difficulty/silent defects in interpreting
  /// it. But it has at most 52 significant bits, so a signed
  /// 64-bit integer or double-precision float type are safe for storing this
  /// identifier.
  @JsonKey(name: 'migrate_to_chat_id')
  int? get migrateToChatId;

  /// Optional. The supergroup has been migrated from a group with the
  /// specified identifier. This number may have more than 32 significant bits
  /// and some programming languages may have difficulty/silent defects in
  /// interpreting it. But it has at most 52 significant bits, so a signed
  /// 64-bit integer or double-precision float type are safe for storing this
  /// identifier.
  @JsonKey(name: 'migrate_from_chat_id')
  int? get migrateFromChatId;

  /// Optional. Specified message was pinned. Note that the Message object in
  /// this field will not contain further reply_to_message fields even if it
  /// is itself a reply.
  @JsonKey(name: 'pinned_message')
  Message? get pinnedMessage;

  /// Optional. Message is an invoice for a payment, information about the
  /// invoice. More about payments »
  @JsonKey(name: 'invoice')
  Invoice? get invoice;

  /// Optional. Message is a service message about a successful payment,
  /// information about the payment. More about payments »
  @JsonKey(name: 'successful_payment')
  SuccessfulPayment? get successfulPayment;

  /// Optional. The domain name of the website on which the user has logged
  /// in. More about Telegram Login »
  @JsonKey(name: 'connected_website')
  String? get connectedWebsite;

  /// Optional. Telegram Passport data
  @JsonKey(name: 'passport_data')
  PassportData? get passportData;

  /// Optional. Service message. A user in the chat triggered another user's
  /// proximity alert while sharing Live Location.
  @JsonKey(name: 'proximity_alert_triggered')
  ProximityAlertTriggered? get proximityAlertTriggered;

  /// Optional. Service message: forum topic created
  @JsonKey(name: 'forum_topic_created')
  ForumTopicCreated? get forumTopicCreated;

  /// Optional. Service message: forum topic closed
  @JsonKey(name: 'forum_topic_closed')
  ForumTopicClosed? get forumTopicClosed;

  /// Optional. Service message: forum topic reopened
  @JsonKey(name: 'forum_topic_reopened')
  ForumTopicReopened? get forumTopicReopened;

  /// Optional. Service message: video chat scheduled
  @JsonKey(name: 'video_chat_scheduled')
  VideoChatScheduled? get videoChatScheduled;

  /// Optional. Service message: video chat started
  @JsonKey(name: 'video_chat_started')
  VideoChatStarted? get videoChatStarted;

  /// Optional. Service message: video chat ended
  @JsonKey(name: 'video_chat_ended')
  VideoChatEnded? get videoChatEnded;

  /// Optional. Service message: new participants invited to a video chat
  @JsonKey(name: 'video_chat_participants_invited')
  VideoChatParticipantsInvited? get videoChatParticipantsInvited;

  /// Optional. Service message: data sent by a Web App
  @JsonKey(name: 'web_app_data')
  WebAppData? get webAppData;

  /// Optional. Inline keyboard attached to the message. login_url buttons are
  /// represented as ordinary url buttons.
  @JsonKey(name: 'reply_markup')
  InlineKeyboardMarkup? get replyMarkup;

  /// Optional. Service message: a user was shared with the bot
  @JsonKey(name: 'users_shared')
  UsersShared? get usersShared;

  /// Optional. Service message: a chat was shared with the bot
  @JsonKey(name: 'chat_shared')
  ChatShared? get chatShared;

  /// Optional. True, if the message media is covered by a spoiler animation
  @JsonKey(name: 'has_media_spoiler')
  bool? get hasMediaSpoiler;

  /// Optional. Service message: forum topic edited
  @JsonKey(name: 'forum_topic_edited')
  ForumTopicEdited? get forumTopicEdited;

  /// Optional. Service message: the 'General' forum topic hidden
  @JsonKey(name: 'general_forum_topic_hidden')
  GeneralForumTopicHidden? get generalForumTopicHidden;

  /// Optional. Service message: the 'General' forum topic unhidden
  @JsonKey(name: 'general_forum_topic_unhidden')
  GeneralForumTopicUnhidden? get generalForumTopicUnhidden;

  /// Optional. Service message: the user allowed the bot added to the
  /// attachment menu to write messages
  @JsonKey(name: 'write_access_allowed')
  WriteAccessAllowed? get writeAccessAllowed;

  /// Optional. Message is a forwarded story
  @JsonKey(name: 'story')
  Story? get story;

  /// Optional. Information about the message that is being replied to, which
  /// may come from another chat or forum topic
  @JsonKey(name: 'external_reply')
  ExternalReplyInfo? get externalReply;

  /// Optional. For replies that quote part of the original message, the
  /// quoted part of the message
  @JsonKey(name: 'quote')
  TextQuote? get quote;

  /// Optional. Options used for link preview generation for the message, if
  /// it is a text message and link preview options were changed
  @JsonKey(name: 'link_preview_options')
  LinkPreviewOptions? get linkPreviewOptions;

  /// Optional. The message is a scheduled giveaway message
  @JsonKey(name: 'giveaway')
  Giveaway? get giveaway;

  /// Optional. Service message: a scheduled giveaway was created
  @JsonKey(name: 'giveaway_created')
  GiveawayCreated? get giveawayCreated;

  /// Optional. A giveaway with public winners was completed
  @JsonKey(name: 'giveaway_winners')
  GiveawayWinners? get giveawayWinners;

  /// Optional. Service message: a giveaway without public winners was
  /// completed
  @JsonKey(name: 'giveaway_completed')
  GiveawayCompleted? get giveawayCompleted;

  /// Optional. Service message: user boosted the chat
  @JsonKey(name: 'boost_added')
  ChatBoostAdded? get boostAdded;

  /// Optional. If the sender of the message boosted the chat, the number of
  /// boosts added by the user
  @JsonKey(name: 'sender_boost_count')
  int? get senderBoostCount;

  /// Optional. For replies to a story, the original story
  @JsonKey(name: 'reply_to_story')
  Story? get replyToStory;

  /// Optional. Unique identifier of the business connection from which the
  /// message was received. If non-empty, the message belongs to a chat of the
  /// corresponding business account that is independent from any potential
  /// bot chat which might share the same identifier.
  @JsonKey(name: 'business_connection_id')
  String? get businessConnectionId;

  /// Optional. The bot that actually sent the message on behalf of the
  /// business account. Available only for outgoing messages sent on behalf of
  /// the connected business account.
  @JsonKey(name: 'sender_business_bot')
  User? get senderBusinessBot;

  /// Optional. True, if the message was sent by an implicit action, for
  /// example, as an away or a greeting business message, or as a scheduled
  /// message
  @JsonKey(name: 'is_from_offline')
  bool? get isFromOffline;

  /// Optional. Service message: chat background set
  @JsonKey(name: 'chat_background_set')
  ChatBackground? get chatBackgroundSet;

  /// Optional. Unique identifier of the message effect added to the message
  @JsonKey(name: 'effect_id')
  String? get effectId;

  /// Optional. True, if the caption must be shown above the message media
  @JsonKey(name: 'show_caption_above_media')
  bool? get showCaptionAboveMedia;

  /// Optional. Message contains paid media; information about the paid media
  @JsonKey(name: 'paid_media')
  PaidMediaInfo? get paidMedia;

  /// Optional. Message is a service message about a refunded payment,
  /// information about the payment. More about payments »
  @JsonKey(name: 'refunded_payment')
  RefundedPayment? get refundedPayment;

  /// Optional. Service message: a regular gift was sent or received
  @JsonKey(name: 'gift')
  GiftInfo? get gift;

  /// Optional. Service message: a unique gift was sent or received
  @JsonKey(name: 'unique_gift')
  UniqueGiftInfo? get uniqueGift;

  /// Optional. Service message: the price for paid messages has changed in the chat
  @JsonKey(name: 'paid_message_price_changed')
  PaidMessagePriceChanged? get paidMessagePriceChanged;

  /// Optional. The number of Telegram Stars that were paid by the sender of the message to send it
  @JsonKey(name: 'paid_star_count')
  int? get paidStarCount;

  /// Optional. Message is a checklist
  @JsonKey(name: 'checklist')
  Checklist? get checklist;

  /// Optional. Service message: some tasks in a checklist were marked as done or not done
  @JsonKey(name: 'checklist_tasks_done')
  ChecklistTasksDone? get checklistTasksDone;

  /// Optional. Service message: tasks were added to a checklist
  @JsonKey(name: 'checklist_tasks_added')
  ChecklistTasksAdded? get checklistTasksAdded;

  /// Optional. Service message: the price for paid messages in the corresponding direct messages chat of a channel has changed
  @JsonKey(name: 'direct_message_price_changed')
  DirectMessagePriceChanged? get directMessagePriceChanged;

  /// Optional. Identifier of the specific checklist task that is being replied to
  @JsonKey(name: 'reply_to_checklist_task_id')
  int? get replyToChecklistTaskId;

  /// Optional. Information about the direct messages chat topic that contains the message
  @JsonKey(name: 'direct_messages_topic')
  DirectMessagesTopic? get directMessagesTopic;

  /// Optional. True, if the message is a paid post. Note that such posts must not be deleted for 24 hours to receive the payment and can't be edited.
  @JsonKey(name: 'is_paid_post')
  bool? get isPaidPost;

  /// Optional. Information about suggested post parameters if the message is a suggested post in a channel direct messages chat. If the message is an approved or declined suggested post, then it can't be edited.
  @JsonKey(name: 'suggested_post_info')
  SuggestedPostInfo? get suggestedPostInfo;

  /// Optional. Service message: a suggested post was approved
  @JsonKey(name: 'suggested_post_approved')
  SuggestedPostApproved? get suggestedPostApproved;

  /// Optional. Service message: approval of a suggested post has failed
  @JsonKey(name: 'suggested_post_approval_failed')
  SuggestedPostApprovalFailed? get suggestedPostApprovalFailed;

  /// Optional. Service message: a suggested post was declined
  @JsonKey(name: 'suggested_post_declined')
  SuggestedPostDeclined? get suggestedPostDeclined;

  /// Optional. Service message: payment for a suggested post was received
  @JsonKey(name: 'suggested_post_paid')
  SuggestedPostPaid? get suggestedPostPaid;

  /// Optional. Service message: payment for a suggested post was refunded
  @JsonKey(name: 'suggested_post_refunded')
  SuggestedPostRefunded? get suggestedPostRefunded;

  /// Optional. Service message: upgrade of a gift was purchased after the gift was sent
  @JsonKey(name: 'gift_upgrade_sent')
  GiftInfo? get giftUpgradeSent;

  /// Optional. Service message: chat owner has left
  @JsonKey(name: 'chat_owner_left')
  ChatOwnerLeft? get chatOwnerLeft;

  /// Optional. Service message: chat owner has changed
  @JsonKey(name: 'chat_owner_changed')
  ChatOwnerChanged? get chatOwnerChanged;

  /// Serializes this Message to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'Message(chat: $chat, messageId: $messageId, date: $date, messageThreadId: $messageThreadId, from: $from, senderChat: $senderChat, forwardOrigin: $forwardOrigin, isTopicMessage: $isTopicMessage, isAutomaticForward: $isAutomaticForward, replyToMessage: $replyToMessage, viaBot: $viaBot, editDate: $editDate, hasProtectedContent: $hasProtectedContent, mediaGroupId: $mediaGroupId, authorSignature: $authorSignature, text: $text, entities: $entities, animation: $animation, audio: $audio, document: $document, photo: $photo, sticker: $sticker, video: $video, videoNote: $videoNote, voice: $voice, caption: $caption, captionEntities: $captionEntities, contact: $contact, dice: $dice, game: $game, poll: $poll, venue: $venue, location: $location, newChatMembers: $newChatMembers, leftChatMember: $leftChatMember, newChatTitle: $newChatTitle, newChatPhoto: $newChatPhoto, deleteChatPhoto: $deleteChatPhoto, groupChatCreated: $groupChatCreated, supergroupChatCreated: $supergroupChatCreated, channelChatCreated: $channelChatCreated, messageAutoDeleteTimerChanged: $messageAutoDeleteTimerChanged, migrateToChatId: $migrateToChatId, migrateFromChatId: $migrateFromChatId, pinnedMessage: $pinnedMessage, invoice: $invoice, successfulPayment: $successfulPayment, connectedWebsite: $connectedWebsite, passportData: $passportData, proximityAlertTriggered: $proximityAlertTriggered, forumTopicCreated: $forumTopicCreated, forumTopicClosed: $forumTopicClosed, forumTopicReopened: $forumTopicReopened, videoChatScheduled: $videoChatScheduled, videoChatStarted: $videoChatStarted, videoChatEnded: $videoChatEnded, videoChatParticipantsInvited: $videoChatParticipantsInvited, webAppData: $webAppData, replyMarkup: $replyMarkup, usersShared: $usersShared, chatShared: $chatShared, hasMediaSpoiler: $hasMediaSpoiler, forumTopicEdited: $forumTopicEdited, generalForumTopicHidden: $generalForumTopicHidden, generalForumTopicUnhidden: $generalForumTopicUnhidden, writeAccessAllowed: $writeAccessAllowed, story: $story, externalReply: $externalReply, quote: $quote, linkPreviewOptions: $linkPreviewOptions, giveaway: $giveaway, giveawayCreated: $giveawayCreated, giveawayWinners: $giveawayWinners, giveawayCompleted: $giveawayCompleted, boostAdded: $boostAdded, senderBoostCount: $senderBoostCount, replyToStory: $replyToStory, businessConnectionId: $businessConnectionId, senderBusinessBot: $senderBusinessBot, isFromOffline: $isFromOffline, chatBackgroundSet: $chatBackgroundSet, effectId: $effectId, showCaptionAboveMedia: $showCaptionAboveMedia, paidMedia: $paidMedia, refundedPayment: $refundedPayment, gift: $gift, uniqueGift: $uniqueGift, paidMessagePriceChanged: $paidMessagePriceChanged, paidStarCount: $paidStarCount, checklist: $checklist, checklistTasksDone: $checklistTasksDone, checklistTasksAdded: $checklistTasksAdded, directMessagePriceChanged: $directMessagePriceChanged, replyToChecklistTaskId: $replyToChecklistTaskId, directMessagesTopic: $directMessagesTopic, isPaidPost: $isPaidPost, suggestedPostInfo: $suggestedPostInfo, suggestedPostApproved: $suggestedPostApproved, suggestedPostApprovalFailed: $suggestedPostApprovalFailed, suggestedPostDeclined: $suggestedPostDeclined, suggestedPostPaid: $suggestedPostPaid, suggestedPostRefunded: $suggestedPostRefunded, giftUpgradeSent: $giftUpgradeSent, chatOwnerLeft: $chatOwnerLeft, chatOwnerChanged: $chatOwnerChanged)';
  }
}

/// Adds pattern-matching-related methods to [Message].
extension MessagePatterns on Message {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Message value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Message() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Message value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Message():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Message value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Message() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Message implements Message {
  const _Message({
    @JsonKey(name: "chat") required this.chat,
    @JsonKey(name: "message_id") required this.messageId,
    @JsonKey(name: "date") required this.date,
    @JsonKey(name: 'message_thread_id') this.messageThreadId,
    @JsonKey(name: 'from') this.from,
    @JsonKey(name: 'sender_chat') this.senderChat,
    @JsonKey(name: 'forward_origin') this.forwardOrigin,
    @JsonKey(name: 'is_topic_message') this.isTopicMessage,
    @JsonKey(name: 'is_automatic_forward') this.isAutomaticForward,
    @JsonKey(name: 'reply_to_message') this.replyToMessage,
    @JsonKey(name: 'via_bot') this.viaBot,
    @JsonKey(name: 'edit_date') this.editDate,
    @JsonKey(name: 'has_protected_content') this.hasProtectedContent,
    @JsonKey(name: 'media_group_id') this.mediaGroupId,
    @JsonKey(name: 'author_signature') this.authorSignature,
    @JsonKey(name: 'text') this.text,
    @JsonKey(name: 'entities') final List<MessageEntity>? entities,
    @JsonKey(name: 'animation') this.animation,
    @JsonKey(name: 'audio') this.audio,
    @JsonKey(name: 'document') this.document,
    @JsonKey(name: 'photo') final List<PhotoSize>? photo,
    @JsonKey(name: 'sticker') this.sticker,
    @JsonKey(name: 'video') this.video,
    @JsonKey(name: 'video_note') this.videoNote,
    @JsonKey(name: 'voice') this.voice,
    @JsonKey(name: 'caption') this.caption,
    @JsonKey(name: 'caption_entities')
    final List<MessageEntity>? captionEntities,
    @JsonKey(name: 'contact') this.contact,
    @JsonKey(name: 'dice') this.dice,
    @JsonKey(name: 'game') this.game,
    @JsonKey(name: 'poll') this.poll,
    @JsonKey(name: 'venue') this.venue,
    @JsonKey(name: 'location') this.location,
    @JsonKey(name: 'new_chat_members') final List<User>? newChatMembers,
    @JsonKey(name: 'left_chat_member') this.leftChatMember,
    @JsonKey(name: 'new_chat_title') this.newChatTitle,
    @JsonKey(name: 'new_chat_photo') final List<PhotoSize>? newChatPhoto,
    @JsonKey(name: 'delete_chat_photo') this.deleteChatPhoto,
    @JsonKey(name: 'group_chat_created') this.groupChatCreated,
    @JsonKey(name: 'supergroup_chat_created') this.supergroupChatCreated,
    @JsonKey(name: 'channel_chat_created') this.channelChatCreated,
    @JsonKey(name: 'message_auto_delete_timer_changed')
    this.messageAutoDeleteTimerChanged,
    @JsonKey(name: 'migrate_to_chat_id') this.migrateToChatId,
    @JsonKey(name: 'migrate_from_chat_id') this.migrateFromChatId,
    @JsonKey(name: 'pinned_message') this.pinnedMessage,
    @JsonKey(name: 'invoice') this.invoice,
    @JsonKey(name: 'successful_payment') this.successfulPayment,
    @JsonKey(name: 'connected_website') this.connectedWebsite,
    @JsonKey(name: 'passport_data') this.passportData,
    @JsonKey(name: 'proximity_alert_triggered') this.proximityAlertTriggered,
    @JsonKey(name: 'forum_topic_created') this.forumTopicCreated,
    @JsonKey(name: 'forum_topic_closed') this.forumTopicClosed,
    @JsonKey(name: 'forum_topic_reopened') this.forumTopicReopened,
    @JsonKey(name: 'video_chat_scheduled') this.videoChatScheduled,
    @JsonKey(name: 'video_chat_started') this.videoChatStarted,
    @JsonKey(name: 'video_chat_ended') this.videoChatEnded,
    @JsonKey(name: 'video_chat_participants_invited')
    this.videoChatParticipantsInvited,
    @JsonKey(name: 'web_app_data') this.webAppData,
    @JsonKey(name: 'reply_markup') this.replyMarkup,
    @JsonKey(name: 'users_shared') this.usersShared,
    @JsonKey(name: 'chat_shared') this.chatShared,
    @JsonKey(name: 'has_media_spoiler') this.hasMediaSpoiler,
    @JsonKey(name: 'forum_topic_edited') this.forumTopicEdited,
    @JsonKey(name: 'general_forum_topic_hidden') this.generalForumTopicHidden,
    @JsonKey(name: 'general_forum_topic_unhidden')
    this.generalForumTopicUnhidden,
    @JsonKey(name: 'write_access_allowed') this.writeAccessAllowed,
    @JsonKey(name: 'story') this.story,
    @JsonKey(name: 'external_reply') this.externalReply,
    @JsonKey(name: 'quote') this.quote,
    @JsonKey(name: 'link_preview_options') this.linkPreviewOptions,
    @JsonKey(name: 'giveaway') this.giveaway,
    @JsonKey(name: 'giveaway_created') this.giveawayCreated,
    @JsonKey(name: 'giveaway_winners') this.giveawayWinners,
    @JsonKey(name: 'giveaway_completed') this.giveawayCompleted,
    @JsonKey(name: 'boost_added') this.boostAdded,
    @JsonKey(name: 'sender_boost_count') this.senderBoostCount,
    @JsonKey(name: 'reply_to_story') this.replyToStory,
    @JsonKey(name: 'business_connection_id') this.businessConnectionId,
    @JsonKey(name: 'sender_business_bot') this.senderBusinessBot,
    @JsonKey(name: 'is_from_offline') this.isFromOffline,
    @JsonKey(name: 'chat_background_set') this.chatBackgroundSet,
    @JsonKey(name: 'effect_id') this.effectId,
    @JsonKey(name: 'show_caption_above_media') this.showCaptionAboveMedia,
    @JsonKey(name: 'paid_media') this.paidMedia,
    @JsonKey(name: 'refunded_payment') this.refundedPayment,
    @JsonKey(name: 'gift') this.gift,
    @JsonKey(name: 'unique_gift') this.uniqueGift,
    @JsonKey(name: 'paid_message_price_changed') this.paidMessagePriceChanged,
    @JsonKey(name: 'paid_star_count') this.paidStarCount,
    @JsonKey(name: 'checklist') this.checklist,
    @JsonKey(name: 'checklist_tasks_done') this.checklistTasksDone,
    @JsonKey(name: 'checklist_tasks_added') this.checklistTasksAdded,
    @JsonKey(name: 'direct_message_price_changed')
    this.directMessagePriceChanged,
    @JsonKey(name: 'reply_to_checklist_task_id') this.replyToChecklistTaskId,
    @JsonKey(name: 'direct_messages_topic') this.directMessagesTopic,
    @JsonKey(name: 'is_paid_post') this.isPaidPost,
    @JsonKey(name: 'suggested_post_info') this.suggestedPostInfo,
    @JsonKey(name: 'suggested_post_approved') this.suggestedPostApproved,
    @JsonKey(name: 'suggested_post_approval_failed')
    this.suggestedPostApprovalFailed,
    @JsonKey(name: 'suggested_post_declined') this.suggestedPostDeclined,
    @JsonKey(name: 'suggested_post_paid') this.suggestedPostPaid,
    @JsonKey(name: 'suggested_post_refunded') this.suggestedPostRefunded,
    @JsonKey(name: 'gift_upgrade_sent') this.giftUpgradeSent,
    @JsonKey(name: 'chat_owner_left') this.chatOwnerLeft,
    @JsonKey(name: 'chat_owner_changed') this.chatOwnerChanged,
  }) : _entities = entities,
       _photo = photo,
       _captionEntities = captionEntities,
       _newChatMembers = newChatMembers,
       _newChatPhoto = newChatPhoto;
  factory _Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  /// Chat the message belonged to
  @override
  @JsonKey(name: "chat")
  final Chat chat;

  /// Unique message identifier inside the chat
  @override
  @JsonKey(name: "message_id")
  final int messageId;

  /// Date the message was sent in Unix time. It is always a positive number,
  /// representing a valid date.
  @override
  @JsonKey(name: "date")
  final int date;

  /// Optional. Unique identifier of a message thread or forum topic to which the message belongs; for supergroups and private chats only
  @override
  @JsonKey(name: 'message_thread_id')
  final int? messageThreadId;

  /// Optional. Sender of the message; empty for messages sent to channels.
  /// For backward compatibility, the field contains a fake sender user in
  /// non-channel chats, if the message was sent on behalf of a chat.
  @override
  @JsonKey(name: 'from')
  final User? from;

  /// Optional. Sender of the message, sent on behalf of a chat. For example,
  /// the channel itself for channel posts, the supergroup itself for messages
  /// from anonymous group administrators, the linked channel for messages
  /// automatically forwarded to the discussion group. For backward
  /// compatibility, the field from contains a fake sender user in non-channel
  /// chats, if the message was sent on behalf of a chat.
  @override
  @JsonKey(name: 'sender_chat')
  final Chat? senderChat;

  /// Optional. Information about the original message for forwarded messages
  @override
  @JsonKey(name: 'forward_origin')
  final MessageOrigin? forwardOrigin;

  /// Optional. True, if the message is sent to a topic in a forum supergroup or a private chat with the bot
  @override
  @JsonKey(name: 'is_topic_message')
  final bool? isTopicMessage;

  /// Optional. True, if the message is a channel post that was automatically
  /// forwarded to the connected discussion group
  @override
  @JsonKey(name: 'is_automatic_forward')
  final bool? isAutomaticForward;

  /// Optional. For replies, the original message. Note that the Message
  /// object in this field will not contain further reply_to_message fields
  /// even if it itself is a reply.
  @override
  @JsonKey(name: 'reply_to_message')
  final Message? replyToMessage;

  /// Optional. Bot through which the message was sent
  @override
  @JsonKey(name: 'via_bot')
  final User? viaBot;

  /// Optional. Date the message was last edited in Unix time
  ///
  /// Note: Handy [DateTime] object is available in `editDateTime` getter.
  @override
  @JsonKey(name: 'edit_date')
  final int? editDate;

  /// Optional. True, if the message can't be forwarded
  @override
  @JsonKey(name: 'has_protected_content')
  final bool? hasProtectedContent;

  /// Optional. The unique identifier of a media message group this message
  /// belongs to
  @override
  @JsonKey(name: 'media_group_id')
  final String? mediaGroupId;

  /// Optional. Signature of the post author for messages in channels, or the
  /// custom title of an anonymous group administrator
  @override
  @JsonKey(name: 'author_signature')
  final String? authorSignature;

  /// Optional. For text messages, the actual UTF-8 text of the message
  @override
  @JsonKey(name: 'text')
  final String? text;

  /// Optional. For text messages, special entities like usernames, URLs, bot
  /// commands, etc. that appear in the text
  final List<MessageEntity>? _entities;

  /// Optional. For text messages, special entities like usernames, URLs, bot
  /// commands, etc. that appear in the text
  @override
  @JsonKey(name: 'entities')
  List<MessageEntity>? get entities {
    final value = _entities;
    if (value == null) return null;
    if (_entities is EqualUnmodifiableListView) return _entities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Optional. Message is an animation, information about the animation. For
  /// backward compatibility, when this field is set, the document field will
  /// also be set
  @override
  @JsonKey(name: 'animation')
  final Animation? animation;

  /// Optional. Message is an audio file, information about the file
  @override
  @JsonKey(name: 'audio')
  final Audio? audio;

  /// Optional. Message is a general file, information about the file
  @override
  @JsonKey(name: 'document')
  final Document? document;

  /// Optional. Message is a photo, available sizes of the photo
  final List<PhotoSize>? _photo;

  /// Optional. Message is a photo, available sizes of the photo
  @override
  @JsonKey(name: 'photo')
  List<PhotoSize>? get photo {
    final value = _photo;
    if (value == null) return null;
    if (_photo is EqualUnmodifiableListView) return _photo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Optional. Message is a sticker, information about the sticker
  @override
  @JsonKey(name: 'sticker')
  final Sticker? sticker;

  /// Optional. Message is a video, information about the video
  @override
  @JsonKey(name: 'video')
  final Video? video;

  /// Optional. Message is a video note, information about the video message
  @override
  @JsonKey(name: 'video_note')
  final VideoNote? videoNote;

  /// Optional. Message is a voice message, information about the file
  @override
  @JsonKey(name: 'voice')
  final Voice? voice;

  /// Optional. Caption for the animation, audio, document, photo, video or
  /// voice
  @override
  @JsonKey(name: 'caption')
  final String? caption;

  /// Optional. For messages with a caption, special entities like usernames,
  /// URLs, bot commands, etc. that appear in the caption
  final List<MessageEntity>? _captionEntities;

  /// Optional. For messages with a caption, special entities like usernames,
  /// URLs, bot commands, etc. that appear in the caption
  @override
  @JsonKey(name: 'caption_entities')
  List<MessageEntity>? get captionEntities {
    final value = _captionEntities;
    if (value == null) return null;
    if (_captionEntities is EqualUnmodifiableListView) return _captionEntities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Optional. Message is a shared contact, information about the contact
  @override
  @JsonKey(name: 'contact')
  final Contact? contact;

  /// Optional. Message is a dice with random value
  @override
  @JsonKey(name: 'dice')
  final Dice? dice;

  /// Optional. Message is a game, information about the game. More about
  /// games »
  @override
  @JsonKey(name: 'game')
  final Game? game;

  /// Optional. Message is a native poll, information about the poll
  @override
  @JsonKey(name: 'poll')
  final Poll? poll;

  /// Optional. Message is a venue, information about the venue. For backward
  /// compatibility, when this field is set, the location field will also be
  /// set
  @override
  @JsonKey(name: 'venue')
  final Venue? venue;

  /// Optional. Message is a shared location, information about the location
  @override
  @JsonKey(name: 'location')
  final Location? location;

  /// Optional. New members that were added to the group or supergroup and
  /// information about them (the bot itself may be one of these members)
  final List<User>? _newChatMembers;

  /// Optional. New members that were added to the group or supergroup and
  /// information about them (the bot itself may be one of these members)
  @override
  @JsonKey(name: 'new_chat_members')
  List<User>? get newChatMembers {
    final value = _newChatMembers;
    if (value == null) return null;
    if (_newChatMembers is EqualUnmodifiableListView) return _newChatMembers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Optional. A member was removed from the group, information about them
  /// (this member may be the bot itself)
  @override
  @JsonKey(name: 'left_chat_member')
  final User? leftChatMember;

  /// Optional. A chat title was changed to this value
  @override
  @JsonKey(name: 'new_chat_title')
  final String? newChatTitle;

  /// Optional. A chat photo was change to this value
  final List<PhotoSize>? _newChatPhoto;

  /// Optional. A chat photo was change to this value
  @override
  @JsonKey(name: 'new_chat_photo')
  List<PhotoSize>? get newChatPhoto {
    final value = _newChatPhoto;
    if (value == null) return null;
    if (_newChatPhoto is EqualUnmodifiableListView) return _newChatPhoto;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Optional. Service message: the chat photo was deleted
  @override
  @JsonKey(name: 'delete_chat_photo')
  final bool? deleteChatPhoto;

  /// Optional. Service message: the group has been created
  @override
  @JsonKey(name: 'group_chat_created')
  final bool? groupChatCreated;

  /// Optional. Service message: the supergroup has been created. This field
  /// can't be received in a message coming through updates, because bot can't
  /// be a member of a supergroup when it is created. It can only be found in
  /// reply_to_message if someone replies to a very first message in a
  /// directly created supergroup.
  @override
  @JsonKey(name: 'supergroup_chat_created')
  final bool? supergroupChatCreated;

  /// Optional. Service message: the channel has been created. This field
  /// can't be received in a message coming through updates, because bot can't
  /// be a member of a channel when it is created. It can only be found in
  /// reply_to_message if someone replies to a very first message in a
  /// channel.
  @override
  @JsonKey(name: 'channel_chat_created')
  final bool? channelChatCreated;

  /// Optional. Service message: auto-delete timer settings changed in the
  /// chat
  @override
  @JsonKey(name: 'message_auto_delete_timer_changed')
  final MessageAutoDeleteTimerChanged? messageAutoDeleteTimerChanged;

  /// Optional. The group has been migrated to a supergroup with the specified
  /// identifier. This number may have more than 32 significant bits and some
  /// programming languages may have difficulty/silent defects in interpreting
  /// it. But it has at most 52 significant bits, so a signed
  /// 64-bit integer or double-precision float type are safe for storing this
  /// identifier.
  @override
  @JsonKey(name: 'migrate_to_chat_id')
  final int? migrateToChatId;

  /// Optional. The supergroup has been migrated from a group with the
  /// specified identifier. This number may have more than 32 significant bits
  /// and some programming languages may have difficulty/silent defects in
  /// interpreting it. But it has at most 52 significant bits, so a signed
  /// 64-bit integer or double-precision float type are safe for storing this
  /// identifier.
  @override
  @JsonKey(name: 'migrate_from_chat_id')
  final int? migrateFromChatId;

  /// Optional. Specified message was pinned. Note that the Message object in
  /// this field will not contain further reply_to_message fields even if it
  /// is itself a reply.
  @override
  @JsonKey(name: 'pinned_message')
  final Message? pinnedMessage;

  /// Optional. Message is an invoice for a payment, information about the
  /// invoice. More about payments »
  @override
  @JsonKey(name: 'invoice')
  final Invoice? invoice;

  /// Optional. Message is a service message about a successful payment,
  /// information about the payment. More about payments »
  @override
  @JsonKey(name: 'successful_payment')
  final SuccessfulPayment? successfulPayment;

  /// Optional. The domain name of the website on which the user has logged
  /// in. More about Telegram Login »
  @override
  @JsonKey(name: 'connected_website')
  final String? connectedWebsite;

  /// Optional. Telegram Passport data
  @override
  @JsonKey(name: 'passport_data')
  final PassportData? passportData;

  /// Optional. Service message. A user in the chat triggered another user's
  /// proximity alert while sharing Live Location.
  @override
  @JsonKey(name: 'proximity_alert_triggered')
  final ProximityAlertTriggered? proximityAlertTriggered;

  /// Optional. Service message: forum topic created
  @override
  @JsonKey(name: 'forum_topic_created')
  final ForumTopicCreated? forumTopicCreated;

  /// Optional. Service message: forum topic closed
  @override
  @JsonKey(name: 'forum_topic_closed')
  final ForumTopicClosed? forumTopicClosed;

  /// Optional. Service message: forum topic reopened
  @override
  @JsonKey(name: 'forum_topic_reopened')
  final ForumTopicReopened? forumTopicReopened;

  /// Optional. Service message: video chat scheduled
  @override
  @JsonKey(name: 'video_chat_scheduled')
  final VideoChatScheduled? videoChatScheduled;

  /// Optional. Service message: video chat started
  @override
  @JsonKey(name: 'video_chat_started')
  final VideoChatStarted? videoChatStarted;

  /// Optional. Service message: video chat ended
  @override
  @JsonKey(name: 'video_chat_ended')
  final VideoChatEnded? videoChatEnded;

  /// Optional. Service message: new participants invited to a video chat
  @override
  @JsonKey(name: 'video_chat_participants_invited')
  final VideoChatParticipantsInvited? videoChatParticipantsInvited;

  /// Optional. Service message: data sent by a Web App
  @override
  @JsonKey(name: 'web_app_data')
  final WebAppData? webAppData;

  /// Optional. Inline keyboard attached to the message. login_url buttons are
  /// represented as ordinary url buttons.
  @override
  @JsonKey(name: 'reply_markup')
  final InlineKeyboardMarkup? replyMarkup;

  /// Optional. Service message: a user was shared with the bot
  @override
  @JsonKey(name: 'users_shared')
  final UsersShared? usersShared;

  /// Optional. Service message: a chat was shared with the bot
  @override
  @JsonKey(name: 'chat_shared')
  final ChatShared? chatShared;

  /// Optional. True, if the message media is covered by a spoiler animation
  @override
  @JsonKey(name: 'has_media_spoiler')
  final bool? hasMediaSpoiler;

  /// Optional. Service message: forum topic edited
  @override
  @JsonKey(name: 'forum_topic_edited')
  final ForumTopicEdited? forumTopicEdited;

  /// Optional. Service message: the 'General' forum topic hidden
  @override
  @JsonKey(name: 'general_forum_topic_hidden')
  final GeneralForumTopicHidden? generalForumTopicHidden;

  /// Optional. Service message: the 'General' forum topic unhidden
  @override
  @JsonKey(name: 'general_forum_topic_unhidden')
  final GeneralForumTopicUnhidden? generalForumTopicUnhidden;

  /// Optional. Service message: the user allowed the bot added to the
  /// attachment menu to write messages
  @override
  @JsonKey(name: 'write_access_allowed')
  final WriteAccessAllowed? writeAccessAllowed;

  /// Optional. Message is a forwarded story
  @override
  @JsonKey(name: 'story')
  final Story? story;

  /// Optional. Information about the message that is being replied to, which
  /// may come from another chat or forum topic
  @override
  @JsonKey(name: 'external_reply')
  final ExternalReplyInfo? externalReply;

  /// Optional. For replies that quote part of the original message, the
  /// quoted part of the message
  @override
  @JsonKey(name: 'quote')
  final TextQuote? quote;

  /// Optional. Options used for link preview generation for the message, if
  /// it is a text message and link preview options were changed
  @override
  @JsonKey(name: 'link_preview_options')
  final LinkPreviewOptions? linkPreviewOptions;

  /// Optional. The message is a scheduled giveaway message
  @override
  @JsonKey(name: 'giveaway')
  final Giveaway? giveaway;

  /// Optional. Service message: a scheduled giveaway was created
  @override
  @JsonKey(name: 'giveaway_created')
  final GiveawayCreated? giveawayCreated;

  /// Optional. A giveaway with public winners was completed
  @override
  @JsonKey(name: 'giveaway_winners')
  final GiveawayWinners? giveawayWinners;

  /// Optional. Service message: a giveaway without public winners was
  /// completed
  @override
  @JsonKey(name: 'giveaway_completed')
  final GiveawayCompleted? giveawayCompleted;

  /// Optional. Service message: user boosted the chat
  @override
  @JsonKey(name: 'boost_added')
  final ChatBoostAdded? boostAdded;

  /// Optional. If the sender of the message boosted the chat, the number of
  /// boosts added by the user
  @override
  @JsonKey(name: 'sender_boost_count')
  final int? senderBoostCount;

  /// Optional. For replies to a story, the original story
  @override
  @JsonKey(name: 'reply_to_story')
  final Story? replyToStory;

  /// Optional. Unique identifier of the business connection from which the
  /// message was received. If non-empty, the message belongs to a chat of the
  /// corresponding business account that is independent from any potential
  /// bot chat which might share the same identifier.
  @override
  @JsonKey(name: 'business_connection_id')
  final String? businessConnectionId;

  /// Optional. The bot that actually sent the message on behalf of the
  /// business account. Available only for outgoing messages sent on behalf of
  /// the connected business account.
  @override
  @JsonKey(name: 'sender_business_bot')
  final User? senderBusinessBot;

  /// Optional. True, if the message was sent by an implicit action, for
  /// example, as an away or a greeting business message, or as a scheduled
  /// message
  @override
  @JsonKey(name: 'is_from_offline')
  final bool? isFromOffline;

  /// Optional. Service message: chat background set
  @override
  @JsonKey(name: 'chat_background_set')
  final ChatBackground? chatBackgroundSet;

  /// Optional. Unique identifier of the message effect added to the message
  @override
  @JsonKey(name: 'effect_id')
  final String? effectId;

  /// Optional. True, if the caption must be shown above the message media
  @override
  @JsonKey(name: 'show_caption_above_media')
  final bool? showCaptionAboveMedia;

  /// Optional. Message contains paid media; information about the paid media
  @override
  @JsonKey(name: 'paid_media')
  final PaidMediaInfo? paidMedia;

  /// Optional. Message is a service message about a refunded payment,
  /// information about the payment. More about payments »
  @override
  @JsonKey(name: 'refunded_payment')
  final RefundedPayment? refundedPayment;

  /// Optional. Service message: a regular gift was sent or received
  @override
  @JsonKey(name: 'gift')
  final GiftInfo? gift;

  /// Optional. Service message: a unique gift was sent or received
  @override
  @JsonKey(name: 'unique_gift')
  final UniqueGiftInfo? uniqueGift;

  /// Optional. Service message: the price for paid messages has changed in the chat
  @override
  @JsonKey(name: 'paid_message_price_changed')
  final PaidMessagePriceChanged? paidMessagePriceChanged;

  /// Optional. The number of Telegram Stars that were paid by the sender of the message to send it
  @override
  @JsonKey(name: 'paid_star_count')
  final int? paidStarCount;

  /// Optional. Message is a checklist
  @override
  @JsonKey(name: 'checklist')
  final Checklist? checklist;

  /// Optional. Service message: some tasks in a checklist were marked as done or not done
  @override
  @JsonKey(name: 'checklist_tasks_done')
  final ChecklistTasksDone? checklistTasksDone;

  /// Optional. Service message: tasks were added to a checklist
  @override
  @JsonKey(name: 'checklist_tasks_added')
  final ChecklistTasksAdded? checklistTasksAdded;

  /// Optional. Service message: the price for paid messages in the corresponding direct messages chat of a channel has changed
  @override
  @JsonKey(name: 'direct_message_price_changed')
  final DirectMessagePriceChanged? directMessagePriceChanged;

  /// Optional. Identifier of the specific checklist task that is being replied to
  @override
  @JsonKey(name: 'reply_to_checklist_task_id')
  final int? replyToChecklistTaskId;

  /// Optional. Information about the direct messages chat topic that contains the message
  @override
  @JsonKey(name: 'direct_messages_topic')
  final DirectMessagesTopic? directMessagesTopic;

  /// Optional. True, if the message is a paid post. Note that such posts must not be deleted for 24 hours to receive the payment and can't be edited.
  @override
  @JsonKey(name: 'is_paid_post')
  final bool? isPaidPost;

  /// Optional. Information about suggested post parameters if the message is a suggested post in a channel direct messages chat. If the message is an approved or declined suggested post, then it can't be edited.
  @override
  @JsonKey(name: 'suggested_post_info')
  final SuggestedPostInfo? suggestedPostInfo;

  /// Optional. Service message: a suggested post was approved
  @override
  @JsonKey(name: 'suggested_post_approved')
  final SuggestedPostApproved? suggestedPostApproved;

  /// Optional. Service message: approval of a suggested post has failed
  @override
  @JsonKey(name: 'suggested_post_approval_failed')
  final SuggestedPostApprovalFailed? suggestedPostApprovalFailed;

  /// Optional. Service message: a suggested post was declined
  @override
  @JsonKey(name: 'suggested_post_declined')
  final SuggestedPostDeclined? suggestedPostDeclined;

  /// Optional. Service message: payment for a suggested post was received
  @override
  @JsonKey(name: 'suggested_post_paid')
  final SuggestedPostPaid? suggestedPostPaid;

  /// Optional. Service message: payment for a suggested post was refunded
  @override
  @JsonKey(name: 'suggested_post_refunded')
  final SuggestedPostRefunded? suggestedPostRefunded;

  /// Optional. Service message: upgrade of a gift was purchased after the gift was sent
  @override
  @JsonKey(name: 'gift_upgrade_sent')
  final GiftInfo? giftUpgradeSent;

  /// Optional. Service message: chat owner has left
  @override
  @JsonKey(name: 'chat_owner_left')
  final ChatOwnerLeft? chatOwnerLeft;

  /// Optional. Service message: chat owner has changed
  @override
  @JsonKey(name: 'chat_owner_changed')
  final ChatOwnerChanged? chatOwnerChanged;

  @override
  Map<String, dynamic> toJson() {
    return _$MessageToJson(this);
  }

  @override
  String toString() {
    return 'Message(chat: $chat, messageId: $messageId, date: $date, messageThreadId: $messageThreadId, from: $from, senderChat: $senderChat, forwardOrigin: $forwardOrigin, isTopicMessage: $isTopicMessage, isAutomaticForward: $isAutomaticForward, replyToMessage: $replyToMessage, viaBot: $viaBot, editDate: $editDate, hasProtectedContent: $hasProtectedContent, mediaGroupId: $mediaGroupId, authorSignature: $authorSignature, text: $text, entities: $entities, animation: $animation, audio: $audio, document: $document, photo: $photo, sticker: $sticker, video: $video, videoNote: $videoNote, voice: $voice, caption: $caption, captionEntities: $captionEntities, contact: $contact, dice: $dice, game: $game, poll: $poll, venue: $venue, location: $location, newChatMembers: $newChatMembers, leftChatMember: $leftChatMember, newChatTitle: $newChatTitle, newChatPhoto: $newChatPhoto, deleteChatPhoto: $deleteChatPhoto, groupChatCreated: $groupChatCreated, supergroupChatCreated: $supergroupChatCreated, channelChatCreated: $channelChatCreated, messageAutoDeleteTimerChanged: $messageAutoDeleteTimerChanged, migrateToChatId: $migrateToChatId, migrateFromChatId: $migrateFromChatId, pinnedMessage: $pinnedMessage, invoice: $invoice, successfulPayment: $successfulPayment, connectedWebsite: $connectedWebsite, passportData: $passportData, proximityAlertTriggered: $proximityAlertTriggered, forumTopicCreated: $forumTopicCreated, forumTopicClosed: $forumTopicClosed, forumTopicReopened: $forumTopicReopened, videoChatScheduled: $videoChatScheduled, videoChatStarted: $videoChatStarted, videoChatEnded: $videoChatEnded, videoChatParticipantsInvited: $videoChatParticipantsInvited, webAppData: $webAppData, replyMarkup: $replyMarkup, usersShared: $usersShared, chatShared: $chatShared, hasMediaSpoiler: $hasMediaSpoiler, forumTopicEdited: $forumTopicEdited, generalForumTopicHidden: $generalForumTopicHidden, generalForumTopicUnhidden: $generalForumTopicUnhidden, writeAccessAllowed: $writeAccessAllowed, story: $story, externalReply: $externalReply, quote: $quote, linkPreviewOptions: $linkPreviewOptions, giveaway: $giveaway, giveawayCreated: $giveawayCreated, giveawayWinners: $giveawayWinners, giveawayCompleted: $giveawayCompleted, boostAdded: $boostAdded, senderBoostCount: $senderBoostCount, replyToStory: $replyToStory, businessConnectionId: $businessConnectionId, senderBusinessBot: $senderBusinessBot, isFromOffline: $isFromOffline, chatBackgroundSet: $chatBackgroundSet, effectId: $effectId, showCaptionAboveMedia: $showCaptionAboveMedia, paidMedia: $paidMedia, refundedPayment: $refundedPayment, gift: $gift, uniqueGift: $uniqueGift, paidMessagePriceChanged: $paidMessagePriceChanged, paidStarCount: $paidStarCount, checklist: $checklist, checklistTasksDone: $checklistTasksDone, checklistTasksAdded: $checklistTasksAdded, directMessagePriceChanged: $directMessagePriceChanged, replyToChecklistTaskId: $replyToChecklistTaskId, directMessagesTopic: $directMessagesTopic, isPaidPost: $isPaidPost, suggestedPostInfo: $suggestedPostInfo, suggestedPostApproved: $suggestedPostApproved, suggestedPostApprovalFailed: $suggestedPostApprovalFailed, suggestedPostDeclined: $suggestedPostDeclined, suggestedPostPaid: $suggestedPostPaid, suggestedPostRefunded: $suggestedPostRefunded, giftUpgradeSent: $giftUpgradeSent, chatOwnerLeft: $chatOwnerLeft, chatOwnerChanged: $chatOwnerChanged)';
  }
}
