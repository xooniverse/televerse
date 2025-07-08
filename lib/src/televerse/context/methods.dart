part of '../../../televerse.dart';

/// Contains all the context aware methods
extension ContextAwareMethods on Context {
  /// Reply a Text Message to the user.
  Future<Message> reply(
    String text, {
    int? messageThreadId,
    ParseMode? parseMode,
    List<MessageEntity>? entities,
    LinkPreviewOptions? linkPreviewOptions,
    bool? disableNotification,
    bool? protectContent,
    ReplyParameters? replyParameters,
    ReplyMarkup? replyMarkup,
    String? businessConnectionId,
    String? messageEffectId,
    bool? allowPaidBroadcast,
  }) async {
    api._addContext(this);
    _verifyInfo([_chatId], APIMethod.sendMessage);
    return api.sendMessage(
      id,
      text,
      messageThreadId: _threadId(messageThreadId),
      parseMode: parseMode,
      entities: entities,
      linkPreviewOptions: linkPreviewOptions,
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyParameters: replyParameters,
      replyMarkup: replyMarkup,
      businessConnectionId: businessConnectionId,
      messageEffectId: messageEffectId,
      allowPaidBroadcast: allowPaidBroadcast,
    );
  }

  /// Reply a Photo to the user.
  /// Reply with a Photo to the user.
  ///
  /// Provide an [InputFile] as [photo]. Use the [InputFile.fromFile] or [InputFile.fromUrl] or [InputFile.fromFileId]
  /// constructors to create an [InputFile] from a file or a URL or a file ID.
  ///
  /// Example:
  /// ```dart
  /// ctx.replyPhoto(InputFile.fromFile(File("photo.jpg")));
  /// ```
  Future<Message> replyWithPhoto(
    InputFile photo, {
    int? messageThreadId,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    bool? disableNotification,
    bool? protectContent,
    ReplyParameters? replyParameters,
    ReplyMarkup? replyMarkup,
    String? businessConnectionId,
    String? messageEffectId,
    bool? showCaptionAboveMedia,
    bool? allowPaidBroadcast,
  }) async {
    api._addContext(this);
    _verifyInfo([_chatId], APIMethod.sendPhoto);
    return api.sendPhoto(
      id,
      photo,
      messageThreadId: _threadId(messageThreadId),
      caption: caption,
      parseMode: parseMode,
      captionEntities: captionEntities,
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyParameters: replyParameters,
      replyMarkup: replyMarkup,
      businessConnectionId: businessConnectionId,
      messageEffectId: messageEffectId,
      showCaptionAboveMedia: showCaptionAboveMedia,
      allowPaidBroadcast: allowPaidBroadcast,
    );
  }

  /// Reply with an Audio to the user.
  ///
  /// Provide an [InputFile] as [audio]. Use the [InputFile.fromFile] or [InputFile.fromUrl] or [InputFile.fromFileId]
  /// constructors to create an [InputFile] from a file or a URL or a file ID.
  Future<Message> replyWithAudio(
    InputFile audio, {
    int? messageThreadId,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    int? duration,
    String? performer,
    String? title,
    InputFile? thumbnail,
    bool? disableNotification,
    bool? protectContent,
    ReplyParameters? replyParameters,
    ReplyMarkup? replyMarkup,
    String? businessConnectionId,
    String? messageEffectId,
    bool? allowPaidBroadcast,
  }) async {
    api._addContext(this);
    _verifyInfo([_chatId], APIMethod.sendAudio);
    return api.sendAudio(
      id,
      audio,
      messageThreadId: _threadId(messageThreadId),
      caption: caption,
      parseMode: parseMode,
      captionEntities: captionEntities,
      duration: duration,
      performer: performer,
      title: title,
      thumbnail: thumbnail,
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyParameters: replyParameters,
      replyMarkup: replyMarkup,
      businessConnectionId: businessConnectionId,
      messageEffectId: messageEffectId,
      allowPaidBroadcast: allowPaidBroadcast,
    );
  }

  /// Reply with a Document to the user.
  ///
  /// Provide an [InputFile] as [document]. Use the [InputFile.fromFile] or [InputFile.fromUrl] or [InputFile.fromFileId]
  /// constructors to create an [InputFile] from a file or a URL or a file ID.
  Future<Message> replyWithDocument(
    InputFile document, {
    int? messageThreadId,
    InputFile? thumbnail,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    bool? disableContentTypeDetection,
    bool? disableNotification,
    bool? protectContent,
    ReplyParameters? replyParameters,
    ReplyMarkup? replyMarkup,
    String? businessConnectionId,
    String? messageEffectId,
    bool? allowPaidBroadcast,
  }) async {
    api._addContext(this);
    _verifyInfo([_chatId], APIMethod.sendDocument);
    return api.sendDocument(
      id,
      document,
      messageThreadId: _threadId(messageThreadId),
      thumbnail: thumbnail,
      caption: caption,
      parseMode: parseMode,
      captionEntities: captionEntities,
      disableContentTypeDetection: disableContentTypeDetection,
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyParameters: replyParameters,
      replyMarkup: replyMarkup,
      businessConnectionId: businessConnectionId,
      messageEffectId: messageEffectId,
      allowPaidBroadcast: allowPaidBroadcast,
    );
  }

  /// Reply with a Video to the user.
  ///
  /// Provide an [InputFile] as [video]. Use the [InputFile.fromFile] or [InputFile.fromUrl] or [InputFile.fromFileId]
  /// constructors to create an [InputFile] from a file or a URL or a file ID.
  Future<Message> replyWithVideo(
    InputFile video, {
    int? messageThreadId,
    int? duration,
    int? width,
    int? height,
    InputFile? thumbnail,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    bool? hasSpoiler,
    bool? supportsStreaming,
    bool? disableNotification,
    bool? protectContent,
    ReplyParameters? replyParameters,
    ReplyMarkup? replyMarkup,
    String? businessConnectionId,
    String? messageEffectId,
    bool? showCaptionAboveMedia,
    bool? allowPaidBroadcast,
  }) async {
    api._addContext(this);
    _verifyInfo([_chatId], APIMethod.sendVideo);
    return api.sendVideo(
      id,
      video,
      messageThreadId: _threadId(messageThreadId),
      duration: duration,
      width: width,
      height: height,
      thumbnail: thumbnail,
      caption: caption,
      parseMode: parseMode,
      captionEntities: captionEntities,
      hasSpoiler: hasSpoiler,
      supportsStreaming: supportsStreaming,
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyParameters: replyParameters,
      replyMarkup: replyMarkup,
      businessConnectionId: businessConnectionId,
      messageEffectId: messageEffectId,
      showCaptionAboveMedia: showCaptionAboveMedia,
      allowPaidBroadcast: allowPaidBroadcast,
    );
  }

  /// Reply with a Video Note to the user.
  ///
  /// Provide an [InputFile] as [videoNote]. Use the [InputFile.fromFile] or [InputFile.fromUrl] or [InputFile.fromFileId]
  /// constructors to create an [InputFile] from a file or a URL or a file ID.
  Future<Message> replyWithVideoNote(
    InputFile videoNote, {
    int? messageThreadId,
    int? duration,
    int? length,
    InputFile? thumbnail,
    bool? disableNotification,
    bool? protectContent,
    ReplyParameters? replyParameters,
    ReplyMarkup? replyMarkup,
    String? businessConnectionId,
    String? messageEffectId,
    bool? allowPaidBroadcast,
  }) async {
    api._addContext(this);
    _verifyInfo([_chatId], APIMethod.sendVideoNote);
    return api.sendVideoNote(
      id,
      videoNote,
      messageThreadId: _threadId(messageThreadId),
      duration: duration,
      length: length,
      thumbnail: thumbnail,
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyParameters: replyParameters,
      replyMarkup: replyMarkup,
      businessConnectionId: businessConnectionId,
      messageEffectId: messageEffectId,
      allowPaidBroadcast: allowPaidBroadcast,
    );
  }

  /// Reply with a Voice to the user.
  ///
  /// Provide an [InputFile] as [voice]. Use the [InputFile.fromFile] or [InputFile.fromUrl] or [InputFile.fromFileId]
  /// constructors to create an [InputFile] from a file or a URL or a file ID.
  Future<Message> replyWithVoice(
    InputFile voice, {
    int? messageThreadId,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    int? duration,
    bool? disableNotification,
    bool? protectContent,
    ReplyParameters? replyParameters,
    ReplyMarkup? replyMarkup,
    String? businessConnectionId,
    String? messageEffectId,
    bool? allowPaidBroadcast,
  }) async {
    api._addContext(this);
    _verifyInfo([_chatId], APIMethod.sendVoice);
    return api.sendVoice(
      id,
      voice,
      messageThreadId: _threadId(messageThreadId),
      caption: caption,
      parseMode: parseMode,
      captionEntities: captionEntities,
      duration: duration,
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyParameters: replyParameters,
      replyMarkup: replyMarkup,
      businessConnectionId: businessConnectionId,
      messageEffectId: messageEffectId,
      allowPaidBroadcast: allowPaidBroadcast,
    );
  }

  /// Reply with a Media Group to the user.
  ///
  /// Provide a list of [InputMedia] as [media].
  /// constructors to create an [InputMedia] from a file or a URL or a file ID.
  Future<List<Message>> replyWithMediaGroup(
    List<InputMedia> media, {
    int? messageThreadId,
    bool? disableNotification,
    bool? protectContent,
    ReplyParameters? replyParameters,
    String? businessConnectionId,
    String? messageEffectId,
    bool? allowPaidBroadcast,
  }) async {
    api._addContext(this);
    _verifyInfo([_chatId], APIMethod.sendMediaGroup);
    return api.sendMediaGroup(
      id,
      media,
      messageThreadId: _threadId(messageThreadId),
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyParameters: replyParameters,
      businessConnectionId: businessConnectionId,
      messageEffectId: messageEffectId,
      allowPaidBroadcast: allowPaidBroadcast,
    );
  }

  /// Reply with a Location to the user.
  ///
  /// Provide a [latitude] and a [longitude] to send a location.
  Future<Message> replyWithLocation(
    double latitude,
    double longitude, {
    int? messageThreadId,
    double? horizontalAccuracy,
    int? livePeriod,
    int? heading,
    int? proximityAlertRadius,
    bool? disableNotification,
    bool? protectContent,
    ReplyParameters? replyParameters,
    ReplyMarkup? replyMarkup,
    String? businessConnectionId,
    String? messageEffectId,
    bool? allowPaidBroadcast,
  }) async {
    api._addContext(this);
    _verifyInfo([_chatId], APIMethod.sendLocation);
    return api.sendLocation(
      id,
      latitude,
      longitude,
      messageThreadId: _threadId(messageThreadId),
      horizontalAccuracy: horizontalAccuracy,
      livePeriod: livePeriod,
      heading: heading,
      proximityAlertRadius: proximityAlertRadius,
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyParameters: replyParameters,
      replyMarkup: replyMarkup,
      businessConnectionId: businessConnectionId,
      messageEffectId: messageEffectId,
      allowPaidBroadcast: allowPaidBroadcast,
    );
  }

  /// Reply with a Venue to the user.
  ///
  /// Provide a [latitude], a [longitude], a [title] and an [address] to send a venue.
  Future<Message> replyWithVenue(
    double latitude,
    double longitude,
    String title,
    String address, {
    int? messageThreadId,
    String? foursquareId,
    String? foursquareType,
    String? googlePlaceId,
    String? googlePlaceType,
    bool? disableNotification,
    bool? protectContent,
    ReplyParameters? replyParameters,
    ReplyMarkup? replyMarkup,
    String? businessConnectionId,
    String? messageEffectId,
    bool? allowPaidBroadcast,
  }) async {
    api._addContext(this);
    _verifyInfo([_chatId], APIMethod.sendVenue);
    return api.sendVenue(
      id,
      latitude,
      longitude,
      title,
      address,
      messageThreadId: _threadId(messageThreadId),
      foursquareId: foursquareId,
      foursquareType: foursquareType,
      googlePlaceId: googlePlaceId,
      googlePlaceType: googlePlaceType,
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyParameters: replyParameters,
      replyMarkup: replyMarkup,
      businessConnectionId: businessConnectionId,
      messageEffectId: messageEffectId,
      allowPaidBroadcast: allowPaidBroadcast,
    );
  }

  /// Reply with a Contact to the user.
  ///
  /// Provide a [phoneNumber], a [firstName] and an [lastName] to send a contact.
  Future<Message> replyWithContact(
    String phoneNumber,
    String firstName, {
    int? messageThreadId,
    String? lastName,
    String? vcard,
    bool? disableNotification,
    bool? protectContent,
    ReplyParameters? replyParameters,
    ReplyMarkup? replyMarkup,
    String? businessConnectionId,
    String? messageEffectId,
    bool? allowPaidBroadcast,
  }) async {
    api._addContext(this);
    _verifyInfo([_chatId], APIMethod.sendContact);
    return api.sendContact(
      id,
      phoneNumber,
      firstName,
      lastName: lastName,
      messageThreadId: _threadId(messageThreadId),
      vcard: vcard,
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyParameters: replyParameters,
      replyMarkup: replyMarkup,
      businessConnectionId: businessConnectionId,
      messageEffectId: messageEffectId,
      allowPaidBroadcast: allowPaidBroadcast,
    );
  }

  /// Reply with a Poll to the user.
  ///
  /// Provide a [question], a list of [options] and a [type] to send a poll.
  Future<Message> replyWithPoll(
    String question,
    List<InputPollOption> options, {
    int? messageThreadId,
    bool? isAnonymous,
    PollType type = PollType.regular,
    bool? allowsMultipleAnswers,
    int? correctOptionId,
    String? explanation,
    ParseMode? explanationParseMode,
    List<MessageEntity>? explanationEntities,
    int? openPeriod,
    DateTime? closeDate,
    bool? isClosed,
    bool? disableNotification,
    bool? protectContent,
    ReplyParameters? replyParameters,
    ReplyMarkup? replyMarkup,
    String? businessConnectionId,
    String? messageEffectId,
    bool? allowPaidBroadcast,
  }) async {
    api._addContext(this);
    _verifyInfo([_chatId], APIMethod.sendPoll);
    return api.sendPoll(
      id,
      question,
      options,
      messageThreadId: _threadId(messageThreadId),
      isAnonymous: isAnonymous,
      type: type,
      allowsMultipleAnswers: allowsMultipleAnswers,
      correctOptionId: correctOptionId,
      explanation: explanation,
      explanationParseMode: explanationParseMode,
      explanationEntities: explanationEntities,
      openPeriod: openPeriod,
      closeDate: closeDate,
      isClosed: isClosed,
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyParameters: replyParameters,
      replyMarkup: replyMarkup,
      businessConnectionId: businessConnectionId,
      messageEffectId: messageEffectId,
      allowPaidBroadcast: allowPaidBroadcast,
    );
  }

  /// Reply with a Dice to the user.
  ///
  /// Provide a [emoji] to send a dice.
  Future<Message> replyWithDice({
    DiceEmoji emoji = DiceEmoji.dice,
    int? messageThreadId,
    bool? disableNotification,
    bool? protectContent,
    ReplyParameters? replyParameters,
    ReplyMarkup? replyMarkup,
    String? businessConnectionId,
    String? messageEffectId,
    bool? allowPaidBroadcast,
  }) async {
    api._addContext(this);
    _verifyInfo([_chatId], APIMethod.sendDice);
    return api.sendDice(
      id,
      emoji: emoji,
      messageThreadId: _threadId(messageThreadId),
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyParameters: replyParameters,
      replyMarkup: replyMarkup,
      businessConnectionId: businessConnectionId,
      messageEffectId: messageEffectId,
      allowPaidBroadcast: allowPaidBroadcast,
    );
  }

  /// Reply with a Chat Action to the user.
  ///
  /// Provide a [action] to send a chat action.
  Future<bool> replyWithChatAction(
    ChatAction action, {
    int? messageThreadId,
    String? businessConnectionId,
  }) async {
    api._addContext(this);
    _verifyInfo([_chatId], APIMethod.sendChatAction);
    return api.sendChatAction(
      id,
      action,
      messageThreadId: _threadId(messageThreadId),
      businessConnectionId: businessConnectionId,
    );
  }

  /// Reply with a Game to the user.
  ///
  /// Provide a [shortName] to send a game.
  Future<Message> replyWithGame(
    String shortName, {
    int? messageThreadId,
    bool? disableNotification,
    bool? protectContent,
    ReplyParameters? replyParameters,
    ReplyMarkup? replyMarkup,
    String? businessConnectionId,
    String? messageEffectId,
    bool? allowPaidBroadcast,
  }) async {
    api._addContext(this);
    _verifyInfo([_chatId], APIMethod.sendGame);
    return api.sendGame(
      id,
      shortName,
      messageThreadId: _threadId(messageThreadId),
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyParameters: replyParameters,
      replyMarkup: replyMarkup,
      businessConnectionId: businessConnectionId,
      messageEffectId: messageEffectId,
      allowPaidBroadcast: allowPaidBroadcast,
    );
  }

  /// Reply with an Animation to the user.
  ///
  /// Provide an [animation] to send an animation.
  Future<Message> replyWithAnimation(
    InputFile animation, {
    int? messageThreadId,
    int? duration,
    int? width,
    int? height,
    InputFile? thumbnail,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    bool? hasSpoiler,
    bool? disableNotification,
    bool? protectContent,
    ReplyParameters? replyParameters,
    ReplyMarkup? replyMarkup,
    String? businessConnectionId,
    String? messageEffectId,
    bool? showCaptionAboveMedia,
    bool? allowPaidBroadcast,
  }) async {
    api._addContext(this);
    _verifyInfo([_chatId], APIMethod.sendAnimation);
    return api.sendAnimation(
      id,
      animation,
      messageThreadId: _threadId(messageThreadId),
      duration: duration,
      width: width,
      height: height,
      thumbnail: thumbnail,
      caption: caption,
      parseMode: parseMode,
      captionEntities: captionEntities,
      hasSpoiler: hasSpoiler,
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyParameters: replyParameters,
      replyMarkup: replyMarkup,
      businessConnectionId: businessConnectionId,
      messageEffectId: messageEffectId,
      showCaptionAboveMedia: showCaptionAboveMedia,
      allowPaidBroadcast: allowPaidBroadcast,
    );
  }

  /// Reply with a Sticker to the user.
  ///
  /// Provide a [sticker] to send a sticker.
  Future<Message> replyWithSticker(
    InputFile sticker, {
    int? messageThreadId,
    bool? disableNotification,
    bool? protectContent,
    ReplyParameters? replyParameters,
    InlineKeyboardMarkup? replyMarkup,
    String? businessConnectionId,
    String? messageEffectId,
    bool? allowPaidBroadcast,
  }) async {
    api._addContext(this);
    _verifyInfo([_chatId], APIMethod.sendSticker);
    return api.sendSticker(
      id,
      sticker,
      messageThreadId: _threadId(messageThreadId),
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyParameters: replyParameters,
      replyMarkup: replyMarkup,
      businessConnectionId: businessConnectionId,
      messageEffectId: messageEffectId,
      allowPaidBroadcast: allowPaidBroadcast,
    );
  }

  /// Delete the message.
  ///
  /// Use this method to delete the message received by the bot.
  Future<bool> deleteMessage() async {
    _verifyInfo([_chatId, _msgId], APIMethod.deleteMessage);
    return api.deleteMessage(
      id,
      _msgId!,
    );
  }

  /// Edit message live location
  ///
  /// This method will edit the message live location in the current context.
  Future<bool> editMessageLiveLocation({
    String? inlineMessageId,
    double? latitude,
    double? longitude,
    double? horizontalAccuracy,
    int? heading,
    int? proximityAlertRadius,
    InlineKeyboardMarkup? replyMarkup,
    String? businessConnectionId,
  }) async {
    api._addContext(this);
    if (!_isInline()) {
      _verifyInfo([_chatId, _msgId], APIMethod.editMessageLiveLocation);
    }

    await api._editMessageLiveLocation<_Ignore>(
      chatId: maybeId,
      messageId: _msgId,
      inlineMessageId: _inlineMsgId,
      latitude: latitude,
      longitude: longitude,
      horizontalAccuracy: horizontalAccuracy,
      heading: heading,
      proximityAlertRadius: proximityAlertRadius,
      replyMarkup: replyMarkup,
      businessConnectionId: businessConnectionId,
    );
    return true;
  }

  /// Forward the message.
  ///
  /// This method will forward the message in the current context.
  Future<Message> forwardMessage(
    ID chatId, {
    bool? disableNotification,
    int? messageThreadId,
    bool? protectContent,
  }) async {
    api._addContext(this);
    _verifyInfo([_chatId, _msgId], APIMethod.forwardMessage);
    return api.forwardMessage(
      chatId,
      id,
      _msgId!,
      messageThreadId: _threadId(messageThreadId),
      disableNotification: disableNotification,
      protectContent: protectContent,
    );
  }

  /// Get Author
  ///
  /// This method will get the chat member in the current context.
  Future<ChatMember> getAuthor() async {
    _verifyInfo([_chatId, from?.id], APIMethod.getChatMember);
    return api.getChatMember(id, from!.id);
  }

  /// hasText checks if the message has the given text.
  ///
  /// **Parameters:**
  /// - [text] - The text to check for, you can either pass a [String] or a [RegExp].
  ///
  /// Pass this if you want exact match for the text.
  ///
  /// - [texts] - List of [Pattern] to check for. If any of the strings match, it will return true.
  ///
  /// Returns true if the message text matches any of the patterns.
  bool hasText({Pattern? text, List<Pattern>? texts}) {
    // Ensure message text is available for comparison
    final messageText = msg?.text;
    if (messageText == null) return false;

    // Check for exact match with `text`
    if (text != null && text.allMatches(messageText).isNotEmpty) {
      return true;
    }

    // Check for matches with any text in `texts`
    if (texts != null &&
        texts.any((pattern) => pattern.allMatches(messageText).isNotEmpty)) {
      return true;
    }

    // No matches found
    return false;
  }

  /// React to the message with a reaction.
  Future<bool> react(
    String emoji, {
    bool? isBig,
  }) async {
    api._addContext(this);
    _verifyInfo([_chatId, _msgId], APIMethod.setMessageReaction);
    return api.setMessageReaction(
      id,
      _msgId!,
      reaction: [
        ReactionTypeEmoji(emoji: emoji),
      ],
      isBig: isBig,
    );
  }

  /// React to the message with multiple reactions.
  Future<bool> reactMultiple(
    List<String> emojis, {
    bool? isBig,
  }) async {
    api._addContext(this);
    _verifyInfo([_chatId, _msgId], APIMethod.setMessageReaction);
    return api.setMessageReaction(
      id,
      _msgId!,
      reaction: emojis
          .map(
            (e) => ReactionTypeEmoji(emoji: e),
          )
          .toList(),
      isBig: isBig,
    );
  }

  /// Context aware method to get chat member [APIMethod.getChatMember].
  Future<ChatMember> getChatMember(int userId) async {
    _verifyInfo([_chatId], APIMethod.getChatMember);
    return api.getChatMember(id, userId);
  }

  /// Context aware method for set chat sticker set [APIMethod.setChatStickerSet].
  Future<bool> setChatStickerSet(String stickerSetName) async {
    _verifyInfo([_chatId], APIMethod.setChatStickerSet);
    return api.setChatStickerSet(id, stickerSetName);
  }

  /// Context aware method for delete chat sticker set [APIMethod.deleteChatStickerSet].
  Future<bool> deleteChatStickerSet() async {
    _verifyInfo([_chatId], APIMethod.deleteChatStickerSet);
    return api.deleteChatStickerSet(id);
  }

  /// Context aware method for set chat title [APIMethod.setChatTitle].
  Future<bool> setChatTitle(String title) async {
    _verifyInfo([_chatId], APIMethod.setChatTitle);
    return api.setChatTitle(id, title);
  }

  /// Context aware method for set chat description [APIMethod.setChatDescription].
  Future<bool> setChatDescription(String description) async {
    _verifyInfo([_chatId], APIMethod.setChatDescription);
    return api.setChatDescription(id, description);
  }

  /// Context aware method for pin chat message [APIMethod.pinChatMessage].
  Future<bool> pinChatMessage(
    int messageId, {
    bool? disableNotification,
  }) async {
    api._addContext(this);
    _verifyInfo([_chatId], APIMethod.pinChatMessage);
    return api.pinChatMessage(
      id,
      messageId,
      disableNotification: disableNotification,
    );
  }

  /// Context aware method for pin the current message [APIMethod.pinChatMessage].
  Future<bool> pinThisMessage({
    bool? disableNotification,
  }) async {
    api._addContext(this);
    _verifyInfo([_chatId, _msgId], APIMethod.pinChatMessage);
    return api.pinChatMessage(
      id,
      _msgId!,
      disableNotification: disableNotification,
    );
  }

  /// Context aware method for unpin chat message [APIMethod.unpinChatMessage].
  Future<bool> unpinChatMessage(int messageId) async {
    _verifyInfo([_chatId], APIMethod.unpinChatMessage);
    return api.unpinChatMessage(id, messageId);
  }

  /// Context aware method for unpin the current message [APIMethod.unpinChatMessage].
  /// This will unpin the message in the current context.
  Future<bool> unpinThisMessage() async {
    _verifyInfo([_chatId, _msgId], APIMethod.unpinChatMessage);
    return api.unpinChatMessage(id, _msgId!);
  }

  /// Context aware method for creating a new forum topic [APIMethod.createForumTopic].
  Future<ForumTopic> createForumTopic(
    String name, {
    int? iconColor,
    String? iconCustomEmojiId,
  }) async {
    api._addContext(this);
    _verifyInfo([_chatId], APIMethod.createForumTopic);
    return api.createForumTopic(
      id,
      name,
      iconColor: iconColor,
      iconCustomEmojiId: iconCustomEmojiId,
    );
  }

  /// Context aware method for editing a forum topic [APIMethod.editForumTopic].
  ///
  /// If you want to edit a different forum topic, you can pass the [messageThreadId] parameter. Otherwise, the bot will edit the current forum topic.
  Future<bool> editForumTopic({
    int? messageThreadId,
    String? name,
    String? iconCustomEmojiId,
  }) async {
    api._addContext(this);
    _verifyInfo(
      [_chatId, _threadId(messageThreadId)],
      APIMethod.editForumTopic,
    );
    return api.editForumTopic(
      id,
      _threadId(messageThreadId)!,
      name: name,
      iconCustomEmojiId: iconCustomEmojiId,
    );
  }

  /// Context aware method for closing a forum topic [APIMethod.closeForumTopic].
  ///
  /// If you want to close a different forum topic, you can pass the [messageThreadId] parameter. Otherwise, the bot will close the current forum topic.
  Future<bool> closeForumTopic({
    int? messageThreadId,
  }) async {
    api._addContext(this);
    _verifyInfo(
      [_chatId, _threadId(messageThreadId)],
      APIMethod.closeForumTopic,
    );
    return api.closeForumTopic(
      id,
      _threadId(messageThreadId)!,
    );
  }

  /// Context aware method for reopening a forum topic [APIMethod.reopenForumTopic].
  ///
  /// If you want to reopen a different forum topic, you can pass the [messageThreadId] parameter. Otherwise, the bot will reopen the current forum topic.
  Future<bool> reopenForumTopic({
    int? messageThreadId,
  }) async {
    api._addContext(this);
    _verifyInfo(
      [_chatId, _threadId(messageThreadId)],
      APIMethod.reopenForumTopic,
    );
    return api.reopenForumTopic(
      id,
      _threadId(messageThreadId)!,
    );
  }

  /// Context aware method for deleting a forum topic [APIMethod.deleteForumTopic].
  ///
  /// If you want to delete a different forum topic, you can pass the [messageThreadId] parameter. Otherwise, the bot will delete the current forum topic.
  Future<bool> deleteForumTopic({
    int? messageThreadId,
  }) async {
    api._addContext(this);
    _verifyInfo(
      [_chatId, _threadId(messageThreadId)],
      APIMethod.deleteForumTopic,
    );
    return api.deleteForumTopic(
      id,
      _threadId(messageThreadId)!,
    );
  }

  /// Context aware method for unpinning all forum topic messages [APIMethod.unpinAllForumTopicMessages].
  ///
  /// If you want to unpin all forum topic messages of a different forum topic, you can pass the [messageThreadId] parameter. Otherwise, the bot will unpin all forum topic messages of the current forum topic.
  Future<bool> unpinAllForumTopicMessages({
    int? messageThreadId,
  }) async {
    api._addContext(this);
    _verifyInfo(
      [_chatId, _threadId(messageThreadId)],
      APIMethod.unpinAllForumTopicMessages,
    );
    return api.unpinAllForumTopicMessages(
      id,
      _threadId(messageThreadId)!,
    );
  }

  /// Context aware method for editing the general forum topic [APIMethod.editGeneralForumTopic].
  Future<bool> editGeneralForumTopic(
    String name,
  ) async {
    _verifyInfo([_chatId], APIMethod.editGeneralForumTopic);
    return api.editGeneralForumTopic(
      id,
      name,
    );
  }

  /// Context aware method for closing the general forum topic [APIMethod.closeGeneralForumTopic].
  Future<bool> closeGeneralForumTopic() async {
    _verifyInfo([_chatId], APIMethod.closeGeneralForumTopic);
    return api.closeGeneralForumTopic(id);
  }

  /// Context aware method for reopening the general forum topic [APIMethod.reopenGeneralForumTopic].
  Future<bool> reopenGeneralForumTopic() async {
    _verifyInfo([_chatId], APIMethod.reopenGeneralForumTopic);
    return api.reopenGeneralForumTopic(id);
  }

  /// Context aware method for hiding the general forum topic [APIMethod.hideGeneralForumTopic].
  Future<bool> hideGeneralForumTopic() async {
    _verifyInfo([_chatId], APIMethod.hideGeneralForumTopic);
    return api.hideGeneralForumTopic(id);
  }

  /// Context aware method for unhiding the general forum topic [APIMethod.unhideGeneralForumTopic].
  Future<bool> unhideGeneralForumTopic() async {
    _verifyInfo([_chatId], APIMethod.unhideGeneralForumTopic);
    return api.unhideGeneralForumTopic(id);
  }

  /// Context aware method for unpinning all general forum topic messages [APIMethod.unpinAllGeneralForumTopicMessages].
  Future<bool> unpinAllGeneralForumTopicMessages() async {
    _verifyInfo([_chatId], APIMethod.unpinAllGeneralForumTopicMessages);
    return api.unpinAllGeneralForumTopicMessages(id);
  }

  /// Context aware method for answering a callback query [APIMethod.answerCallbackQuery].
  Future<bool> answerCallbackQuery({
    String? text,
    bool showAlert = false,
    String? url,
    int cacheTime = 0,
  }) async {
    api._addContext(this);
    _verifyInfo([callbackQuery?.id], APIMethod.answerCallbackQuery);
    return api.answerCallbackQuery(
      callbackQuery!.id,
      text: text,
      showAlert: showAlert,
      url: url,
      cacheTime: cacheTime,
    );
  }

  /// Context aware method for copying a message [APIMethod.copyMessage].
  Future<MessageId> copyMessage(
    ID chatId, {
    int? messageThreadId,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    bool? disableNotification,
    bool? protectContent,
    ReplyMarkup? replyMarkup,
    ReplyParameters? replyParameters,
    bool? showCaptionAboveMedia,
    bool? allowPaidBroadcast,
  }) async {
    api._addContext(this);
    _verifyInfo([_chatId, _msgId], APIMethod.copyMessage);
    return api.copyMessage(
      chatId,
      id,
      _msgId!,
      messageThreadId: _threadId(messageThreadId),
      caption: caption,
      parseMode: parseMode,
      captionEntities: captionEntities,
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyMarkup: replyMarkup,
      replyParameters: replyParameters,
      showCaptionAboveMedia: showCaptionAboveMedia,
      allowPaidBroadcast: allowPaidBroadcast,
    );
  }

  /// Context aware method for editing live location of inline message [APIMethod.editMessageLiveLocation].
  Future<bool> editInlineMessageLiveLocation({
    double? latitude,
    double? longitude,
    double? horizontalAccuracy,
    int? heading,
    int? proximityAlertRadius,
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    api._addContext(this);
    _verifyInfo([_inlineMsgId], APIMethod.editMessageLiveLocation);
    return api.editInlineMessageLiveLocation(
      _inlineMsgId!,
      latitude: latitude,
      longitude: longitude,
      horizontalAccuracy: horizontalAccuracy,
      heading: heading,
      proximityAlertRadius: proximityAlertRadius,
      replyMarkup: replyMarkup,
    );
  }

  /// Context aware method for stopping live location of message: [APIMethod.stopMessageLiveLocation].
  ///
  /// Use this method to stop updating a live location message before live_period expires. On success, if the message is not an inline message, the edited Message is returned, otherwise True is returned.
  Future<bool> stopMessageLiveLocation({
    InlineKeyboardMarkup? replyMarkup,
    String? businessConnectionId,
  }) async {
    api._addContext(this);
    if (!_isInline()) {
      _verifyInfo([_chatId, _msgId], APIMethod.stopMessageLiveLocation);
    }

    await api._stopMessageLiveLocation<_Ignore>(
      chatId: id,
      messageId: _msgId,
      inlineMessageId: _inlineMsgId,
      replyMarkup: replyMarkup,
      businessConnectionId: businessConnectionId,
    );

    return true;
  }

  /// Context aware method for send "Typing..." action: [APIMethod.sendChatAction].
  Future<bool> sendTyping() async {
    _verifyInfo([_chatId], APIMethod.sendChatAction);
    return replyWithChatAction(ChatAction.typing);
  }

  /// Context aware method for getting users profile photos: [APIMethod.getUserProfilePhotos].
  Future<UserProfilePhotos> getUserProfilePhotos({
    int? offset,
    int? limit,
  }) async {
    api._addContext(this);
    _verifyInfo([from?.id], APIMethod.getUserProfilePhotos);
    return api.getUserProfilePhotos(
      from!.id,
      offset: offset,
      limit: limit,
    );
  }

  /// Context aware method for getting file: [APIMethod.getFile].
  ///
  /// This method will return the file in the current context.
  Future<File> getFile() async {
    _verifyInfo([_fileId], APIMethod.getFile);
    return api.getFile(_fileId!);
  }

  /// Context aware method for banning a user: [APIMethod.banChatMember].
  Future<bool> banChatMember(
    int userId, {
    DateTime? untilDate,
    bool? revokeMessages,
  }) async {
    api._addContext(this);
    _verifyInfo([_chatId], APIMethod.banChatMember);
    return api.banChatMember(
      id,
      userId,
      untilDate: untilDate,
      revokeMessages: revokeMessages,
    );
  }

  /// Context aware method for unbanning a user: [APIMethod.unbanChatMember].
  Future<bool> unbanChatMember(
    int userId, {
    bool? onlyIfBanned,
  }) async {
    api._addContext(this);
    _verifyInfo([_chatId], APIMethod.unbanChatMember);
    return api.unbanChatMember(
      id,
      userId,
      onlyIfBanned: onlyIfBanned,
    );
  }

  /// Ban the author of the message.
  /// This method will ban the author of the message in the current context.
  Future<bool> banAuthor({
    DateTime? untilDate,
    bool? revokeMessages,
  }) async {
    api._addContext(this);
    _verifyInfo([_chatId, from?.id], APIMethod.banChatMember);
    return api.banChatMember(
      id,
      from!.id,
      untilDate: untilDate,
      revokeMessages: revokeMessages,
    );
  }

  /// Unban the author of the message.
  /// This method will unban the author of the message in the current context.
  Future<bool> unbanAuthor({
    bool? onlyIfBanned,
  }) async {
    api._addContext(this);
    _verifyInfo([_chatId, from?.id], APIMethod.unbanChatMember);
    return api.unbanChatMember(
      id,
      from!.id,
      onlyIfBanned: onlyIfBanned,
    );
  }

  /// Restrict a user in the current context.
  Future<bool> restrictChatMember(
    int userId,
    ChatPermissions permissions, {
    DateTime? untilDate,
    bool? useIndependentChatPermissions,
  }) async {
    api._addContext(this);
    _verifyInfo([_chatId], APIMethod.restrictChatMember);
    return api.restrictChatMember(
      id,
      userId,
      permissions,
      untilDate: untilDate,
      useIndependentChatPermissions: useIndependentChatPermissions,
    );
  }

  /// Restrict the author of the message in the current context.
  Future<bool> restrictAuthor(
    ChatPermissions permissions, {
    DateTime? untilDate,
    bool? useIndependentChatPermissions,
  }) async {
    api._addContext(this);
    _verifyInfo([_chatId, from?.id], APIMethod.restrictChatMember);
    return api.restrictChatMember(
      id,
      from!.id,
      permissions,
      untilDate: untilDate,
      useIndependentChatPermissions: useIndependentChatPermissions,
    );
  }

  /// Promote a user in the current context.
  /// This method will promote the user in the current context.
  Future<bool> promoteChatMember(
    int userId, {
    bool? isAnonymous,
    bool? canManageChat,
    bool? canPostMessages,
    bool? canEditMessages,
    bool? canDeleteMessages,
    bool? canManageVideoChats,
    bool? canRestrictMembers,
    bool? canPromoteMembers,
    bool? canChangeInfo,
    bool? canInviteUsers,
    bool? canPinMessages,
    bool? canManageTopics,
    bool? canPostStories,
    bool? canEditStories,
    bool? canDeleteStories,
  }) async {
    api._addContext(this);
    _verifyInfo([_chatId], APIMethod.promoteChatMember);
    return api.promoteChatMember(
      id,
      userId,
      isAnonymous: isAnonymous,
      canManageChat: canManageChat,
      canPostMessages: canPostMessages,
      canEditMessages: canEditMessages,
      canDeleteMessages: canDeleteMessages,
      canManageVideoChats: canManageVideoChats,
      canRestrictMembers: canRestrictMembers,
      canPromoteMembers: canPromoteMembers,
      canChangeInfo: canChangeInfo,
      canInviteUsers: canInviteUsers,
      canPinMessages: canPinMessages,
      canManageTopics: canManageTopics,
      canPostStories: canPostStories,
      canEditStories: canEditStories,
      canDeleteStories: canDeleteStories,
    );
  }

  /// Promote the author of the message in the current context.
  /// This method will promote the author of the message in the current context.
  Future<bool> promoteAuthor({
    bool? isAnonymous,
    bool? canManageChat,
    bool? canPostMessages,
    bool? canEditMessages,
    bool? canDeleteMessages,
    bool? canManageVideoChats,
    bool? canRestrictMembers,
    bool? canPromoteMembers,
    bool? canChangeInfo,
    bool? canInviteUsers,
    bool? canPinMessages,
    bool? canManageTopics,
    bool? canPostStories,
    bool? canEditStories,
    bool? canDeleteStories,
  }) async {
    api._addContext(this);
    _verifyInfo([_chatId, from?.id], APIMethod.promoteChatMember);
    return api.promoteChatMember(
      id,
      from!.id,
      isAnonymous: isAnonymous,
      canManageChat: canManageChat,
      canPostMessages: canPostMessages,
      canEditMessages: canEditMessages,
      canDeleteMessages: canDeleteMessages,
      canManageVideoChats: canManageVideoChats,
      canRestrictMembers: canRestrictMembers,
      canPromoteMembers: canPromoteMembers,
      canChangeInfo: canChangeInfo,
      canInviteUsers: canInviteUsers,
      canPinMessages: canPinMessages,
      canManageTopics: canManageTopics,
      canPostStories: canPostStories,
      canEditStories: canEditStories,
      canDeleteStories: canDeleteStories,
    );
  }

  /// Set the chat administrator custom title.
  Future<bool> setChatAdministratorCustomTitle(
    int userId,
    String customTitle,
  ) async {
    _verifyInfo([_chatId], APIMethod.setChatAdministratorCustomTitle);
    return api.setChatAdministratorCustomTitle(
      id,
      userId,
      customTitle,
    );
  }

  /// Set the chat administrator custom title of the author of the message.
  Future<bool> setChatAdministratorCustomTitleOfAuthor(
    String customTitle,
  ) async {
    _verifyInfo([_chatId, from?.id], APIMethod.setChatAdministratorCustomTitle);
    return api.setChatAdministratorCustomTitle(
      id,
      from!.id,
      customTitle,
    );
  }

  /// Set the chat permissions.
  Future<bool> setChatPermissions(
    ChatPermissions permissions, {
    bool? useIndependentChatPermissions,
  }) async {
    api._addContext(this);
    _verifyInfo([_chatId], APIMethod.setChatPermissions);
    return api.setChatPermissions(
      id,
      permissions,
      useIndependentChatPermissions: useIndependentChatPermissions,
    );
  }

  /// Export the chat invite link.
  Future<String> exportChatInviteLink() async {
    _verifyInfo([_chatId], APIMethod.exportChatInviteLink);
    return api.exportChatInviteLink(id);
  }

  /// Create a chat invite link.
  Future<ChatInviteLink> createChatInviteLink({
    String? name,
    DateTime? expireDate,
    int? memberLimit,
    bool? createsJoinRequest,
  }) async {
    api._addContext(this);
    _verifyInfo([_chatId], APIMethod.createChatInviteLink);
    return api.createChatInviteLink(
      id,
      name: name,
      expireDate: expireDate,
      memberLimit: memberLimit,
      createsJoinRequest: createsJoinRequest,
    );
  }

  /// Edit chat invite link.
  Future<ChatInviteLink> editChatInviteLink(
    String inviteLink, {
    String? name,
    DateTime? expireDate,
    int? memberLimit,
    bool? createsJoinRequest,
  }) async {
    api._addContext(this);
    _verifyInfo([_chatId], APIMethod.editChatInviteLink);
    return api.editChatInviteLink(
      id,
      inviteLink,
      name: name,
      expireDate: expireDate,
      memberLimit: memberLimit,
      createsJoinRequest: createsJoinRequest,
    );
  }

  /// Revoke chat invite link.
  Future<ChatInviteLink> revokeChatInviteLink(
    String inviteLink,
  ) async {
    _verifyInfo([_chatId], APIMethod.revokeChatInviteLink);
    return api.revokeChatInviteLink(
      id,
      inviteLink,
    );
  }

  /// Approve the chat join request.
  ///
  /// Optionally, you can pass the [userId] parameter to approve the join request of a specific user. If you don't pass the [userId] parameter, the bot will approve the join request of the user who sent the current join request.
  Future<bool> approveChatJoinRequest({
    int? userId,
  }) async {
    api._addContext(this);
    _verifyInfo(
      [_chatId, userId ?? from?.id],
      APIMethod.approveChatJoinRequest,
    );
    return api.approveChatJoinRequest(
      id,
      userId ?? from!.id,
    );
  }

  /// Decline the chat join request.
  Future<bool> declineChatJoinRequest({
    int? userId,
  }) async {
    api._addContext(this);
    _verifyInfo(
      [_chatId, userId ?? from?.id],
      APIMethod.declineChatJoinRequest,
    );
    return api.declineChatJoinRequest(
      id,
      userId ?? from!.id,
    );
  }

  /// Set the chat photo.
  Future<bool> setChatPhoto(
    InputFile photo,
  ) async {
    _verifyInfo([_chatId], APIMethod.setChatPhoto);
    return api.setChatPhoto(
      id,
      photo,
    );
  }

  /// Delete the chat photo.
  Future<bool> deleteChatPhoto() async {
    _verifyInfo([_chatId], APIMethod.deleteChatPhoto);
    return api.deleteChatPhoto(id);
  }

  /// Unpin all messages in the chat.
  Future<bool> unpinAllMessages() async {
    _verifyInfo([_chatId], APIMethod.unpinAllChatMessages);
    return api.unpinAllChatMessages(id);
  }

  /// Leave the chat.
  Future<bool> leaveChat() async {
    _verifyInfo([_chatId], APIMethod.leaveChat);
    return api.leaveChat(id);
  }

  /// Get information about the chat.
  Future<ChatFullInfo> getChat() async {
    _verifyInfo([_chatId], APIMethod.getChat);
    return api.getChat(id);
  }

  /// Get the list of administrators in the chat, which aren't bots.
  Future<List<ChatMember>> getChatAdministrators() async {
    _verifyInfo([_chatId], APIMethod.getChatAdministrators);
    return api.getChatAdministrators(id);
  }

  /// Get the number of members in the chat.
  Future<int> getChatMembersCount() async {
    _verifyInfo([_chatId], APIMethod.getChatMembersCount);
    return api.getChatMembersCount(id);
  }

  /// Change the list of bot's commands.
  Future<bool> setMyCommands(
    List<BotCommand> commands, {
    BotCommandScope? scope,
    String? languageCode,
  }) async {
    api._addContext(this);
    _verifyInfo([_chatId], APIMethod.setMyCommands);
    return api.setMyCommands(
      commands,
      scope: scope,
      languageCode: languageCode,
    );
  }

  /// Delete the list of bot's commands for the given scope and user language.
  Future<bool> deleteMyCommands({
    BotCommandScope? scope,
    String? languageCode,
  }) async {
    api._addContext(this);
    _verifyInfo([_chatId], APIMethod.deleteMyCommands);
    return api.deleteMyCommands(
      scope: scope,
      languageCode: languageCode,
    );
  }

  /// Get the current list of bot's commands for the given scope and user language.
  Future<List<BotCommand>> getMyCommands({
    BotCommandScope? scope,
    String? languageCode,
  }) async {
    api._addContext(this);
    _verifyInfo([_chatId], APIMethod.getMyCommands);
    return api.getMyCommands(
      scope: scope,
      languageCode: languageCode,
    );
  }

  /// Set the bot's menu button for this chat (must be a private chat).
  Future<bool> setChatMenuButton(MenuButton menuButton) async {
    _verifyInfo([_chatId], APIMethod.setChatMenuButton);
    return api.setChatMenuButton(menuButton, chatId: id);
  }

  /// Get the current chat menu button
  Future<MenuButton> getChatMenuButton() async {
    _verifyInfo([_chatId], APIMethod.getChatMenuButton);
    return api.getChatMenuButton(id);
  }

  /// Set bot's default administrator rights
  Future<bool> setMyDefaultAdministratorRights(
    ChatAdministratorRights? rights,
    bool? forChannels,
  ) async {
    _verifyInfo([_chatId], APIMethod.setMyDefaultAdministratorRights);
    return api.setMyDefaultAdministratorRights(
      rights: rights,
      forChannels: forChannels,
    );
  }

  /// Get bot's default administrator rights
  Future<ChatAdministratorRights> getMyDefaultAdministratorRights({
    bool? forChannels,
  }) async {
    api._addContext(this);
    _verifyInfo([_chatId], APIMethod.getMyDefaultAdministratorRights);
    return api.getMyDefaultAdministratorRights(
      forChannels: forChannels,
    );
  }

  bool _isInline() {
    return _inlineMsgId != null;
  }

  /// Edit the message text. Returns True on success.
  Future<bool> editMessageText(
    String text, {
    ParseMode? parseMode,
    List<MessageEntity>? entities,
    InlineKeyboardMarkup? replyMarkup,
    LinkPreviewOptions? linkPreviewOptions,
    String? businessConnectionId,
  }) async {
    api._addContext(this);
    if (!_isInline()) {
      _verifyInfo([_chatId, _msgId], APIMethod.editMessageText);
    }

    await api._editMessageText<_Ignore>(
      text: text,
      chatId: maybeId,
      inlineMessageId: _inlineMsgId,
      messageId: _msgId,
      parseMode: parseMode,
      entities: entities,
      replyMarkup: replyMarkup,
      linkPreviewOptions: linkPreviewOptions,
      businessConnectionId: businessConnectionId,
    );

    return true;
  }

  /// Edit the message caption. Returns `true` on success.
  Future<bool> editMessageCaption({
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    InlineKeyboardMarkup? replyMarkup,
    bool? showCaptionAboveMedia,
    String? businessConnectionId,
  }) async {
    api._addContext(this);
    if (!_isInline()) {
      _verifyInfo([_chatId, _msgId], APIMethod.editMessageCaption);
    }

    await api._editMessageCaption<_Ignore>(
      chatId: maybeId,
      messageId: _msgId,
      inlineMessageId: _inlineMsgId,
      caption: caption,
      parseMode: parseMode,
      captionEntities: captionEntities,
      replyMarkup: replyMarkup,
      showCaptionAboveMedia: showCaptionAboveMedia,
      businessConnectionId: businessConnectionId,
    );

    return true;
  }

  /// Edit the message media
  /// Use this method to edit animation, audio, document, photo, or video messages.
  ///
  /// This method ignores the result and always returns True on success.
  Future<bool> editMessageMedia(
    InputMedia media, {
    InlineKeyboardMarkup? replyMarkup,
    String? businessConnectionId,
  }) async {
    api._addContext(this);
    if (!_isInline()) {
      _verifyInfo([_chatId, _msgId], APIMethod.editMessageMedia);
    }

    await api._editMessageMedia<_Ignore>(
      inlineMessageId: _inlineMsgId,
      chatId: maybeId,
      messageId: _msgId,
      media: media,
      replyMarkup: replyMarkup,
      businessConnectionId: businessConnectionId,
    );

    return true;
  }

  /// Edit the message reply markup
  /// Use this method to edit only the reply markup of messages.
  Future<bool> editMessageReplyMarkup({
    InlineKeyboardMarkup? replyMarkup,
    String? businessConnectionId,
  }) async {
    api._addContext(this);
    if (!_isInline()) {
      _verifyInfo([_chatId, _msgId], APIMethod.editMessageReplyMarkup);
    }

    await api._editMessageReplyMarkup<_Ignore>(
      chatId: maybeId,
      messageId: _msgId,
      inlineMessageId: _inlineMsgId,
      replyMarkup: replyMarkup,
      businessConnectionId: businessConnectionId,
    );

    return true;
  }

  /// Answer inline query
  ///
  /// Use this method to send answers to an inline query. On success, True is returned.
  Future<bool> answerInlineQuery(
    List<InlineQueryResult> results, {
    int? cacheTime = 300,
    bool? isPersonal,
    String? nextOffset,
    InlineQueryResultsButton? button,
  }) async {
    api._addContext(this);
    _verifyInfo([inlineQuery?.id], APIMethod.answerInlineQuery);
    return api.answerInlineQuery(
      inlineQuery!.id,
      results,
      cacheTime: cacheTime,
      isPersonal: isPersonal,
      nextOffset: nextOffset,
      button: button,
    );
  }

  /// Anwer a web app query
  ///
  /// Use this method to set the result of an interaction with a Web App and send a corresponding message on behalf of the user to the chat from which the query originated. On success, a [SentWebAppMessage] object is returned.
  Future<SentWebAppMessage> answerWebAppQuery(
    String webAppQueryId,
    InlineQueryResult result,
  ) async {
    _verifyInfo([], APIMethod.answerWebAppQuery);
    return api.answerWebAppQuery(
      webAppQueryId,
      result,
    );
  }

  /// Send invoice to the chat
  Future<Message> sendInvoice({
    required String title,
    required String description,
    required String payload,
    String? providerToken,
    required String currency,
    required List<LabeledPrice> prices,
    int? messageThreadId,
    int? maxTipAmount = 0,
    List<int>? suggestedTipAmounts,
    String? startParameter,
    String? providerData,
    String? photoUrl,
    int? photoSize,
    int? photoWidth,
    int? photoHeight,
    bool? needName,
    bool? needPhoneNumber,
    bool? needEmail,
    bool? needShippingAddress,
    bool? sendPhoneNumberToProvider,
    bool? sendEmailToProvider,
    bool? isFlexible,
    bool? disableNotification,
    bool? protectContent,
    InlineKeyboardMarkup? replyMarkup,
    ReplyParameters? replyParameters,
    String? messageEffectId,
    bool? allowPaidBroadcast,
  }) async {
    api._addContext(this);
    _verifyInfo([_chatId], APIMethod.sendInvoice);
    return api.sendInvoice(
      id,
      title: title,
      description: description,
      payload: payload,
      providerToken: providerToken,
      currency: currency,
      prices: prices,
      messageThreadId: _threadId(messageThreadId),
      maxTipAmount: maxTipAmount,
      suggestedTipAmounts: suggestedTipAmounts,
      startParameter: startParameter,
      providerData: providerData,
      photoUrl: photoUrl,
      photoSize: photoSize,
      photoWidth: photoWidth,
      photoHeight: photoHeight,
      needName: needName,
      needPhoneNumber: needPhoneNumber,
      needEmail: needEmail,
      needShippingAddress: needShippingAddress,
      sendPhoneNumberToProvider: sendPhoneNumberToProvider,
      sendEmailToProvider: sendEmailToProvider,
      isFlexible: isFlexible,
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyMarkup: replyMarkup,
      replyParameters: replyParameters,
      messageEffectId: messageEffectId,
      allowPaidBroadcast: allowPaidBroadcast,
    );
  }

  /// Create invoice link
  Future<String> createInvoiceLink({
    required String title,
    required String description,
    required String payload,
    String? providerToken,
    required String currency,
    required List<LabeledPrice> prices,
    int? maxTipAmount = 0,
    List<int>? suggestedTipAmounts,
    String? providerData,
    String? photoUrl,
    int? photoSize,
    int? photoWidth,
    int? photoHeight,
    bool? needName,
    bool? needPhoneNumber,
    bool? needEmail,
    bool? needShippingAddress,
    bool? sendPhoneNumberToProvider,
    bool? sendEmailToProvider,
    bool? isFlexible,
  }) async {
    api._addContext(this);
    return api.createInvoiceLink(
      title: title,
      description: description,
      payload: payload,
      providerToken: providerToken,
      currency: currency,
      prices: prices,
      maxTipAmount: maxTipAmount,
      suggestedTipAmounts: suggestedTipAmounts,
      providerData: providerData,
      photoUrl: photoUrl,
      photoSize: photoSize,
      photoWidth: photoWidth,
      photoHeight: photoHeight,
      needName: needName,
      needPhoneNumber: needPhoneNumber,
      needEmail: needEmail,
      needShippingAddress: needShippingAddress,
      sendPhoneNumberToProvider: sendPhoneNumberToProvider,
      sendEmailToProvider: sendEmailToProvider,
      isFlexible: isFlexible,
    );
  }

  /// Answer the incoming shipping query
  Future<bool> answerShippingQuery(
    bool ok, {
    List<ShippingOption>? shippingOptions,
    String? errorMessage,
  }) async {
    api._addContext(this);
    _verifyInfo([shippingQuery?.id], APIMethod.answerShippingQuery);
    return api.answerShippingQuery(
      shippingQuery!.id,
      ok,
      shippingOptions: shippingOptions,
      errorMessage: errorMessage,
    );
  }

  /// Answer pre checkout query
  Future<bool> answerPreCheckouQuery(
    bool ok, {
    String? errorMessage,
  }) async {
    api._addContext(this);
    _verifyInfo([preCheckoutQuery?.id], APIMethod.answerPreCheckoutQuery);
    return api.answerPreCheckoutQuery(
      preCheckoutQuery!.id,
      ok,
      errorMessage: errorMessage,
    );
  }

  /// Set my description
  Future<bool> setMyDescription({
    String? description,
    String? languageCode,
  }) async {
    api._addContext(this);
    return api.setMyDescription(
      description: description,
      languageCode: languageCode,
    );
  }

  /// Set my short description
  Future<bool> setMyShortDescription({
    String? shortDescription,
    String? languageCode,
  }) async {
    api._addContext(this);
    return api.setMyShortDescription(
      shortDescription: shortDescription,
      languageCode: languageCode,
    );
  }

  /// Set my name
  Future<bool> setMyName({
    String? name,
    String? languageCode,
  }) async {
    api._addContext(this);
    return api.setMyName(
      name: name,
      languageCode: languageCode,
    );
  }

  /// Sends paid media to a specified chat.
  Future<Message> replyWithPaidMedia(
    int starCount,
    List<InputPaidMedia> media, {
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    bool? showCaptionAboveMedia,
    bool? disableNotification,
    bool? protectContent,
    ReplyParameters? replyParameters,
    ReplyMarkup? replyMarkup,
  }) async {
    api._addContext(this);
    _verifyInfo([_chatId], APIMethod.sendPaidMedia);

    return api.sendPaidMedia(
      id,
      starCount,
      media,
      caption: caption,
      parseMode: parseMode,
      captionEntities: captionEntities,
      showCaptionAboveMedia: showCaptionAboveMedia,
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyParameters: replyParameters,
      replyMarkup: replyMarkup,
    );
  }

  /// Context Aware method for sending a gift to the author of the message.
  ///
  /// This method depends on the `from` parameter of the incoming update.
  Future<bool> sendGift(
    String giftId, {
    String? text,
    ParseMode? textParseMode,
    List<MessageEntity>? textEntities,
  }) async {
    api._addContext(this);
    _verifyInfo([_from?.id], APIMethod.sendGift);

    return api.sendGift(
      userId: _from!.id,
      giftId: giftId,
      text: text,
      textParseMode: textParseMode,
      textEntities: textEntities,
    );
  }

  /// Get the available gifts for the user
  Future<Gifts> getAvailableGifts() async {
    api._addContext(this);
    return api.getAvailableGifts();
  }
}
