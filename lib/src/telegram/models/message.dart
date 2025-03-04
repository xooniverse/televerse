import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/abstractions.dart';
import 'package:televerse/src/telegram/models/animation.dart';
import 'package:televerse/src/telegram/models/audio.dart';
import 'package:televerse/src/telegram/models/chat.dart';
import 'package:televerse/src/telegram/models/chat_background.dart';
import 'package:televerse/src/telegram/models/chat_boost_added.dart';
import 'package:televerse/src/telegram/models/chat_shared.dart';
import 'package:televerse/src/telegram/models/contact.dart';
import 'package:televerse/src/telegram/models/dice.dart';
import 'package:televerse/src/telegram/models/document.dart';
import 'package:televerse/src/telegram/models/external_reply_info.dart';
import 'package:televerse/src/telegram/models/forum_topic_closed.dart';
import 'package:televerse/src/telegram/models/forum_topic_created.dart';
import 'package:televerse/src/telegram/models/forum_topic_edited.dart';
import 'package:televerse/src/telegram/models/forum_topic_reopened.dart';
import 'package:televerse/src/telegram/models/game.dart';
import 'package:televerse/src/telegram/models/general_forum_topic_hidden.dart';
import 'package:televerse/src/telegram/models/general_forum_topic_unhidden.dart';
import 'package:televerse/src/telegram/models/giveaway.dart';
import 'package:televerse/src/telegram/models/giveaway_completed.dart';
import 'package:televerse/src/telegram/models/giveaway_created.dart';
import 'package:televerse/src/telegram/models/giveaway_winners.dart';
import 'package:televerse/src/telegram/models/invoice.dart';
import 'package:televerse/src/telegram/models/link_preview_options.dart';
import 'package:televerse/src/telegram/models/location.dart';
import 'package:televerse/src/telegram/models/message_auto_delete_timer_changed.dart';
import 'package:televerse/src/telegram/models/message_entity.dart';
import 'package:televerse/src/telegram/models/message_origin.dart';
import 'package:televerse/src/telegram/models/paid_media_info.dart';
import 'package:televerse/src/telegram/models/passport_data.dart';
import 'package:televerse/src/telegram/models/photo_size.dart';
import 'package:televerse/src/telegram/models/poll.dart';
import 'package:televerse/src/telegram/models/proximity_alert_triggered.dart';
import 'package:televerse/src/telegram/models/refunded_payment.dart';
import 'package:televerse/src/telegram/models/reply_markup.dart';
import 'package:televerse/src/telegram/models/sticker.dart';
import 'package:televerse/src/telegram/models/story.dart';
import 'package:televerse/src/telegram/models/successful_payment.dart';
import 'package:televerse/src/telegram/models/text_quote.dart';
import 'package:televerse/src/telegram/models/user.dart';
import 'package:televerse/src/telegram/models/users_shared.dart';
import 'package:televerse/src/telegram/models/venue.dart';
import 'package:televerse/src/telegram/models/video.dart';
import 'package:televerse/src/telegram/models/video_chat_ended.dart';
import 'package:televerse/src/telegram/models/video_chat_participants_invited.dart';
import 'package:televerse/src/telegram/models/video_chat_scheduled.dart';
import 'package:televerse/src/telegram/models/video_chat_started.dart';
import 'package:televerse/src/telegram/models/video_note.dart';
import 'package:televerse/src/telegram/models/voice.dart';
import 'package:televerse/src/telegram/models/web_app_data.dart';
import 'package:televerse/src/telegram/models/write_access_allowed.dart';
import 'package:televerse/televerse.dart';

part 'message.freezed.dart';
part 'message.g.dart';

/// This object describes a message that can be inaccessible to the bot. It can
/// be one of
/// - [Message]
/// - [InaccessibleMessage]
sealed class MaybeInaccessibleMessage implements WithChat {
  /// Chat the message belonged to
  @override
  Chat get chat;

  /// Unique message identifier inside the chat
  int get messageId;

  /// Date the message was sent in Unix time. It is always a positive number,
  /// representing a valid date.
  int get date;

  /// Constructor from JSON data
  factory MaybeInaccessibleMessage.fromJson(Map<String, Object?> json) {
    // For inaccessible messages, date will be 0.
    final isInaccessible = json["date"] == 0;
    if (isInaccessible) {
      return InaccessibleMessage.fromJson(json);
    }
    return Message.fromJson(json);
  }

  /// Converts the object into JSON map
  Map<String, Object?> toJson() {
    return switch (this) {
      Message() => (this as Message).toJson(),
      InaccessibleMessage() => (this as InaccessibleMessage).toJson(),
    };
  }
}

/// This object describes a message that was deleted or is otherwise
/// inaccessible to the bot.
@Freezed(copyWith: false)
class InaccessibleMessage
    with _$InaccessibleMessage
    implements MaybeInaccessibleMessage {
  /// Creates [InaccessibleMessage] instance
  const factory InaccessibleMessage({
    /// Chat to which the message belongs
    required Chat chat,

    /// Unique message identifier
    @JsonKey(name: 'message_id') required int messageId,

    /// Date the message was sent in Unix time
    @Default(0) int date,
  }) = _InaccessibleMessage;

  /// Constructor from JSON data
  factory InaccessibleMessage.fromJson(Map<String, dynamic> json) =>
      _$InaccessibleMessageFromJson(json);
}

/// This object represents a message.
@Freezed(copyWith: false)
class Message with _$Message implements MaybeInaccessibleMessage, WithUser {
  /// Creates a Message object.
  const factory Message({
    /// Chat the message belonged to
    @JsonKey(name: "chat") required Chat chat,

    /// Unique message identifier inside the chat
    @JsonKey(name: "message_id") required int messageId,

    /// Date the message was sent in Unix time. It is always a positive number,
    /// representing a valid date.
    @JsonKey(name: "date") required int date,

    /// Optional. Unique identifier of a message thread to which the message
    /// belongs; for supergroups only
    @JsonKey(name: 'message_thread_id') int? messageThreadId,

    /// Optional. Sender of the message; empty for messages sent to channels.
    /// For backward compatibility, the field contains a fake sender user in
    /// non-channel chats, if the message was sent on behalf of a chat.
    @JsonKey(name: 'from') User? from,

    /// Optional. Sender of the message, sent on behalf of a chat. For example,
    /// the channel itself for channel posts, the supergroup itself for messages
    /// from anonymous group administrators, the linked channel for messages
    /// automatically forwarded to the discussion group. For backward
    /// compatibility, the field from contains a fake sender user in non-channel
    /// chats, if the message was sent on behalf of a chat.
    @JsonKey(name: 'sender_chat') Chat? senderChat,

    /// Optional. Information about the original message for forwarded messages
    @JsonKey(name: 'forward_origin') MessageOrigin? forwardOrigin,

    /// Optional. True, if the message is sent to a forum topic
    @JsonKey(name: 'is_topic_message') bool? isTopicMessage,

    /// Optional. True, if the message is a channel post that was automatically
    /// forwarded to the connected discussion group
    @JsonKey(name: 'is_automatic_forward') bool? isAutomaticForward,

    /// Optional. For replies, the original message. Note that the Message
    /// object in this field will not contain further reply_to_message fields
    /// even if it itself is a reply.
    @JsonKey(name: 'reply_to_message') Message? replyToMessage,

    /// Optional. Bot through which the message was sent
    @JsonKey(name: 'via_bot') User? viaBot,

    /// Optional. Date the message was last edited in Unix time
    ///
    /// Note: Handy [DateTime] object is available in `editDateTime` getter.
    @JsonKey(name: 'edit_date') int? editDate,

    /// Optional. True, if the message can't be forwarded
    @JsonKey(name: 'has_protected_content') bool? hasProtectedContent,

    /// Optional. The unique identifier of a media message group this message
    /// belongs to
    @JsonKey(name: 'media_group_id') String? mediaGroupId,

    /// Optional. Signature of the post author for messages in channels, or the
    /// custom title of an anonymous group administrator
    @JsonKey(name: 'author_signature') String? authorSignature,

    /// Optional. For text messages, the actual UTF-8 text of the message
    @JsonKey(name: 'text') String? text,

    /// Optional. For text messages, special entities like usernames, URLs, bot
    /// commands, etc. that appear in the text
    @JsonKey(name: 'entities') List<MessageEntity>? entities,

    /// Optional. Message is an animation, information about the animation. For
    /// backward compatibility, when this field is set, the document field will
    /// also be set
    @JsonKey(name: 'animation') Animation? animation,

    /// Optional. Message is an audio file, information about the file
    @JsonKey(name: 'audio') Audio? audio,

    /// Optional. Message is a general file, information about the file
    @JsonKey(name: 'document') Document? document,

    /// Optional. Message is a photo, available sizes of the photo
    @JsonKey(name: 'photo') List<PhotoSize>? photo,

    /// Optional. Message is a sticker, information about the sticker
    @JsonKey(name: 'sticker') Sticker? sticker,

    /// Optional. Message is a video, information about the video
    @JsonKey(name: 'video') Video? video,

    /// Optional. Message is a video note, information about the video message
    @JsonKey(name: 'video_note') VideoNote? videoNote,

    /// Optional. Message is a voice message, information about the file
    @JsonKey(name: 'voice') Voice? voice,

    /// Optional. Caption for the animation, audio, document, photo, video or
    /// voice
    @JsonKey(name: 'caption') String? caption,

    /// Optional. For messages with a caption, special entities like usernames,
    /// URLs, bot commands, etc. that appear in the caption
    @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,

    /// Optional. Message is a shared contact, information about the contact
    @JsonKey(name: 'contact') Contact? contact,

    /// Optional. Message is a dice with random value
    @JsonKey(name: 'dice') Dice? dice,

    /// Optional. Message is a game, information about the game. More about
    /// games »
    @JsonKey(name: 'game') Game? game,

    /// Optional. Message is a native poll, information about the poll
    @JsonKey(name: 'poll') Poll? poll,

    /// Optional. Message is a venue, information about the venue. For backward
    /// compatibility, when this field is set, the location field will also be
    /// set
    @JsonKey(name: 'venue') Venue? venue,

    /// Optional. Message is a shared location, information about the location
    @JsonKey(name: 'location') Location? location,

    /// Optional. New members that were added to the group or supergroup and
    /// information about them (the bot itself may be one of these members)
    @JsonKey(name: 'new_chat_members') List<User>? newChatMembers,

    /// Optional. A member was removed from the group, information about them
    /// (this member may be the bot itself)
    @JsonKey(name: 'left_chat_member') User? leftChatMember,

    /// Optional. A chat title was changed to this value
    @JsonKey(name: 'new_chat_title') String? newChatTitle,

    /// Optional. A chat photo was change to this value
    @JsonKey(name: 'new_chat_photo') List<PhotoSize>? newChatPhoto,

    /// Optional. Service message: the chat photo was deleted
    @JsonKey(name: 'delete_chat_photo') bool? deleteChatPhoto,

    /// Optional. Service message: the group has been created
    @JsonKey(name: 'group_chat_created') bool? groupChatCreated,

    /// Optional. Service message: the supergroup has been created. This field
    /// can't be received in a message coming through updates, because bot can't
    /// be a member of a supergroup when it is created. It can only be found in
    /// reply_to_message if someone replies to a very first message in a
    /// directly created supergroup.
    @JsonKey(name: 'supergroup_chat_created') bool? supergroupChatCreated,

    /// Optional. Service message: the channel has been created. This field
    /// can't be received in a message coming through updates, because bot can't
    /// be a member of a channel when it is created. It can only be found in
    /// reply_to_message if someone replies to a very first message in a
    /// channel.
    @JsonKey(name: 'channel_chat_created') bool? channelChatCreated,

    /// Optional. Service message: auto-delete timer settings changed in the
    /// chat
    @JsonKey(name: 'message_auto_delete_timer_changed')
    MessageAutoDeleteTimerChanged? messageAutoDeleteTimerChanged,

    /// Optional. The group has been migrated to a supergroup with the specified
    /// identifier. This number may have more than 32 significant bits and some
    /// programming languages may have difficulty/silent defects in interpreting
    /// it. But it has at most 52 significant bits, so a signed
    /// 64-bit integer or double-precision float type are safe for storing this
    /// identifier.
    @JsonKey(name: 'migrate_to_chat_id') int? migrateToChatId,

    /// Optional. The supergroup has been migrated from a group with the
    /// specified identifier. This number may have more than 32 significant bits
    /// and some programming languages may have difficulty/silent defects in
    /// interpreting it. But it has at most 52 significant bits, so a signed
    /// 64-bit integer or double-precision float type are safe for storing this
    /// identifier.
    @JsonKey(name: 'migrate_from_chat_id') int? migrateFromChatId,

    /// Optional. Specified message was pinned. Note that the Message object in
    /// this field will not contain further reply_to_message fields even if it
    /// is itself a reply.
    @JsonKey(name: 'pinned_message') Message? pinnedMessage,

    /// Optional. Message is an invoice for a payment, information about the
    /// invoice. More about payments »
    @JsonKey(name: 'invoice') Invoice? invoice,

    /// Optional. Message is a service message about a successful payment,
    /// information about the payment. More about payments »
    @JsonKey(name: 'successful_payment') SuccessfulPayment? successfulPayment,

    /// Optional. The domain name of the website on which the user has logged
    /// in. More about Telegram Login »
    @JsonKey(name: 'connected_website') String? connectedWebsite,

    /// Optional. Telegram Passport data
    @JsonKey(name: 'passport_data') PassportData? passportData,

    /// Optional. Service message. A user in the chat triggered another user's
    /// proximity alert while sharing Live Location.
    @JsonKey(name: 'proximity_alert_triggered')
    ProximityAlertTriggered? proximityAlertTriggered,

    /// Optional. Service message: forum topic created
    @JsonKey(name: 'forum_topic_created') ForumTopicCreated? forumTopicCreated,

    /// Optional. Service message: forum topic closed
    @JsonKey(name: 'forum_topic_closed') ForumTopicClosed? forumTopicClosed,

    /// Optional. Service message: forum topic reopened
    @JsonKey(name: 'forum_topic_reopened')
    ForumTopicReopened? forumTopicReopened,

    /// Optional. Service message: video chat scheduled
    @JsonKey(name: 'video_chat_scheduled')
    VideoChatScheduled? videoChatScheduled,

    /// Optional. Service message: video chat started
    @JsonKey(name: 'video_chat_started') VideoChatStarted? videoChatStarted,

    /// Optional. Service message: video chat ended
    @JsonKey(name: 'video_chat_ended') VideoChatEnded? videoChatEnded,

    /// Optional. Service message: new participants invited to a video chat
    @JsonKey(name: 'video_chat_participants_invited')
    VideoChatParticipantsInvited? videoChatParticipantsInvited,

    /// Optional. Service message: data sent by a Web App
    @JsonKey(name: 'web_app_data') WebAppData? webAppData,

    /// Optional. Inline keyboard attached to the message. login_url buttons are
    /// represented as ordinary url buttons.
    @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,

    /// Optional. Service message: a user was shared with the bot
    @JsonKey(name: 'users_shared') UsersShared? usersShared,

    /// Optional. Service message: a chat was shared with the bot
    @JsonKey(name: 'chat_shared') ChatShared? chatShared,

    /// Optional. True, if the message media is covered by a spoiler animation
    @JsonKey(name: 'has_media_spoiler') bool? hasMediaSpoiler,

    /// Optional. Service message: forum topic edited
    @JsonKey(name: 'forum_topic_edited') ForumTopicEdited? forumTopicEdited,

    /// Optional. Service message: the 'General' forum topic hidden
    @JsonKey(name: 'general_forum_topic_hidden')
    GeneralForumTopicHidden? generalForumTopicHidden,

    /// Optional. Service message: the 'General' forum topic unhidden
    @JsonKey(name: 'general_forum_topic_unhidden')
    GeneralForumTopicUnhidden? generalForumTopicUnhidden,

    /// Optional. Service message: the user allowed the bot added to the
    /// attachment menu to write messages
    @JsonKey(name: 'write_access_allowed')
    WriteAccessAllowed? writeAccessAllowed,

    /// Optional. Message is a forwarded story
    @JsonKey(name: 'story') Story? story,

    /// Optional. Information about the message that is being replied to, which
    /// may come from another chat or forum topic
    @JsonKey(name: 'external_reply') ExternalReplyInfo? externalReply,

    /// Optional. For replies that quote part of the original message, the
    /// quoted part of the message
    @JsonKey(name: 'quote') TextQuote? quote,

    /// Optional. Options used for link preview generation for the message, if
    /// it is a text message and link preview options were changed
    @JsonKey(name: 'link_preview_options')
    LinkPreviewOptions? linkPreviewOptions,

    /// Optional. The message is a scheduled giveaway message
    @JsonKey(name: 'giveaway') Giveaway? giveaway,

    /// Optional. Service message: a scheduled giveaway was created
    @JsonKey(name: 'giveaway_created') GiveawayCreated? giveawayCreated,

    /// Optional. A giveaway with public winners was completed
    @JsonKey(name: 'giveaway_winners') GiveawayWinners? giveawayWinners,

    /// Optional. Service message: a giveaway without public winners was
    /// completed
    @JsonKey(name: 'giveaway_completed') GiveawayCompleted? giveawayCompleted,

    /// Optional. Service message: user boosted the chat
    @JsonKey(name: 'boost_added') ChatBoostAdded? boostAdded,

    /// Optional. If the sender of the message boosted the chat, the number of
    /// boosts added by the user
    @JsonKey(name: 'sender_boost_count') int? senderBoostCount,

    /// Optional. For replies to a story, the original story
    @JsonKey(name: 'reply_to_story') Story? replyToStory,

    /// Optional. Unique identifier of the business connection from which the
    /// message was received. If non-empty, the message belongs to a chat of the
    /// corresponding business account that is independent from any potential
    /// bot chat which might share the same identifier.
    @JsonKey(name: 'business_connection_id') String? businessConnectionId,

    /// Optional. The bot that actually sent the message on behalf of the
    /// business account. Available only for outgoing messages sent on behalf of
    /// the connected business account.
    @JsonKey(name: 'sender_business_bot') User? senderBusinessBot,

    /// Optional. True, if the message was sent by an implicit action, for
    /// example, as an away or a greeting business message, or as a scheduled
    /// message
    @JsonKey(name: 'is_from_offline') bool? isFromOffline,

    /// Optional. Service message: chat background set
    @JsonKey(name: 'chat_background_set') ChatBackground? chatBackgroundSet,

    /// Optional. Unique identifier of the message effect added to the message
    @JsonKey(name: 'effect_id') String? effectId,

    /// Optional. True, if the caption must be shown above the message media
    @JsonKey(name: 'show_caption_above_media') bool? showCaptionAboveMedia,

    /// Optional. Message contains paid media; information about the paid media
    @JsonKey(name: 'paid_media') PaidMediaInfo? paidMedia,

    /// Optional. Message is a service message about a refunded payment,
    /// information about the payment. More about payments »
    @JsonKey(name: 'refunded_payment') RefundedPayment? refundedPayment,
  }) = _Message;

  /// Creates a [Message] object from JSON object
  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}

/// Extension to add overrides for MaybeInaccessibleMessage interface
extension MessageExt on Message {
  /// Whether the message is accessible
  bool get isAccessible => true;

  /// Whether the message is inaccessible
  bool get isInaccessible => false;

  /// The DateTime representation from [date]
  DateTime get editDateTime => date.toDateTime();
}
