part of televerse.context;

/// Mixin for sending messages.
///
/// This mixin contains methods for sending messages to the user.
/// That includes methods like [reply], [replyWithPhoto], [replyWithAudio],
/// [replyWithDocument], [replyWithVideo], [replyWithAnimation], [replyWithVoice],
/// [replyWithVideoNote], [replyWithMediaGroup], [replyWithLocation], [replyWithVenue],
/// [replyWithContact], [replyWithDice], [replyWithPoll], [replyWithChatAction],
/// [replyWithGame], [replyWithSticker],
mixin MessageMixin on Context {
  /// Reply a Text Message to the user.
  Future<Message> reply(
    String text, {
    int? messageThreadId,
    ParseMode? parseMode,
    List<MessageEntity>? entities,
    bool? disableWebPagePreview,
    bool? disableNotification,
    bool? protectContent,
    int? replyToMessageId,
    bool? allowSendingWithoutReply,
    ReplyMarkup? replyMarkup,
  }) async {
    return await api.sendMessage(
      id,
      text,
      messageThreadId: messageThreadId,
      parseMode: parseMode,
      entities: entities,
      disableWebPagePreview: disableWebPagePreview,
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyToMessageId: replyToMessageId,
      allowSendingWithoutReply: allowSendingWithoutReply,
      replyMarkup: replyMarkup,
    );
  }

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
    int? replyToMessageId,
    bool? allowSendingWithoutReply,
    ReplyMarkup? replyMarkup,
  }) async {
    return await api.sendPhoto(
      id,
      photo,
      messageThreadId: messageThreadId,
      caption: caption,
      parseMode: parseMode,
      captionEntities: captionEntities,
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyToMessageId: replyToMessageId,
      allowSendingWithoutReply: allowSendingWithoutReply,
      replyMarkup: replyMarkup,
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
    int? replyToMessageId,
    bool? allowSendingWithoutReply,
    ReplyMarkup? replyMarkup,
  }) async {
    return await api.sendAudio(
      id,
      audio,
      messageThreadId: messageThreadId,
      caption: caption,
      parseMode: parseMode,
      captionEntities: captionEntities,
      duration: duration,
      performer: performer,
      title: title,
      thumbnail: thumbnail,
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyToMessageId: replyToMessageId,
      allowSendingWithoutReply: allowSendingWithoutReply,
      replyMarkup: replyMarkup,
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
    int? replyToMessageId,
    bool? allowSendingWithoutReply,
    ReplyMarkup? replyMarkup,
  }) async {
    return await api.sendDocument(
      id,
      document,
      messageThreadId: messageThreadId,
      thumbnail: thumbnail,
      caption: caption,
      parseMode: parseMode,
      captionEntities: captionEntities,
      disableContentTypeDetection: disableContentTypeDetection,
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyToMessageId: replyToMessageId,
      allowSendingWithoutReply: allowSendingWithoutReply,
      replyMarkup: replyMarkup,
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
    int? replyToMessageId,
    bool? allowSendingWithoutReply,
    ReplyMarkup? replyMarkup,
  }) async {
    return await api.sendVideo(
      id,
      video,
      messageThreadId: messageThreadId,
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
      replyToMessageId: replyToMessageId,
      allowSendingWithoutReply: allowSendingWithoutReply,
      replyMarkup: replyMarkup,
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
    int? replyToMessageId,
    bool? allowSendingWithoutReply,
    ReplyMarkup? replyMarkup,
  }) async {
    return await api.sendVideoNote(
      id,
      videoNote,
      messageThreadId: messageThreadId,
      duration: duration,
      length: length,
      thumbnail: thumbnail,
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyToMessageId: replyToMessageId,
      allowSendingWithoutReply: allowSendingWithoutReply,
      replyMarkup: replyMarkup,
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
    int? replyToMessageId,
    bool? allowSendingWithoutReply,
    ReplyMarkup? replyMarkup,
  }) async {
    return await api.sendVoice(
      id,
      voice,
      messageThreadId: messageThreadId,
      caption: caption,
      parseMode: parseMode,
      captionEntities: captionEntities,
      duration: duration,
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyToMessageId: replyToMessageId,
      allowSendingWithoutReply: allowSendingWithoutReply,
      replyMarkup: replyMarkup,
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
    int? replyToMessageId,
    bool? allowSendingWithoutReply,
  }) async {
    return await api.sendMediaGroup(
      id,
      media,
      messageThreadId: messageThreadId,
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyToMessageId: replyToMessageId,
      allowSendingWithoutReply: allowSendingWithoutReply,
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
    int? replyToMessageId,
    bool? allowSendingWithoutReply,
    ReplyMarkup? replyMarkup,
  }) async {
    return await api.sendLocation(
      id,
      latitude,
      longitude,
      messageThreadId: messageThreadId,
      horizontalAccuracy: horizontalAccuracy,
      livePeriod: livePeriod,
      heading: heading,
      proximityAlertRadius: proximityAlertRadius,
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyToMessageId: replyToMessageId,
      allowSendingWithoutReply: allowSendingWithoutReply,
      replyMarkup: replyMarkup,
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
    int? replyToMessageId,
    bool? allowSendingWithoutReply,
    ReplyMarkup? replyMarkup,
  }) async {
    return await api.sendVenue(
      id,
      latitude,
      longitude,
      title,
      address,
      messageThreadId: messageThreadId,
      foursquareId: foursquareId,
      foursquareType: foursquareType,
      googlePlaceId: googlePlaceId,
      googlePlaceType: googlePlaceType,
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyToMessageId: replyToMessageId,
      allowSendingWithoutReply: allowSendingWithoutReply,
      replyMarkup: replyMarkup,
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
    int? replyToMessageId,
    bool? allowSendingWithoutReply,
    ReplyMarkup? replyMarkup,
  }) async {
    return await api.sendContact(
      id,
      phoneNumber,
      firstName,
      lastName: lastName,
      messageThreadId: messageThreadId,
      vcard: vcard,
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyToMessageId: replyToMessageId,
      allowSendingWithoutReply: allowSendingWithoutReply,
      replyMarkup: replyMarkup,
    );
  }

  /// Reply with a Poll to the user.
  ///
  /// Provide a [question], a list of [options] and a [type] to send a poll.
  Future<Message> replyWithPoll(
    String question,
    List<String> options, {
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
    int? replyToMessageId,
    bool? allowSendingWithoutReply,
    ReplyMarkup? replyMarkup,
  }) async {
    return await api.sendPoll(
      id,
      question,
      options,
      messageThreadId: messageThreadId,
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
      replyToMessageId: replyToMessageId,
      allowSendingWithoutReply: allowSendingWithoutReply,
      replyMarkup: replyMarkup,
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
    int? replyToMessageId,
    bool? allowSendingWithoutReply,
    ReplyMarkup? replyMarkup,
  }) async {
    return await api.sendDice(
      id,
      emoji: emoji,
      messageThreadId: messageThreadId,
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyToMessageId: replyToMessageId,
      allowSendingWithoutReply: allowSendingWithoutReply,
      replyMarkup: replyMarkup,
    );
  }

  /// Reply with a Chat Action to the user.
  ///
  /// Provide a [action] to send a chat action.
  Future<bool> replyWithChatAction(
    ChatAction action, {
    int? messageThreadId,
  }) async {
    return await api.sendChatAction(
      id,
      action,
      messageThreadId: messageThreadId,
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
    int? replyToMessageId,
    bool? allowSendingWithoutReply,
    ReplyMarkup? replyMarkup,
  }) async {
    return await api.sendGame(
      id,
      shortName,
      messageThreadId: messageThreadId,
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyToMessageId: replyToMessageId,
      allowSendingWithoutReply: allowSendingWithoutReply,
      replyMarkup: replyMarkup,
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
    int? replyToMessageId,
    bool? allowSendingWithoutReply,
    ReplyMarkup? replyMarkup,
  }) async {
    return await api.sendAnimation(
      id,
      animation,
      messageThreadId: messageThreadId,
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
      replyToMessageId: replyToMessageId,
      allowSendingWithoutReply: allowSendingWithoutReply,
      replyMarkup: replyMarkup,
    );
  }

  /// Reply with a Sticker to the user.
  ///
  /// Provide a [sticker] to send a sticker.
  Future<Message> replyWithSticker(
    InputFile sticker, {
    String? messageThreadId,
    bool? disableNotification,
    bool? protectContent,
    int? replyToMessageId,
    bool? allowSendingWithoutReply,
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    return await api.sendSticker(
      id,
      sticker,
      messageThreadId: messageThreadId,
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyToMessageId: replyToMessageId,
      allowSendingWithoutReply: allowSendingWithoutReply,
      replyMarkup: replyMarkup,
    );
  }

  /// Edit the text of a message.
  ///
  /// This method can be used to edit text of messages sent by the bot.
  Future<Message> editMessageText(
    String text, {
    ParseMode? parseMode,
    List<MessageEntity>? entities,
    bool disableWebPagePreview = false,
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    return await api.editMessageText(
      id,
      _msg.messageId,
      text,
      parseMode: parseMode,
      entities: entities,
      disableWebPagePreview: disableWebPagePreview,
      replyMarkup: replyMarkup,
    );
  }

  /// Delete the message.
  ///
  /// Use this method to delete the message received by the bot.
  Future<bool> deleteMessage() async {
    return await api.deleteMessage(
      id,
      _msg.messageId,
    );
  }

  /// Edit the caption of a message.
  ///
  /// This method can be used to edit captions of the message in the current context.
  Future<Message> editMessageCaption(
    String caption, {
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    return await api.editMessageCaption(
      id,
      _msg.messageId,
      caption: caption,
      parseMode: parseMode,
      captionEntities: captionEntities,
      replyMarkup: replyMarkup,
    );
  }

  /// Edit message live location
  ///
  /// This method will edit the message live location in the current context.
  Future<Message> editMessageLiveLocation({
    String? inlineMessageId,
    double? latitude,
    double? longitude,
    double? horizontalAccuracy,
    int? heading,
    int? proximityAlertRadius,
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    return await api.editMessageLiveLocation(
      id,
      _msg.messageId,
      latitude: latitude,
      longitude: longitude,
      horizontalAccuracy: horizontalAccuracy,
      heading: heading,
      proximityAlertRadius: proximityAlertRadius,
      replyMarkup: replyMarkup,
    );
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
    return await api.forwardMessage(
      chatId,
      id,
      _msg.messageId,
      messageThreadId: messageThreadId,
      disableNotification: disableNotification,
      protectContent: protectContent,
    );
  }

  /// Get Author
  ///
  /// This method will get the chat member in the current context.
  Future<ChatMember> getAuthor(int userId) async {
    return await api.getChatMember(id, _msg.from!.id);
  }

  /// hasText checks if the message has the given text.
  ///
  /// **Parameters:**
  /// - [text] - The text to check for.
  ///
  /// Pass this if you want exact match for the text.
  ///
  /// - [texts] - List of Strings to check for.
  ///
  /// Returns true if the message text is in the list.
  ///
  /// - [pattern] - The pattern to check for.
  ///
  /// Returns true if the message text matches the pattern.
  ///
  /// - [patterns] - List of [RegExp] patterns to check for.
  ///
  /// Returns true if the message text matches any of the patterns.
  bool hasText({
    String? text,
    List<String>? texts,
    RegExp? pattern,
    List<RegExp>? patterns,
  }) {
    if (_msg.text == null) return false;
    if (text != null) return _msg.text == text;
    if (texts != null) return texts.contains(_msg.text);
    if (pattern != null) return pattern.hasMatch(_msg.text!);
    if (patterns != null) return patterns.any((p) => p.hasMatch(_msg.text!));
    return true;
  }

  /// The [Message] recieved in the current context
  Message get _msg => update.message!;
}
