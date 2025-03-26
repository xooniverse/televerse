// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Update {
  /// The update's unique identifier. Update identifiers start from a certain
  /// positive number and increase sequentially. This ID becomes especially
  /// handy if you're using webhooks, since it allows you to ignore repeated
  /// updates or to restore the correct update sequence, should they get out
  /// of order. If there are no new updates for at least a week, then
  /// identifier of the next update will be chosen randomly instead of
  /// sequentially.
  @JsonKey(name: 'update_id')
  int get updateId;

  /// Optional. New incoming message of any kind — text, photo, sticker, etc.
  @JsonKey(name: 'message')
  Message? get message;

  /// Optional. New version of a message that is known to the bot and was
  /// edited
  @JsonKey(name: 'edited_message')
  Message? get editedMessage;

  /// Optional. New incoming channel post of any kind - text, photo, sticker,
  /// etc.
  @JsonKey(name: 'channel_post')
  Message? get channelPost;

  /// Optional. New version of a channel post that is known to the bot and was
  /// edited
  @JsonKey(name: 'edited_channel_post')
  Message? get editedChannelPost;

  /// Optional. New incoming inline query
  @JsonKey(name: 'inline_query')
  InlineQuery? get inlineQuery;

  /// Optional. The result of an inline query that was chosen by a user and
  /// sent to their chat partner. Please see our documentation on the feedback
  /// collecting for details on how to enable these updates for your bot.
  @JsonKey(name: 'chosen_inline_result')
  ChosenInlineResult? get chosenInlineResult;

  /// Optional. New incoming callback query
  @JsonKey(name: 'callback_query')
  CallbackQuery? get callbackQuery;

  /// Optional. New incoming shipping query. Only for invoices with flexible
  /// price
  @JsonKey(name: 'shipping_query')
  ShippingQuery? get shippingQuery;

  /// Optional. New incoming pre-checkout query. Contains full information
  /// about checkout
  @JsonKey(name: 'pre_checkout_query')
  PreCheckoutQuery? get preCheckoutQuery;

  /// Optional. New poll state. Bots receive only updates about stopped polls
  /// and polls, which are sent by the bot
  @JsonKey(name: 'poll')
  Poll? get poll;

  /// Optional. A user changed their answer in a non-anonymous poll. Bots
  /// receive new votes only in polls that were sent by the bot itself.
  @JsonKey(name: 'poll_answer')
  PollAnswer? get pollAnswer;

  /// Optional. New incoming my_chat_member update.
  @JsonKey(name: 'my_chat_member')
  ChatMemberUpdated? get myChatMember;

  /// Optional. A chat member's status was updated in a chat. The bot must be
  /// an administrator in the chat and must explicitly specify "chat_member"
  /// in the list of allowed_updates to receive these updates.
  @JsonKey(name: 'chat_member')
  ChatMemberUpdated? get chatMember;

  /// Optional. A request to join the chat has been sent. The bot must have
  /// the can_invite_users administrator right in the chat to receive these
  /// updates.
  @JsonKey(name: 'chat_join_request')
  ChatJoinRequest? get chatJoinRequest;

  /// Optional. A reaction to a message was changed by a user. The bot must be
  /// an administrator in the chat and must explicitly specify
  /// "message_reaction" in the list of allowed_updates to receive these
  /// updates. The update isn't received for reactions set by bots.
  @JsonKey(name: 'message_reaction')
  MessageReactionUpdated? get messageReaction;

  /// Optional. Reactions to a message with anonymous reactions were changed.
  /// The bot must be an administrator in the chat and must explicitly specify
  /// "message_reaction_count" in the list of allowed_updates to receive these
  /// updates.
  @JsonKey(name: 'message_reaction_count')
  MessageReactionCountUpdated? get messageReactionCount;

  /// Optional. A chat boost was added or changed. The bot must be an
  /// administrator in the chat to receive these updates.
  @JsonKey(name: 'chat_boost')
  ChatBoostUpdated? get chatBoost;

  /// Optional. A chat boost was removed. The bot must be an administrator in
  /// the chat to receive these updates.
  @JsonKey(name: 'removed_chat_boost')
  ChatBoostRemoved? get removedChatBoost;

  /// Optional. The bot was connected to or disconnected from a business
  /// account, or a user edited an existing connection with the bot
  @JsonKey(name: 'business_connection')
  BusinessConnection? get businessConnection;

  /// Optional. New non-service message from a connected business account
  @JsonKey(name: 'business_message')
  Message? get businessMessage;

  /// Optional. New version of a message from a connected business account
  @JsonKey(name: 'edited_business_message')
  Message? get editedBusinessMessage;

  /// Optional. Messages were deleted from a connected business account
  @JsonKey(name: 'deleted_business_messages')
  BusinessMessagesDeleted? get deletedBusinessMessages;

  /// Optional. A user purchased paid media with a non-empty payload sent by
  /// the bot in a non-channel chat
  @JsonKey(name: 'purchased_paid_media')
  PaidMediaPurchased? get purchasedPaidMedia;

  /// Create a copy of Update
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateCopyWith<Update> get copyWith =>
      _$UpdateCopyWithImpl<Update>(this as Update, _$identity);

  /// Serializes this Update to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'Update(updateId: $updateId, message: $message, editedMessage: $editedMessage, channelPost: $channelPost, editedChannelPost: $editedChannelPost, inlineQuery: $inlineQuery, chosenInlineResult: $chosenInlineResult, callbackQuery: $callbackQuery, shippingQuery: $shippingQuery, preCheckoutQuery: $preCheckoutQuery, poll: $poll, pollAnswer: $pollAnswer, myChatMember: $myChatMember, chatMember: $chatMember, chatJoinRequest: $chatJoinRequest, messageReaction: $messageReaction, messageReactionCount: $messageReactionCount, chatBoost: $chatBoost, removedChatBoost: $removedChatBoost, businessConnection: $businessConnection, businessMessage: $businessMessage, editedBusinessMessage: $editedBusinessMessage, deletedBusinessMessages: $deletedBusinessMessages, purchasedPaidMedia: $purchasedPaidMedia)';
  }
}

/// @nodoc
abstract mixin class $UpdateCopyWith<$Res> {
  factory $UpdateCopyWith(Update value, $Res Function(Update) _then) =
      _$UpdateCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'update_id') int updateId,
      @JsonKey(name: 'message') Message? message,
      @JsonKey(name: 'edited_message') Message? editedMessage,
      @JsonKey(name: 'channel_post') Message? channelPost,
      @JsonKey(name: 'edited_channel_post') Message? editedChannelPost,
      @JsonKey(name: 'inline_query') InlineQuery? inlineQuery,
      @JsonKey(name: 'chosen_inline_result')
      ChosenInlineResult? chosenInlineResult,
      @JsonKey(name: 'callback_query') CallbackQuery? callbackQuery,
      @JsonKey(name: 'shipping_query') ShippingQuery? shippingQuery,
      @JsonKey(name: 'pre_checkout_query') PreCheckoutQuery? preCheckoutQuery,
      @JsonKey(name: 'poll') Poll? poll,
      @JsonKey(name: 'poll_answer') PollAnswer? pollAnswer,
      @JsonKey(name: 'my_chat_member') ChatMemberUpdated? myChatMember,
      @JsonKey(name: 'chat_member') ChatMemberUpdated? chatMember,
      @JsonKey(name: 'chat_join_request') ChatJoinRequest? chatJoinRequest,
      @JsonKey(name: 'message_reaction')
      MessageReactionUpdated? messageReaction,
      @JsonKey(name: 'message_reaction_count')
      MessageReactionCountUpdated? messageReactionCount,
      @JsonKey(name: 'chat_boost') ChatBoostUpdated? chatBoost,
      @JsonKey(name: 'removed_chat_boost') ChatBoostRemoved? removedChatBoost,
      @JsonKey(name: 'business_connection')
      BusinessConnection? businessConnection,
      @JsonKey(name: 'business_message') Message? businessMessage,
      @JsonKey(name: 'edited_business_message') Message? editedBusinessMessage,
      @JsonKey(name: 'deleted_business_messages')
      BusinessMessagesDeleted? deletedBusinessMessages,
      @JsonKey(name: 'purchased_paid_media')
      PaidMediaPurchased? purchasedPaidMedia});

  $InlineQueryCopyWith<$Res>? get inlineQuery;
  $ChosenInlineResultCopyWith<$Res>? get chosenInlineResult;
  $CallbackQueryCopyWith<$Res>? get callbackQuery;
  $ShippingQueryCopyWith<$Res>? get shippingQuery;
  $PreCheckoutQueryCopyWith<$Res>? get preCheckoutQuery;
  $PollCopyWith<$Res>? get poll;
  $PollAnswerCopyWith<$Res>? get pollAnswer;
  $ChatMemberUpdatedCopyWith<$Res>? get myChatMember;
  $ChatMemberUpdatedCopyWith<$Res>? get chatMember;
  $ChatJoinRequestCopyWith<$Res>? get chatJoinRequest;
  $MessageReactionUpdatedCopyWith<$Res>? get messageReaction;
  $MessageReactionCountUpdatedCopyWith<$Res>? get messageReactionCount;
  $ChatBoostUpdatedCopyWith<$Res>? get chatBoost;
  $ChatBoostRemovedCopyWith<$Res>? get removedChatBoost;
  $BusinessConnectionCopyWith<$Res>? get businessConnection;
  $BusinessMessagesDeletedCopyWith<$Res>? get deletedBusinessMessages;
  $PaidMediaPurchasedCopyWith<$Res>? get purchasedPaidMedia;
}

/// @nodoc
class _$UpdateCopyWithImpl<$Res> implements $UpdateCopyWith<$Res> {
  _$UpdateCopyWithImpl(this._self, this._then);

  final Update _self;
  final $Res Function(Update) _then;

  /// Create a copy of Update
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updateId = null,
    Object? message = freezed,
    Object? editedMessage = freezed,
    Object? channelPost = freezed,
    Object? editedChannelPost = freezed,
    Object? inlineQuery = freezed,
    Object? chosenInlineResult = freezed,
    Object? callbackQuery = freezed,
    Object? shippingQuery = freezed,
    Object? preCheckoutQuery = freezed,
    Object? poll = freezed,
    Object? pollAnswer = freezed,
    Object? myChatMember = freezed,
    Object? chatMember = freezed,
    Object? chatJoinRequest = freezed,
    Object? messageReaction = freezed,
    Object? messageReactionCount = freezed,
    Object? chatBoost = freezed,
    Object? removedChatBoost = freezed,
    Object? businessConnection = freezed,
    Object? businessMessage = freezed,
    Object? editedBusinessMessage = freezed,
    Object? deletedBusinessMessages = freezed,
    Object? purchasedPaidMedia = freezed,
  }) {
    return _then(_self.copyWith(
      updateId: null == updateId
          ? _self.updateId
          : updateId // ignore: cast_nullable_to_non_nullable
              as int,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message?,
      editedMessage: freezed == editedMessage
          ? _self.editedMessage
          : editedMessage // ignore: cast_nullable_to_non_nullable
              as Message?,
      channelPost: freezed == channelPost
          ? _self.channelPost
          : channelPost // ignore: cast_nullable_to_non_nullable
              as Message?,
      editedChannelPost: freezed == editedChannelPost
          ? _self.editedChannelPost
          : editedChannelPost // ignore: cast_nullable_to_non_nullable
              as Message?,
      inlineQuery: freezed == inlineQuery
          ? _self.inlineQuery
          : inlineQuery // ignore: cast_nullable_to_non_nullable
              as InlineQuery?,
      chosenInlineResult: freezed == chosenInlineResult
          ? _self.chosenInlineResult
          : chosenInlineResult // ignore: cast_nullable_to_non_nullable
              as ChosenInlineResult?,
      callbackQuery: freezed == callbackQuery
          ? _self.callbackQuery
          : callbackQuery // ignore: cast_nullable_to_non_nullable
              as CallbackQuery?,
      shippingQuery: freezed == shippingQuery
          ? _self.shippingQuery
          : shippingQuery // ignore: cast_nullable_to_non_nullable
              as ShippingQuery?,
      preCheckoutQuery: freezed == preCheckoutQuery
          ? _self.preCheckoutQuery
          : preCheckoutQuery // ignore: cast_nullable_to_non_nullable
              as PreCheckoutQuery?,
      poll: freezed == poll
          ? _self.poll
          : poll // ignore: cast_nullable_to_non_nullable
              as Poll?,
      pollAnswer: freezed == pollAnswer
          ? _self.pollAnswer
          : pollAnswer // ignore: cast_nullable_to_non_nullable
              as PollAnswer?,
      myChatMember: freezed == myChatMember
          ? _self.myChatMember
          : myChatMember // ignore: cast_nullable_to_non_nullable
              as ChatMemberUpdated?,
      chatMember: freezed == chatMember
          ? _self.chatMember
          : chatMember // ignore: cast_nullable_to_non_nullable
              as ChatMemberUpdated?,
      chatJoinRequest: freezed == chatJoinRequest
          ? _self.chatJoinRequest
          : chatJoinRequest // ignore: cast_nullable_to_non_nullable
              as ChatJoinRequest?,
      messageReaction: freezed == messageReaction
          ? _self.messageReaction
          : messageReaction // ignore: cast_nullable_to_non_nullable
              as MessageReactionUpdated?,
      messageReactionCount: freezed == messageReactionCount
          ? _self.messageReactionCount
          : messageReactionCount // ignore: cast_nullable_to_non_nullable
              as MessageReactionCountUpdated?,
      chatBoost: freezed == chatBoost
          ? _self.chatBoost
          : chatBoost // ignore: cast_nullable_to_non_nullable
              as ChatBoostUpdated?,
      removedChatBoost: freezed == removedChatBoost
          ? _self.removedChatBoost
          : removedChatBoost // ignore: cast_nullable_to_non_nullable
              as ChatBoostRemoved?,
      businessConnection: freezed == businessConnection
          ? _self.businessConnection
          : businessConnection // ignore: cast_nullable_to_non_nullable
              as BusinessConnection?,
      businessMessage: freezed == businessMessage
          ? _self.businessMessage
          : businessMessage // ignore: cast_nullable_to_non_nullable
              as Message?,
      editedBusinessMessage: freezed == editedBusinessMessage
          ? _self.editedBusinessMessage
          : editedBusinessMessage // ignore: cast_nullable_to_non_nullable
              as Message?,
      deletedBusinessMessages: freezed == deletedBusinessMessages
          ? _self.deletedBusinessMessages
          : deletedBusinessMessages // ignore: cast_nullable_to_non_nullable
              as BusinessMessagesDeleted?,
      purchasedPaidMedia: freezed == purchasedPaidMedia
          ? _self.purchasedPaidMedia
          : purchasedPaidMedia // ignore: cast_nullable_to_non_nullable
              as PaidMediaPurchased?,
    ));
  }

  /// Create a copy of Update
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InlineQueryCopyWith<$Res>? get inlineQuery {
    if (_self.inlineQuery == null) {
      return null;
    }

    return $InlineQueryCopyWith<$Res>(_self.inlineQuery!, (value) {
      return _then(_self.copyWith(inlineQuery: value));
    });
  }

  /// Create a copy of Update
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChosenInlineResultCopyWith<$Res>? get chosenInlineResult {
    if (_self.chosenInlineResult == null) {
      return null;
    }

    return $ChosenInlineResultCopyWith<$Res>(_self.chosenInlineResult!,
        (value) {
      return _then(_self.copyWith(chosenInlineResult: value));
    });
  }

  /// Create a copy of Update
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CallbackQueryCopyWith<$Res>? get callbackQuery {
    if (_self.callbackQuery == null) {
      return null;
    }

    return $CallbackQueryCopyWith<$Res>(_self.callbackQuery!, (value) {
      return _then(_self.copyWith(callbackQuery: value));
    });
  }

  /// Create a copy of Update
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShippingQueryCopyWith<$Res>? get shippingQuery {
    if (_self.shippingQuery == null) {
      return null;
    }

    return $ShippingQueryCopyWith<$Res>(_self.shippingQuery!, (value) {
      return _then(_self.copyWith(shippingQuery: value));
    });
  }

  /// Create a copy of Update
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PreCheckoutQueryCopyWith<$Res>? get preCheckoutQuery {
    if (_self.preCheckoutQuery == null) {
      return null;
    }

    return $PreCheckoutQueryCopyWith<$Res>(_self.preCheckoutQuery!, (value) {
      return _then(_self.copyWith(preCheckoutQuery: value));
    });
  }

  /// Create a copy of Update
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PollCopyWith<$Res>? get poll {
    if (_self.poll == null) {
      return null;
    }

    return $PollCopyWith<$Res>(_self.poll!, (value) {
      return _then(_self.copyWith(poll: value));
    });
  }

  /// Create a copy of Update
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PollAnswerCopyWith<$Res>? get pollAnswer {
    if (_self.pollAnswer == null) {
      return null;
    }

    return $PollAnswerCopyWith<$Res>(_self.pollAnswer!, (value) {
      return _then(_self.copyWith(pollAnswer: value));
    });
  }

  /// Create a copy of Update
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatMemberUpdatedCopyWith<$Res>? get myChatMember {
    if (_self.myChatMember == null) {
      return null;
    }

    return $ChatMemberUpdatedCopyWith<$Res>(_self.myChatMember!, (value) {
      return _then(_self.copyWith(myChatMember: value));
    });
  }

  /// Create a copy of Update
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatMemberUpdatedCopyWith<$Res>? get chatMember {
    if (_self.chatMember == null) {
      return null;
    }

    return $ChatMemberUpdatedCopyWith<$Res>(_self.chatMember!, (value) {
      return _then(_self.copyWith(chatMember: value));
    });
  }

  /// Create a copy of Update
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatJoinRequestCopyWith<$Res>? get chatJoinRequest {
    if (_self.chatJoinRequest == null) {
      return null;
    }

    return $ChatJoinRequestCopyWith<$Res>(_self.chatJoinRequest!, (value) {
      return _then(_self.copyWith(chatJoinRequest: value));
    });
  }

  /// Create a copy of Update
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageReactionUpdatedCopyWith<$Res>? get messageReaction {
    if (_self.messageReaction == null) {
      return null;
    }

    return $MessageReactionUpdatedCopyWith<$Res>(_self.messageReaction!,
        (value) {
      return _then(_self.copyWith(messageReaction: value));
    });
  }

  /// Create a copy of Update
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageReactionCountUpdatedCopyWith<$Res>? get messageReactionCount {
    if (_self.messageReactionCount == null) {
      return null;
    }

    return $MessageReactionCountUpdatedCopyWith<$Res>(
        _self.messageReactionCount!, (value) {
      return _then(_self.copyWith(messageReactionCount: value));
    });
  }

  /// Create a copy of Update
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatBoostUpdatedCopyWith<$Res>? get chatBoost {
    if (_self.chatBoost == null) {
      return null;
    }

    return $ChatBoostUpdatedCopyWith<$Res>(_self.chatBoost!, (value) {
      return _then(_self.copyWith(chatBoost: value));
    });
  }

  /// Create a copy of Update
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatBoostRemovedCopyWith<$Res>? get removedChatBoost {
    if (_self.removedChatBoost == null) {
      return null;
    }

    return $ChatBoostRemovedCopyWith<$Res>(_self.removedChatBoost!, (value) {
      return _then(_self.copyWith(removedChatBoost: value));
    });
  }

  /// Create a copy of Update
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessConnectionCopyWith<$Res>? get businessConnection {
    if (_self.businessConnection == null) {
      return null;
    }

    return $BusinessConnectionCopyWith<$Res>(_self.businessConnection!,
        (value) {
      return _then(_self.copyWith(businessConnection: value));
    });
  }

  /// Create a copy of Update
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessMessagesDeletedCopyWith<$Res>? get deletedBusinessMessages {
    if (_self.deletedBusinessMessages == null) {
      return null;
    }

    return $BusinessMessagesDeletedCopyWith<$Res>(
        _self.deletedBusinessMessages!, (value) {
      return _then(_self.copyWith(deletedBusinessMessages: value));
    });
  }

  /// Create a copy of Update
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaidMediaPurchasedCopyWith<$Res>? get purchasedPaidMedia {
    if (_self.purchasedPaidMedia == null) {
      return null;
    }

    return $PaidMediaPurchasedCopyWith<$Res>(_self.purchasedPaidMedia!,
        (value) {
      return _then(_self.copyWith(purchasedPaidMedia: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _Update implements Update {
  const _Update(
      {@JsonKey(name: 'update_id') required this.updateId,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'edited_message') this.editedMessage,
      @JsonKey(name: 'channel_post') this.channelPost,
      @JsonKey(name: 'edited_channel_post') this.editedChannelPost,
      @JsonKey(name: 'inline_query') this.inlineQuery,
      @JsonKey(name: 'chosen_inline_result') this.chosenInlineResult,
      @JsonKey(name: 'callback_query') this.callbackQuery,
      @JsonKey(name: 'shipping_query') this.shippingQuery,
      @JsonKey(name: 'pre_checkout_query') this.preCheckoutQuery,
      @JsonKey(name: 'poll') this.poll,
      @JsonKey(name: 'poll_answer') this.pollAnswer,
      @JsonKey(name: 'my_chat_member') this.myChatMember,
      @JsonKey(name: 'chat_member') this.chatMember,
      @JsonKey(name: 'chat_join_request') this.chatJoinRequest,
      @JsonKey(name: 'message_reaction') this.messageReaction,
      @JsonKey(name: 'message_reaction_count') this.messageReactionCount,
      @JsonKey(name: 'chat_boost') this.chatBoost,
      @JsonKey(name: 'removed_chat_boost') this.removedChatBoost,
      @JsonKey(name: 'business_connection') this.businessConnection,
      @JsonKey(name: 'business_message') this.businessMessage,
      @JsonKey(name: 'edited_business_message') this.editedBusinessMessage,
      @JsonKey(name: 'deleted_business_messages') this.deletedBusinessMessages,
      @JsonKey(name: 'purchased_paid_media') this.purchasedPaidMedia});
  factory _Update.fromJson(Map<String, dynamic> json) => _$UpdateFromJson(json);

  /// The update's unique identifier. Update identifiers start from a certain
  /// positive number and increase sequentially. This ID becomes especially
  /// handy if you're using webhooks, since it allows you to ignore repeated
  /// updates or to restore the correct update sequence, should they get out
  /// of order. If there are no new updates for at least a week, then
  /// identifier of the next update will be chosen randomly instead of
  /// sequentially.
  @override
  @JsonKey(name: 'update_id')
  final int updateId;

  /// Optional. New incoming message of any kind — text, photo, sticker, etc.
  @override
  @JsonKey(name: 'message')
  final Message? message;

  /// Optional. New version of a message that is known to the bot and was
  /// edited
  @override
  @JsonKey(name: 'edited_message')
  final Message? editedMessage;

  /// Optional. New incoming channel post of any kind - text, photo, sticker,
  /// etc.
  @override
  @JsonKey(name: 'channel_post')
  final Message? channelPost;

  /// Optional. New version of a channel post that is known to the bot and was
  /// edited
  @override
  @JsonKey(name: 'edited_channel_post')
  final Message? editedChannelPost;

  /// Optional. New incoming inline query
  @override
  @JsonKey(name: 'inline_query')
  final InlineQuery? inlineQuery;

  /// Optional. The result of an inline query that was chosen by a user and
  /// sent to their chat partner. Please see our documentation on the feedback
  /// collecting for details on how to enable these updates for your bot.
  @override
  @JsonKey(name: 'chosen_inline_result')
  final ChosenInlineResult? chosenInlineResult;

  /// Optional. New incoming callback query
  @override
  @JsonKey(name: 'callback_query')
  final CallbackQuery? callbackQuery;

  /// Optional. New incoming shipping query. Only for invoices with flexible
  /// price
  @override
  @JsonKey(name: 'shipping_query')
  final ShippingQuery? shippingQuery;

  /// Optional. New incoming pre-checkout query. Contains full information
  /// about checkout
  @override
  @JsonKey(name: 'pre_checkout_query')
  final PreCheckoutQuery? preCheckoutQuery;

  /// Optional. New poll state. Bots receive only updates about stopped polls
  /// and polls, which are sent by the bot
  @override
  @JsonKey(name: 'poll')
  final Poll? poll;

  /// Optional. A user changed their answer in a non-anonymous poll. Bots
  /// receive new votes only in polls that were sent by the bot itself.
  @override
  @JsonKey(name: 'poll_answer')
  final PollAnswer? pollAnswer;

  /// Optional. New incoming my_chat_member update.
  @override
  @JsonKey(name: 'my_chat_member')
  final ChatMemberUpdated? myChatMember;

  /// Optional. A chat member's status was updated in a chat. The bot must be
  /// an administrator in the chat and must explicitly specify "chat_member"
  /// in the list of allowed_updates to receive these updates.
  @override
  @JsonKey(name: 'chat_member')
  final ChatMemberUpdated? chatMember;

  /// Optional. A request to join the chat has been sent. The bot must have
  /// the can_invite_users administrator right in the chat to receive these
  /// updates.
  @override
  @JsonKey(name: 'chat_join_request')
  final ChatJoinRequest? chatJoinRequest;

  /// Optional. A reaction to a message was changed by a user. The bot must be
  /// an administrator in the chat and must explicitly specify
  /// "message_reaction" in the list of allowed_updates to receive these
  /// updates. The update isn't received for reactions set by bots.
  @override
  @JsonKey(name: 'message_reaction')
  final MessageReactionUpdated? messageReaction;

  /// Optional. Reactions to a message with anonymous reactions were changed.
  /// The bot must be an administrator in the chat and must explicitly specify
  /// "message_reaction_count" in the list of allowed_updates to receive these
  /// updates.
  @override
  @JsonKey(name: 'message_reaction_count')
  final MessageReactionCountUpdated? messageReactionCount;

  /// Optional. A chat boost was added or changed. The bot must be an
  /// administrator in the chat to receive these updates.
  @override
  @JsonKey(name: 'chat_boost')
  final ChatBoostUpdated? chatBoost;

  /// Optional. A chat boost was removed. The bot must be an administrator in
  /// the chat to receive these updates.
  @override
  @JsonKey(name: 'removed_chat_boost')
  final ChatBoostRemoved? removedChatBoost;

  /// Optional. The bot was connected to or disconnected from a business
  /// account, or a user edited an existing connection with the bot
  @override
  @JsonKey(name: 'business_connection')
  final BusinessConnection? businessConnection;

  /// Optional. New non-service message from a connected business account
  @override
  @JsonKey(name: 'business_message')
  final Message? businessMessage;

  /// Optional. New version of a message from a connected business account
  @override
  @JsonKey(name: 'edited_business_message')
  final Message? editedBusinessMessage;

  /// Optional. Messages were deleted from a connected business account
  @override
  @JsonKey(name: 'deleted_business_messages')
  final BusinessMessagesDeleted? deletedBusinessMessages;

  /// Optional. A user purchased paid media with a non-empty payload sent by
  /// the bot in a non-channel chat
  @override
  @JsonKey(name: 'purchased_paid_media')
  final PaidMediaPurchased? purchasedPaidMedia;

  /// Create a copy of Update
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateCopyWith<_Update> get copyWith =>
      __$UpdateCopyWithImpl<_Update>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'Update(updateId: $updateId, message: $message, editedMessage: $editedMessage, channelPost: $channelPost, editedChannelPost: $editedChannelPost, inlineQuery: $inlineQuery, chosenInlineResult: $chosenInlineResult, callbackQuery: $callbackQuery, shippingQuery: $shippingQuery, preCheckoutQuery: $preCheckoutQuery, poll: $poll, pollAnswer: $pollAnswer, myChatMember: $myChatMember, chatMember: $chatMember, chatJoinRequest: $chatJoinRequest, messageReaction: $messageReaction, messageReactionCount: $messageReactionCount, chatBoost: $chatBoost, removedChatBoost: $removedChatBoost, businessConnection: $businessConnection, businessMessage: $businessMessage, editedBusinessMessage: $editedBusinessMessage, deletedBusinessMessages: $deletedBusinessMessages, purchasedPaidMedia: $purchasedPaidMedia)';
  }
}

/// @nodoc
abstract mixin class _$UpdateCopyWith<$Res> implements $UpdateCopyWith<$Res> {
  factory _$UpdateCopyWith(_Update value, $Res Function(_Update) _then) =
      __$UpdateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'update_id') int updateId,
      @JsonKey(name: 'message') Message? message,
      @JsonKey(name: 'edited_message') Message? editedMessage,
      @JsonKey(name: 'channel_post') Message? channelPost,
      @JsonKey(name: 'edited_channel_post') Message? editedChannelPost,
      @JsonKey(name: 'inline_query') InlineQuery? inlineQuery,
      @JsonKey(name: 'chosen_inline_result')
      ChosenInlineResult? chosenInlineResult,
      @JsonKey(name: 'callback_query') CallbackQuery? callbackQuery,
      @JsonKey(name: 'shipping_query') ShippingQuery? shippingQuery,
      @JsonKey(name: 'pre_checkout_query') PreCheckoutQuery? preCheckoutQuery,
      @JsonKey(name: 'poll') Poll? poll,
      @JsonKey(name: 'poll_answer') PollAnswer? pollAnswer,
      @JsonKey(name: 'my_chat_member') ChatMemberUpdated? myChatMember,
      @JsonKey(name: 'chat_member') ChatMemberUpdated? chatMember,
      @JsonKey(name: 'chat_join_request') ChatJoinRequest? chatJoinRequest,
      @JsonKey(name: 'message_reaction')
      MessageReactionUpdated? messageReaction,
      @JsonKey(name: 'message_reaction_count')
      MessageReactionCountUpdated? messageReactionCount,
      @JsonKey(name: 'chat_boost') ChatBoostUpdated? chatBoost,
      @JsonKey(name: 'removed_chat_boost') ChatBoostRemoved? removedChatBoost,
      @JsonKey(name: 'business_connection')
      BusinessConnection? businessConnection,
      @JsonKey(name: 'business_message') Message? businessMessage,
      @JsonKey(name: 'edited_business_message') Message? editedBusinessMessage,
      @JsonKey(name: 'deleted_business_messages')
      BusinessMessagesDeleted? deletedBusinessMessages,
      @JsonKey(name: 'purchased_paid_media')
      PaidMediaPurchased? purchasedPaidMedia});

  @override
  $InlineQueryCopyWith<$Res>? get inlineQuery;
  @override
  $ChosenInlineResultCopyWith<$Res>? get chosenInlineResult;
  @override
  $CallbackQueryCopyWith<$Res>? get callbackQuery;
  @override
  $ShippingQueryCopyWith<$Res>? get shippingQuery;
  @override
  $PreCheckoutQueryCopyWith<$Res>? get preCheckoutQuery;
  @override
  $PollCopyWith<$Res>? get poll;
  @override
  $PollAnswerCopyWith<$Res>? get pollAnswer;
  @override
  $ChatMemberUpdatedCopyWith<$Res>? get myChatMember;
  @override
  $ChatMemberUpdatedCopyWith<$Res>? get chatMember;
  @override
  $ChatJoinRequestCopyWith<$Res>? get chatJoinRequest;
  @override
  $MessageReactionUpdatedCopyWith<$Res>? get messageReaction;
  @override
  $MessageReactionCountUpdatedCopyWith<$Res>? get messageReactionCount;
  @override
  $ChatBoostUpdatedCopyWith<$Res>? get chatBoost;
  @override
  $ChatBoostRemovedCopyWith<$Res>? get removedChatBoost;
  @override
  $BusinessConnectionCopyWith<$Res>? get businessConnection;
  @override
  $BusinessMessagesDeletedCopyWith<$Res>? get deletedBusinessMessages;
  @override
  $PaidMediaPurchasedCopyWith<$Res>? get purchasedPaidMedia;
}

/// @nodoc
class __$UpdateCopyWithImpl<$Res> implements _$UpdateCopyWith<$Res> {
  __$UpdateCopyWithImpl(this._self, this._then);

  final _Update _self;
  final $Res Function(_Update) _then;

  /// Create a copy of Update
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? updateId = null,
    Object? message = freezed,
    Object? editedMessage = freezed,
    Object? channelPost = freezed,
    Object? editedChannelPost = freezed,
    Object? inlineQuery = freezed,
    Object? chosenInlineResult = freezed,
    Object? callbackQuery = freezed,
    Object? shippingQuery = freezed,
    Object? preCheckoutQuery = freezed,
    Object? poll = freezed,
    Object? pollAnswer = freezed,
    Object? myChatMember = freezed,
    Object? chatMember = freezed,
    Object? chatJoinRequest = freezed,
    Object? messageReaction = freezed,
    Object? messageReactionCount = freezed,
    Object? chatBoost = freezed,
    Object? removedChatBoost = freezed,
    Object? businessConnection = freezed,
    Object? businessMessage = freezed,
    Object? editedBusinessMessage = freezed,
    Object? deletedBusinessMessages = freezed,
    Object? purchasedPaidMedia = freezed,
  }) {
    return _then(_Update(
      updateId: null == updateId
          ? _self.updateId
          : updateId // ignore: cast_nullable_to_non_nullable
              as int,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message?,
      editedMessage: freezed == editedMessage
          ? _self.editedMessage
          : editedMessage // ignore: cast_nullable_to_non_nullable
              as Message?,
      channelPost: freezed == channelPost
          ? _self.channelPost
          : channelPost // ignore: cast_nullable_to_non_nullable
              as Message?,
      editedChannelPost: freezed == editedChannelPost
          ? _self.editedChannelPost
          : editedChannelPost // ignore: cast_nullable_to_non_nullable
              as Message?,
      inlineQuery: freezed == inlineQuery
          ? _self.inlineQuery
          : inlineQuery // ignore: cast_nullable_to_non_nullable
              as InlineQuery?,
      chosenInlineResult: freezed == chosenInlineResult
          ? _self.chosenInlineResult
          : chosenInlineResult // ignore: cast_nullable_to_non_nullable
              as ChosenInlineResult?,
      callbackQuery: freezed == callbackQuery
          ? _self.callbackQuery
          : callbackQuery // ignore: cast_nullable_to_non_nullable
              as CallbackQuery?,
      shippingQuery: freezed == shippingQuery
          ? _self.shippingQuery
          : shippingQuery // ignore: cast_nullable_to_non_nullable
              as ShippingQuery?,
      preCheckoutQuery: freezed == preCheckoutQuery
          ? _self.preCheckoutQuery
          : preCheckoutQuery // ignore: cast_nullable_to_non_nullable
              as PreCheckoutQuery?,
      poll: freezed == poll
          ? _self.poll
          : poll // ignore: cast_nullable_to_non_nullable
              as Poll?,
      pollAnswer: freezed == pollAnswer
          ? _self.pollAnswer
          : pollAnswer // ignore: cast_nullable_to_non_nullable
              as PollAnswer?,
      myChatMember: freezed == myChatMember
          ? _self.myChatMember
          : myChatMember // ignore: cast_nullable_to_non_nullable
              as ChatMemberUpdated?,
      chatMember: freezed == chatMember
          ? _self.chatMember
          : chatMember // ignore: cast_nullable_to_non_nullable
              as ChatMemberUpdated?,
      chatJoinRequest: freezed == chatJoinRequest
          ? _self.chatJoinRequest
          : chatJoinRequest // ignore: cast_nullable_to_non_nullable
              as ChatJoinRequest?,
      messageReaction: freezed == messageReaction
          ? _self.messageReaction
          : messageReaction // ignore: cast_nullable_to_non_nullable
              as MessageReactionUpdated?,
      messageReactionCount: freezed == messageReactionCount
          ? _self.messageReactionCount
          : messageReactionCount // ignore: cast_nullable_to_non_nullable
              as MessageReactionCountUpdated?,
      chatBoost: freezed == chatBoost
          ? _self.chatBoost
          : chatBoost // ignore: cast_nullable_to_non_nullable
              as ChatBoostUpdated?,
      removedChatBoost: freezed == removedChatBoost
          ? _self.removedChatBoost
          : removedChatBoost // ignore: cast_nullable_to_non_nullable
              as ChatBoostRemoved?,
      businessConnection: freezed == businessConnection
          ? _self.businessConnection
          : businessConnection // ignore: cast_nullable_to_non_nullable
              as BusinessConnection?,
      businessMessage: freezed == businessMessage
          ? _self.businessMessage
          : businessMessage // ignore: cast_nullable_to_non_nullable
              as Message?,
      editedBusinessMessage: freezed == editedBusinessMessage
          ? _self.editedBusinessMessage
          : editedBusinessMessage // ignore: cast_nullable_to_non_nullable
              as Message?,
      deletedBusinessMessages: freezed == deletedBusinessMessages
          ? _self.deletedBusinessMessages
          : deletedBusinessMessages // ignore: cast_nullable_to_non_nullable
              as BusinessMessagesDeleted?,
      purchasedPaidMedia: freezed == purchasedPaidMedia
          ? _self.purchasedPaidMedia
          : purchasedPaidMedia // ignore: cast_nullable_to_non_nullable
              as PaidMediaPurchased?,
    ));
  }

  /// Create a copy of Update
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InlineQueryCopyWith<$Res>? get inlineQuery {
    if (_self.inlineQuery == null) {
      return null;
    }

    return $InlineQueryCopyWith<$Res>(_self.inlineQuery!, (value) {
      return _then(_self.copyWith(inlineQuery: value));
    });
  }

  /// Create a copy of Update
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChosenInlineResultCopyWith<$Res>? get chosenInlineResult {
    if (_self.chosenInlineResult == null) {
      return null;
    }

    return $ChosenInlineResultCopyWith<$Res>(_self.chosenInlineResult!,
        (value) {
      return _then(_self.copyWith(chosenInlineResult: value));
    });
  }

  /// Create a copy of Update
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CallbackQueryCopyWith<$Res>? get callbackQuery {
    if (_self.callbackQuery == null) {
      return null;
    }

    return $CallbackQueryCopyWith<$Res>(_self.callbackQuery!, (value) {
      return _then(_self.copyWith(callbackQuery: value));
    });
  }

  /// Create a copy of Update
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShippingQueryCopyWith<$Res>? get shippingQuery {
    if (_self.shippingQuery == null) {
      return null;
    }

    return $ShippingQueryCopyWith<$Res>(_self.shippingQuery!, (value) {
      return _then(_self.copyWith(shippingQuery: value));
    });
  }

  /// Create a copy of Update
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PreCheckoutQueryCopyWith<$Res>? get preCheckoutQuery {
    if (_self.preCheckoutQuery == null) {
      return null;
    }

    return $PreCheckoutQueryCopyWith<$Res>(_self.preCheckoutQuery!, (value) {
      return _then(_self.copyWith(preCheckoutQuery: value));
    });
  }

  /// Create a copy of Update
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PollCopyWith<$Res>? get poll {
    if (_self.poll == null) {
      return null;
    }

    return $PollCopyWith<$Res>(_self.poll!, (value) {
      return _then(_self.copyWith(poll: value));
    });
  }

  /// Create a copy of Update
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PollAnswerCopyWith<$Res>? get pollAnswer {
    if (_self.pollAnswer == null) {
      return null;
    }

    return $PollAnswerCopyWith<$Res>(_self.pollAnswer!, (value) {
      return _then(_self.copyWith(pollAnswer: value));
    });
  }

  /// Create a copy of Update
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatMemberUpdatedCopyWith<$Res>? get myChatMember {
    if (_self.myChatMember == null) {
      return null;
    }

    return $ChatMemberUpdatedCopyWith<$Res>(_self.myChatMember!, (value) {
      return _then(_self.copyWith(myChatMember: value));
    });
  }

  /// Create a copy of Update
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatMemberUpdatedCopyWith<$Res>? get chatMember {
    if (_self.chatMember == null) {
      return null;
    }

    return $ChatMemberUpdatedCopyWith<$Res>(_self.chatMember!, (value) {
      return _then(_self.copyWith(chatMember: value));
    });
  }

  /// Create a copy of Update
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatJoinRequestCopyWith<$Res>? get chatJoinRequest {
    if (_self.chatJoinRequest == null) {
      return null;
    }

    return $ChatJoinRequestCopyWith<$Res>(_self.chatJoinRequest!, (value) {
      return _then(_self.copyWith(chatJoinRequest: value));
    });
  }

  /// Create a copy of Update
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageReactionUpdatedCopyWith<$Res>? get messageReaction {
    if (_self.messageReaction == null) {
      return null;
    }

    return $MessageReactionUpdatedCopyWith<$Res>(_self.messageReaction!,
        (value) {
      return _then(_self.copyWith(messageReaction: value));
    });
  }

  /// Create a copy of Update
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageReactionCountUpdatedCopyWith<$Res>? get messageReactionCount {
    if (_self.messageReactionCount == null) {
      return null;
    }

    return $MessageReactionCountUpdatedCopyWith<$Res>(
        _self.messageReactionCount!, (value) {
      return _then(_self.copyWith(messageReactionCount: value));
    });
  }

  /// Create a copy of Update
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatBoostUpdatedCopyWith<$Res>? get chatBoost {
    if (_self.chatBoost == null) {
      return null;
    }

    return $ChatBoostUpdatedCopyWith<$Res>(_self.chatBoost!, (value) {
      return _then(_self.copyWith(chatBoost: value));
    });
  }

  /// Create a copy of Update
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatBoostRemovedCopyWith<$Res>? get removedChatBoost {
    if (_self.removedChatBoost == null) {
      return null;
    }

    return $ChatBoostRemovedCopyWith<$Res>(_self.removedChatBoost!, (value) {
      return _then(_self.copyWith(removedChatBoost: value));
    });
  }

  /// Create a copy of Update
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessConnectionCopyWith<$Res>? get businessConnection {
    if (_self.businessConnection == null) {
      return null;
    }

    return $BusinessConnectionCopyWith<$Res>(_self.businessConnection!,
        (value) {
      return _then(_self.copyWith(businessConnection: value));
    });
  }

  /// Create a copy of Update
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessMessagesDeletedCopyWith<$Res>? get deletedBusinessMessages {
    if (_self.deletedBusinessMessages == null) {
      return null;
    }

    return $BusinessMessagesDeletedCopyWith<$Res>(
        _self.deletedBusinessMessages!, (value) {
      return _then(_self.copyWith(deletedBusinessMessages: value));
    });
  }

  /// Create a copy of Update
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaidMediaPurchasedCopyWith<$Res>? get purchasedPaidMedia {
    if (_self.purchasedPaidMedia == null) {
      return null;
    }

    return $PaidMediaPurchasedCopyWith<$Res>(_self.purchasedPaidMedia!,
        (value) {
      return _then(_self.copyWith(purchasedPaidMedia: value));
    });
  }
}
