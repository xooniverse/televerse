part of '../../../televerse.dart';

/// Exposes all the properties of Update into Context
extension ContextUpdateMerger on Context {
  /// This is a shorthand getter for the [Message] recieved in the current context
  ///
  /// This can either be `Message` or `Channel Post` or `Edited Message` or `Edited Channel Post` or `Callback Query Message`.
  Message? get msg => update.msg;

  /// The incoming message.
  Message? get message => update.message;

  /// The edited message.
  Message? get editedMessage => update.editedMessage;

  /// The channel post.
  Message? get channelPost => update.channelPost;

  /// The edited channel post.
  Message? get editedChannelPost => update.editedChannelPost;

  /// The callback query of the update.
  CallbackQuery? get callbackQuery => update.callbackQuery;

  /// The incoming inline query.
  InlineQuery? get inlineQuery => update.inlineQuery;

  /// The [ChosenInlineResult] instance.
  ChosenInlineResult? get chosenInlineResult => update.chosenInlineResult;

  /// The chat boost that was removed.
  ChatBoostRemoved? get chatBoostRemoved => update.removedChatBoost;

  /// The chat boost that was updated.
  ChatBoostUpdated? get chatBoost => update.chatBoost;

  /// The [ChatJoinRequest] instance.
  ChatJoinRequest? get chatJoinRequest => update.chatJoinRequest;

  /// Shorthand getter for the [ChatMemberUpdated] instance.
  ///
  /// This can either be `chatMemberUpdated` or `myChatMemberUpdated`.
  ChatMemberUpdated? get chatMemberUpdated =>
      update.chatMember ?? update.myChatMember;

  /// The Chat Member Updated instance of ChatMember
  ChatMemberUpdated? get chatMember => update.chatMember;

  /// The Chat Member Updated instance of MyChatMember
  ChatMemberUpdated? get myChatMember => update.myChatMember;

  /// The [MessageReactionCountUpdated] object.
  MessageReactionCountUpdated? get messageReactionCount =>
      update.messageReactionCount;

  /// The [MessageReactionUpdated] object.
  MessageReactionUpdated? get messageReaction => update.messageReaction;

  /// The [PollAnswer] instance.
  PollAnswer? get pollAnswer => update.pollAnswer;

  /// Removed chat boost instance
  ChatBoostRemoved? get removedChatBoost => update.removedChatBoost;

  /// The [Poll] instance.
  Poll? get poll => update.poll;

  /// The [PreCheckoutQuery] instance.
  ///
  /// This represents the pre-checkout query for which the context is created.
  PreCheckoutQuery? get preCheckoutQuery => update.preCheckoutQuery;

  /// The [ShippingQuery] instance.
  ///
  /// This represents the shipping query for which the context is created.
  ShippingQuery? get shippingQuery => update.shippingQuery;

  /// The [BusinessConnection] instance. This represents the business connection for which the context is created.
  BusinessConnection? get businessConnection => update.businessConnection;

  /// New non-service message from a connected business account
  Message? get businessMessage => update.businessMessage;

  /// New version of a message from a connected business account
  Message? get editedBusinessMessage => update.editedBusinessMessage;

  /// Messages were deleted from a connected business account
  BusinessMessagesDeleted? get businessMessageDelete =>
      update.deletedBusinessMessages;
}
