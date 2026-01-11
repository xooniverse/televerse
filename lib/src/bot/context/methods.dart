part of '../../../televerse.dart';

/// Extension methods for enhanced Context functionality.
extension ContextAwareMethods on Context {
  // ===============================
  // Internal Verification Method
  // ===============================

  /// Internal method to check if the context contains necessary information
  /// to call the context aware methods.
  void _verifyInfo(
    List<dynamic> info,
    APIMethod method, {
    String? description,
  }) {
    if (info.contains(null)) {
      throw TeleverseException(
        "The context does not contain necessary information to call the method `$method`.",
        description:
            description ??
            "Required information is missing from the current update context.",
        type: TeleverseExceptionType.invalidParameter,
      );
    }
  }

  // ===============================
  // API Shortcuts - Messaging
  // ===============================

  /// Replies to the current message with text.
  ///
  /// This is a convenience method that sends a message to the same chat
  /// where the current update originated from.
  ///
  /// Returns the sent [Message].
  ///
  /// Throws [TeleverseException] if there's no chat to reply to.
  ///
  /// Example:
  /// ```dart
  /// await ctx.reply('Hello! 👋');
  /// await ctx.reply('*Bold text*', parseMode: ParseMode.markdownV2);
  /// ```
  Future<Message> reply(
    String text, {
    int? messageThreadId,
    ParseMode? parseMode,
    List<MessageEntity>? entities,
    bool? disableNotification,
    bool? protectContent,
    ReplyMarkup? replyMarkup,
    ReplyParameters? replyParameters,
    LinkPreviewOptions? linkPreviewOptions,
    String? businessConnectionId,
    String? messageEffectId,
    bool? allowPaidBroadcast,
    int? directMessagesTopicId,
    SuggestedPostParameters? suggestedPostParameters,
  }) async {
    final chatId = _getChatId();
    _verifyInfo([chatId], APIMethod.sendMessage);

    return api.sendMessage(
      chatId!,
      text,
      messageThreadId: _threadId(messageThreadId),
      parseMode: parseMode,
      entities: entities,
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyMarkup: replyMarkup,
      replyParameters: replyParameters,
      linkPreviewOptions: linkPreviewOptions,
      businessConnectionId: _businessConnectionId(businessConnectionId),
      messageEffectId: messageEffectId,
      allowPaidBroadcast: allowPaidBroadcast,
      directMessagesTopicId: directMessagesTopicId,
      suggestedPostParameters: suggestedPostParameters,
    );
  }

  /// Replies to the current message with a photo.
  ///
  /// This is a convenience method that sends a photo to the same chat
  /// where the current update originated from.
  ///
  /// Parameters:
  /// - [photo]: Photo to send (InputFile)
  /// - [caption]: Photo caption (0-1024 characters)
  /// - [parseMode]: Mode for parsing entities in the photo caption
  /// - [captionEntities]: List of special entities that appear in the caption
  /// - [disableNotification]: Sends the message silently
  /// - [protectContent]: Protects the contents from forwarding and saving
  /// - [replyParameters]: Description of the message to reply to
  /// - [replyMarkup]: Additional interface options
  /// - [hasSpoiler]: Pass True if the photo needs to be covered with a spoiler animation
  ///
  /// Returns the sent [Message].
  ///
  /// Throws [TeleverseException] if there's no chat to reply to.
  ///
  /// Example:
  /// ```dart
  /// final photo = InputFile.fromFile(File('photo.jpg'));
  /// await ctx.replyWithPhoto(photo, caption: 'Beautiful sunset! 🌅');
  /// ```
  Future<Message> replyWithPhoto(
    InputFile photo, {
    int? messageThreadId,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    bool? disableNotification,
    bool? protectContent,
    ReplyMarkup? replyMarkup,
    bool? hasSpoiler,
    ReplyParameters? replyParameters,
    String? businessConnectionId,
    String? messageEffectId,
    bool? showCaptionAboveMedia,
    bool? allowPaidBroadcast,
    int? directMessagesTopicId,
    SuggestedPostParameters? suggestedPostParameters,
  }) async {
    final chatId = _getChatId();
    _verifyInfo([chatId], APIMethod.sendPhoto);

    return api.sendPhoto(
      chatId!,
      photo,
      messageThreadId: _threadId(messageThreadId),
      caption: caption,
      parseMode: parseMode,
      captionEntities: captionEntities,
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyMarkup: replyMarkup,
      hasSpoiler: hasSpoiler,
      replyParameters: replyParameters,
      businessConnectionId: _businessConnectionId(businessConnectionId),
      messageEffectId: messageEffectId,
      showCaptionAboveMedia: showCaptionAboveMedia,
      allowPaidBroadcast: allowPaidBroadcast,
      directMessagesTopicId: directMessagesTopicId,
      suggestedPostParameters: suggestedPostParameters,
    );
  }

  /// Sends an audio file to the current chat.
  ///
  /// This is a convenience method that sends an audio file to the same chat
  /// where the current update originated from.
  ///
  /// Example:
  /// ```dart
  /// final audio = InputFile.fromFile(File('music.mp3'));
  /// await ctx.replyWithAudio(audio, caption: 'Great music! 🎵');
  /// ```
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
    ReplyMarkup? replyMarkup,
    ReplyParameters? replyParameters,
    String? businessConnectionId,
    String? messageEffectId,
    bool? allowPaidBroadcast,
    int? directMessagesTopicId,
    SuggestedPostParameters? suggestedPostParameters,
  }) async {
    final chatId = _getChatId();
    _verifyInfo([chatId], APIMethod.sendAudio);

    return api.sendAudio(
      chatId!,
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
      replyMarkup: replyMarkup,
      replyParameters: replyParameters,
      businessConnectionId: _businessConnectionId(businessConnectionId),
      messageEffectId: messageEffectId,
      allowPaidBroadcast: allowPaidBroadcast,
      directMessagesTopicId: directMessagesTopicId,
      suggestedPostParameters: suggestedPostParameters,
    );
  }

  /// Sends a document to the current chat.
  ///
  /// Example:
  /// ```dart
  /// final document = InputFile.fromFile(File('report.pdf'));
  /// await ctx.replyWithDocument(document, caption: 'Monthly report');
  /// ```
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
    ReplyMarkup? replyMarkup,
    ReplyParameters? replyParameters,
    String? businessConnectionId,
    String? messageEffectId,
    bool? allowPaidBroadcast,
    int? directMessagesTopicId,
    SuggestedPostParameters? suggestedPostParameters,
  }) async {
    final chatId = _getChatId();
    _verifyInfo([chatId], APIMethod.sendDocument);

    return api.sendDocument(
      chatId!,
      document,
      messageThreadId: _threadId(messageThreadId),
      thumbnail: thumbnail,
      caption: caption,
      parseMode: parseMode,
      captionEntities: captionEntities,
      disableContentTypeDetection: disableContentTypeDetection,
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyMarkup: replyMarkup,
      replyParameters: replyParameters,
      businessConnectionId: _businessConnectionId(businessConnectionId),
      messageEffectId: messageEffectId,
      allowPaidBroadcast: allowPaidBroadcast,
      directMessagesTopicId: directMessagesTopicId,
      suggestedPostParameters: suggestedPostParameters,
    );
  }

  /// Sends a video to the current chat.
  ///
  /// Example:
  /// ```dart
  /// final video = InputFile.fromFile(File('demo.mp4'));
  /// await ctx.replyWithVideo(video, caption: 'Check this out!');
  /// ```
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
    ReplyMarkup? replyMarkup,
    ReplyParameters? replyParameters,
    String? businessConnectionId,
    String? messageEffectId,
    bool? showCaptionAboveMedia,
    bool? allowPaidBroadcast,
    InputFile? cover,
    int? startTimestamp,
    int? directMessagesTopicId,
    SuggestedPostParameters? suggestedPostParameters,
  }) async {
    final chatId = _getChatId();
    _verifyInfo([chatId], APIMethod.sendVideo);

    return api.sendVideo(
      chatId!,
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
      replyMarkup: replyMarkup,
      replyParameters: replyParameters,
      businessConnectionId: _businessConnectionId(businessConnectionId),
      messageEffectId: messageEffectId,
      showCaptionAboveMedia: showCaptionAboveMedia,
      allowPaidBroadcast: allowPaidBroadcast,
      cover: cover,
      startTimestamp: startTimestamp,
      directMessagesTopicId: directMessagesTopicId,
      suggestedPostParameters: suggestedPostParameters,
    );
  }

  /// Sends an animation (GIF or H.264/MPEG-4 AVC video without sound) to the current chat.
  ///
  /// Example:
  /// ```dart
  /// final animation = InputFile.fromFile(File('funny.gif'));
  /// await ctx.replyWithAnimation(animation);
  /// ```
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
    ReplyMarkup? replyMarkup,
    ReplyParameters? replyParameters,
    String? businessConnectionId,
    String? messageEffectId,
    bool? showCaptionAboveMedia,
    bool? allowPaidBroadcast,
    int? directMessagesTopicId,
    SuggestedPostParameters? suggestedPostParameters,
  }) async {
    final chatId = _getChatId();
    _verifyInfo([chatId], APIMethod.sendAnimation);

    return api.sendAnimation(
      chatId!,
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
      replyMarkup: replyMarkup,
      replyParameters: replyParameters,
      businessConnectionId: _businessConnectionId(businessConnectionId),
      messageEffectId: messageEffectId,
      showCaptionAboveMedia: showCaptionAboveMedia,
      allowPaidBroadcast: allowPaidBroadcast,
      directMessagesTopicId: directMessagesTopicId,
      suggestedPostParameters: suggestedPostParameters,
    );
  }

  /// Sends a voice message to the current chat.
  ///
  /// This method sends a voice message using the provided [voice] file.
  /// The voice message can include a caption and various formatting options.
  ///
  /// Example:
  /// ```dart
  /// final voice = InputFile.fromFile(File('message.ogg'));
  /// await ctx.replyWithVoice(
  ///   voice,
  ///   caption: 'Listen to this!',
  ///   duration: 30,
  /// );
  /// ```
  Future<Message> replyWithVoice(
    InputFile voice, {
    int? messageThreadId,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    int? duration,
    bool? disableNotification,
    bool? protectContent,
    ReplyMarkup? replyMarkup,
    ReplyParameters? replyParameters,
    String? businessConnectionId,
    String? messageEffectId,
    bool? allowPaidBroadcast,
    int? directMessagesTopicId,
    SuggestedPostParameters? suggestedPostParameters,
  }) async {
    final chatId = _getChatId();
    _verifyInfo([chatId], APIMethod.sendVoice);

    return api.sendVoice(
      chatId!,
      voice,
      messageThreadId: _threadId(messageThreadId),
      caption: caption,
      parseMode: parseMode,
      captionEntities: captionEntities,
      duration: duration,
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyMarkup: replyMarkup,
      replyParameters: replyParameters,
      businessConnectionId: _businessConnectionId(businessConnectionId),
      messageEffectId: messageEffectId,
      allowPaidBroadcast: allowPaidBroadcast,
      directMessagesTopicId: directMessagesTopicId,
      suggestedPostParameters: suggestedPostParameters,
    );
  }

  /// Sends a video note (rounded square MPEG4 video) to the current chat.
  ///
  /// Example:
  /// ```dart
  /// final videoNote = InputFile.fromFile(File('note.mp4'));
  /// await ctx.replyWithVideoNote(videoNote);
  /// ```
  Future<Message> replyWithVideoNote(
    InputFile videoNote, {
    int? messageThreadId,
    int? duration,
    int? length,
    InputFile? thumbnail,
    bool? disableNotification,
    bool? protectContent,
    ReplyMarkup? replyMarkup,
    ReplyParameters? replyParameters,
    String? businessConnectionId,
    String? messageEffectId,
    bool? allowPaidBroadcast,
    int? directMessagesTopicId,
    SuggestedPostParameters? suggestedPostParameters,
  }) async {
    final chatId = _getChatId();
    _verifyInfo([chatId], APIMethod.sendVideoNote);

    return api.sendVideoNote(
      chatId!,
      videoNote,
      messageThreadId: _threadId(messageThreadId),
      duration: duration,
      length: length,
      thumbnail: thumbnail,
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyMarkup: replyMarkup,
      replyParameters: replyParameters,
      businessConnectionId: _businessConnectionId(businessConnectionId),
      messageEffectId: messageEffectId,
      allowPaidBroadcast: allowPaidBroadcast,
      directMessagesTopicId: directMessagesTopicId,
      suggestedPostParameters: suggestedPostParameters,
    );
  }

  /// Sends a media group (2-10 items) to the current chat.
  ///
  /// Example:
  /// ```dart
  /// final media = [
  ///   InputMediaPhoto(media: InputFile.fromFile(File('photo1.jpg'))),
  ///   InputMediaPhoto(media: InputFile.fromFile(File('photo2.jpg'))),
  /// ];
  /// await ctx.replyWithMediaGroup(media);
  /// ```
  Future<List<Message>> replyWithMediaGroup(
    List<InputMedia> media, {
    int? messageThreadId,
    bool? disableNotification,
    bool? protectContent,
    ReplyParameters? replyParameters,
    String? businessConnectionId,
    String? messageEffectId,
    bool? allowPaidBroadcast,
    int? directMessagesTopicId,
  }) async {
    final chatId = _getChatId();
    _verifyInfo([chatId], APIMethod.sendMediaGroup);

    return api.sendMediaGroup(
      chatId!,
      media,
      messageThreadId: _threadId(messageThreadId),
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyParameters: replyParameters,
      businessConnectionId: _businessConnectionId(businessConnectionId),
      messageEffectId: messageEffectId,
      allowPaidBroadcast: allowPaidBroadcast,
      directMessagesTopicId: directMessagesTopicId,
    );
  }

  /// Sends a location to the current chat.
  ///
  /// Example:
  /// ```dart
  /// await ctx.replyWithLocation(37.7749, -122.4194); // San Francisco
  /// ```
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
    ReplyMarkup? replyMarkup,
    ReplyParameters? replyParameters,
    String? businessConnectionId,
    String? messageEffectId,
    bool? allowPaidBroadcast,
    int? directMessagesTopicId,
    SuggestedPostParameters? suggestedPostParameters,
  }) async {
    final chatId = _getChatId();
    _verifyInfo([chatId], APIMethod.sendLocation);

    return api.sendLocation(
      chatId!,
      latitude,
      longitude,
      messageThreadId: _threadId(messageThreadId),
      horizontalAccuracy: horizontalAccuracy,
      livePeriod: livePeriod,
      heading: heading,
      proximityAlertRadius: proximityAlertRadius,
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyMarkup: replyMarkup,
      replyParameters: replyParameters,
      businessConnectionId: _businessConnectionId(businessConnectionId),
      messageEffectId: messageEffectId,
      allowPaidBroadcast: allowPaidBroadcast,
      directMessagesTopicId: directMessagesTopicId,
      suggestedPostParameters: suggestedPostParameters,
    );
  }

  /// Sends venue information to the current chat.
  ///
  /// Example:
  /// ```dart
  /// await ctx.replyWithVenue(
  ///   37.7749, -122.4194,
  ///   'Golden Gate Park',
  ///   '501 Stanyan St, San Francisco, CA',
  /// );
  /// ```
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
    ReplyMarkup? replyMarkup,
    ReplyParameters? replyParameters,
    String? businessConnectionId,
    String? messageEffectId,
    bool? allowPaidBroadcast,
    int? directMessagesTopicId,
    SuggestedPostParameters? suggestedPostParameters,
  }) async {
    final chatId = _getChatId();
    _verifyInfo([chatId], APIMethod.sendVenue);

    return api.sendVenue(
      chatId!,
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
      replyMarkup: replyMarkup,
      replyParameters: replyParameters,
      businessConnectionId: _businessConnectionId(businessConnectionId),
      messageEffectId: messageEffectId,
      allowPaidBroadcast: allowPaidBroadcast,
      directMessagesTopicId: directMessagesTopicId,
      suggestedPostParameters: suggestedPostParameters,
    );
  }

  /// Sends contact information to the current chat.
  ///
  /// This method sends a contact with the specified phone number and name to the chat.
  /// All parameters from the [RawAPI.sendContact] method are supported.
  ///
  /// Example:
  /// ```dart
  /// await ctx.replyWithContact('+1234567890', 'John Doe');
  ///
  /// // With additional parameters
  /// await ctx.replyWithContact(
  ///   '+1234567890',
  ///   'John Doe',
  ///   lastName: 'Smith',
  ///   vcard: 'BEGIN:VCARD\nVERSION:3.0\nFN:John Doe Smith\nEND:VCARD',
  ///   messageThreadId: 123,
  ///   businessConnectionId: 'business_123',
  /// );
  /// ```
  Future<Message> replyWithContact(
    String phoneNumber,
    String firstName, {
    int? messageThreadId,
    String? lastName,
    String? vcard,
    bool? disableNotification,
    bool? protectContent,
    ReplyMarkup? replyMarkup,
    ReplyParameters? replyParameters,
    String? businessConnectionId,
    String? messageEffectId,
    bool? allowPaidBroadcast,
    int? directMessagesTopicId,
    SuggestedPostParameters? suggestedPostParameters,
  }) async {
    final chatId = _getChatId();
    _verifyInfo([chatId], APIMethod.sendContact);

    return api.sendContact(
      chatId!,
      phoneNumber,
      firstName,
      messageThreadId: _threadId(messageThreadId),
      lastName: lastName,
      vcard: vcard,
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyMarkup: replyMarkup,
      replyParameters: replyParameters,
      businessConnectionId: _businessConnectionId(businessConnectionId),
      messageEffectId: messageEffectId,
      allowPaidBroadcast: allowPaidBroadcast,
      directMessagesTopicId: directMessagesTopicId,
      suggestedPostParameters: suggestedPostParameters,
    );
  }

  /// Sends a poll to the current chat.
  ///
  /// This method creates and sends a poll with the specified question and options.
  /// Supports both regular and quiz polls with full customization options.
  /// All parameters from the [RawAPI.sendPoll] method are supported.
  ///
  /// Example:
  /// ```dart
  /// final options = [
  ///   InputPollOption(text: 'Option 1'),
  ///   InputPollOption(text: 'Option 2'),
  /// ];
  /// await ctx.replyWithPoll('What do you prefer?', options);
  ///
  /// // Quiz poll with explanation
  /// await ctx.replyWithPoll(
  ///   'What is 2+2?',
  ///   [
  ///     InputPollOption(text: '3'),
  ///     InputPollOption(text: '4'),
  ///     InputPollOption(text: '5'),
  ///   ],
  ///   type: PollType.quiz,
  ///   correctOptionId: 1,
  ///   explanation: 'Basic mathematics: 2+2=4',
  ///   explanationParseMode: ParseMode.markdown,
  /// );
  /// ```
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
    ReplyMarkup? replyMarkup,
    ReplyParameters? replyParameters,
    String? businessConnectionId,
    ParseMode? questionParseMode,
    List<MessageEntity>? questionEntities,
    String? messageEffectId,
    bool? allowPaidBroadcast,
  }) async {
    final chatId = _getChatId();
    _verifyInfo([chatId], APIMethod.sendPoll);

    return api.sendPoll(
      chatId!,
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
      replyMarkup: replyMarkup,
      replyParameters: replyParameters,
      businessConnectionId: _businessConnectionId(businessConnectionId),
      questionParseMode: questionParseMode,
      questionEntities: questionEntities,
      messageEffectId: messageEffectId,
      allowPaidBroadcast: allowPaidBroadcast,
    );
  }

  /// Sends a dice animation to the current chat.
  ///
  /// This method sends an animated dice that shows a random value.
  /// Supports different dice types including regular dice, darts, basketball, etc.
  /// All parameters from the [RawAPI.sendDice] method are supported.
  ///
  /// Example:
  /// ```dart
  /// await ctx.replyWithDice(); // Default dice emoji
  /// await ctx.replyWithDice(emoji: DiceEmoji.basketball);
  ///
  /// // With additional parameters
  /// await ctx.replyWithDice(
  ///   emoji: DiceEmoji.dart,
  ///   messageThreadId: 123,
  ///   messageEffectId: 'fire',
  /// );
  /// ```
  Future<Message> replyWithDice({
    DiceEmoji emoji = DiceEmoji.dice,
    int? messageThreadId,
    bool? disableNotification,
    bool? protectContent,
    ReplyMarkup? replyMarkup,
    ReplyParameters? replyParameters,
    String? businessConnectionId,
    String? messageEffectId,
    bool? allowPaidBroadcast,
    int? directMessagesTopicId,
    SuggestedPostParameters? suggestedPostParameters,
  }) async {
    final chatId = _getChatId();
    _verifyInfo([chatId], APIMethod.sendDice);

    return api.sendDice(
      chatId!,
      emoji: emoji,
      messageThreadId: _threadId(messageThreadId),
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyMarkup: replyMarkup,
      replyParameters: replyParameters,
      businessConnectionId: _businessConnectionId(businessConnectionId),
      messageEffectId: messageEffectId,
      allowPaidBroadcast: allowPaidBroadcast,
      directMessagesTopicId: directMessagesTopicId,
      suggestedPostParameters: suggestedPostParameters,
    );
  }

  /// Sends a sticker to the current chat.
  ///
  /// This method sends a sticker file (WebP, WEBM video, or TGS animated sticker).
  /// The sticker can be uploaded as a new file or referenced by file ID or URL.
  /// All parameters from the [RawAPI.sendSticker] method are supported.
  ///
  /// Example:
  /// ```dart
  /// final sticker = InputFile.fromFile(File('sticker.webp'));
  /// await ctx.replyWithSticker(sticker);
  ///
  /// // From file ID with emoji
  /// final sticker = InputFile.fromFileId('CAACAgIAAxkBAAI...');
  /// await ctx.replyWithSticker(
  ///   sticker,
  ///   emoji: '😀',
  ///   messageThreadId: 123,
  /// );
  /// ```
  Future<Message> replyWithSticker(
    InputFile sticker, {
    String? businessConnectionId,
    int? messageThreadId,
    String? emoji,
    bool? disableNotification,
    bool? protectContent,
    bool? allowPaidBroadcast,
    String? messageEffectId,
    ReplyParameters? replyParameters,
    ReplyMarkup? replyMarkup,
    int? directMessagesTopicId,
    SuggestedPostParameters? suggestedPostParameters,
  }) async {
    final chatId = _getChatId();
    _verifyInfo([chatId], APIMethod.sendSticker);

    return api.sendSticker(
      chatId!,
      sticker,
      businessConnectionId: _businessConnectionId(businessConnectionId),
      messageThreadId: _threadId(messageThreadId),
      emoji: emoji,
      disableNotification: disableNotification,
      protectContent: protectContent,
      allowPaidBroadcast: allowPaidBroadcast,
      messageEffectId: messageEffectId,
      replyParameters: replyParameters,
      replyMarkup: replyMarkup,
      directMessagesTopicId: directMessagesTopicId,
      suggestedPostParameters: suggestedPostParameters,
    );
  }

  // ===============================
  // Callback Query & Inline Query Shortcuts
  // ===============================

  /// Answers the callback query in the current update.
  ///
  /// This method can only be called when the update contains a callback query.
  ///
  /// Example:
  /// ```dart
  /// await ctx.answerCallbackQuery(text: 'Button clicked!');
  /// await ctx.answerCallbackQuery(text: 'Error occurred!', showAlert: true);
  /// ```
  Future<bool> answerCallbackQuery({
    String? text,
    bool showAlert = false,
    String? url,
    int cacheTime = 0,
  }) async {
    final query = callbackQuery;
    _verifyInfo(
      [query],
      APIMethod.answerCallbackQuery,
      description: "No callback query found in the current update.",
    );

    return api.answerCallbackQuery(
      query!.id,
      text: text,
      showAlert: showAlert,
      url: url,
      cacheTime: cacheTime,
    );
  }

  /// Answers the inline query in the current update.
  ///
  /// This method can only be called when the update contains an inline query.
  ///
  /// Example:
  /// ```dart
  /// final results = [
  ///   InlineQueryResultArticle(
  ///     id: '1',
  ///     title: 'Result 1',
  ///     inputMessageContent: InputTextMessageContent(messageText: 'Hello!'),
  ///   ),
  /// ];
  /// await ctx.answerInlineQuery(results);
  /// ```
  Future<bool> answerInlineQuery(
    List<InlineQueryResult> results, {
    int? cacheTime,
    bool? isPersonal,
    String? nextOffset,
    InlineQueryResultsButton? button,
  }) async {
    final query = inlineQuery;
    _verifyInfo(
      [query],
      APIMethod.answerInlineQuery,
      description: "No inline query found in the current update.",
    );

    return api.answerInlineQuery(
      query!.id,
      results,
      cacheTime: cacheTime,
      isPersonal: isPersonal,
      nextOffset: nextOffset,
      button: button,
    );
  }

  // ===============================
  // Chat Action Shortcuts
  // ===============================

  /// Sends a chat action to the current chat.
  ///
  /// This tells the user that the bot is doing something (typing, uploading, etc.).
  ///
  /// Example:
  /// ```dart
  /// await ctx.sendChatAction(ChatAction.typing);
  /// await ctx.sendChatAction(ChatAction.uploadPhoto);
  /// ```
  Future<bool> sendChatAction(
    ChatAction action, {
    int? messageThreadId,
    String? businessConnectionId,
  }) async {
    final chatId = _getChatId();
    _verifyInfo([chatId], APIMethod.sendChatAction);

    return api.sendChatAction(
      chatId!,
      action,
      messageThreadId: _threadId(messageThreadId),
      businessConnectionId: _businessConnectionId(businessConnectionId),
    );
  }

  /// Sends "typing" action to the current chat.
  ///
  /// Example:
  /// ```dart
  /// await ctx.sendTyping();
  /// ```
  Future<bool> sendTyping() => sendChatAction(ChatAction.typing);

  /// Sends "upload photo" action to the current chat.
  ///
  /// Example:
  /// ```dart
  /// await ctx.sendUploadPhoto();
  /// ```
  Future<bool> sendUploadPhoto() => sendChatAction(ChatAction.uploadPhoto);

  /// Sends "upload document" action to the current chat.
  ///
  /// Example:
  /// ```dart
  /// await ctx.sendUploadDocument();
  /// ```
  Future<bool> sendUploadDocument() =>
      sendChatAction(ChatAction.uploadDocument);

  // ===============================
  // Message Management Shortcuts
  // ===============================

  /// Deletes the current message.
  ///
  /// This method can only be called when the update contains a message.
  ///
  /// Example:
  /// ```dart
  /// await ctx.deleteMessage(); // Deletes the current message
  /// ```
  Future<bool> deleteMessage() async {
    final chatId = _getChatId();
    final msgId = messageId;
    _verifyInfo(
      [chatId, msgId],
      APIMethod.deleteMessage,
      description:
          "No message or chat information found in the current update.",
    );

    return api.deleteMessage(chatId!, msgId!);
  }

  /// Pins the current message in the chat.
  ///
  /// Example:
  /// ```dart
  /// await ctx.pinMessage();
  /// await ctx.pinMessage(disableNotification: true);
  /// ```
  Future<bool> pinMessage({bool? disableNotification}) async {
    final chatId = _getChatId();
    final msgId = messageId;
    _verifyInfo(
      [chatId, msgId],
      APIMethod.pinChatMessage,
      description:
          "No message or chat information found in the current update.",
    );

    return api.pinChatMessage(
      chatId!,
      msgId!,
      disableNotification: disableNotification,
    );
  }

  /// Unpins the current message in the chat.
  ///
  /// Example:
  /// ```dart
  /// await ctx.unpinMessage();
  /// ```
  Future<bool> unpinMessage({String? businessConnectionId}) async {
    final chatId = _getChatId();
    final msgId = messageId;
    _verifyInfo(
      [chatId, msgId],
      APIMethod.unpinChatMessage,
      description:
          "No message or chat information found in the current update.",
    );

    return api.unpinChatMessage(
      chatId!,
      msgId!,
      businessConnectionId: _businessConnectionId(businessConnectionId),
    );
  }

  /// Forwards the current message to another chat.
  ///
  /// This method forwards the message from the current context to the specified chat.
  /// All original message content and metadata are preserved in the forwarded message.
  ///
  /// Parameters:
  /// - [toChatId]: Target chat for forwarding the message
  /// - [disableNotification]: Sends the message silently
  /// - [messageThreadId]: Unique identifier for the target message thread
  /// - [protectContent]: Protects the contents from forwarding and saving
  /// - [videoStartTimestamp]: Timestamp in seconds for video forwarding
  ///
  /// Returns the forwarded [Message] object.
  ///
  /// Throws [TeleverseException] if no message information is found in the current update.
  ///
  /// Example:
  /// ```dart
  /// // Forward to another chat
  /// await ctx.forwardMessage(ChatID(123456789));
  ///
  /// // Forward with options
  /// await ctx.forwardMessage(
  ///   ChatID(123456789),
  ///   disableNotification: true,
  ///   protectContent: true,
  /// );
  /// ```
  Future<Message> forwardMessage(
    ID toChatId, {
    bool? disableNotification,
    int? messageThreadId,
    bool? protectContent,
    int? videoStartTimestamp,
    int? directMessagesTopicId,
    SuggestedPostParameters? suggestedPostParameters,
  }) async {
    final fromChatId = _getChatId();
    final msgId = messageId;
    _verifyInfo(
      [fromChatId, msgId],
      APIMethod.forwardMessage,
      description:
          "No message or chat information found in the current update.",
    );

    return api.forwardMessage(
      toChatId,
      fromChatId!,
      msgId!,
      disableNotification: disableNotification,
      messageThreadId: _threadId(messageThreadId),
      protectContent: protectContent,
      videoStartTimestamp: videoStartTimestamp,
      directMessagesTopicId: directMessagesTopicId,
      suggestedPostParameters: suggestedPostParameters,
    );
  }

  /// Copies the current message to another chat.
  ///
  /// This method creates a copy of the current message in the specified chat.
  /// Unlike forwarding, copying allows you to modify the caption and other properties.
  ///
  /// Parameters:
  /// - [toChatId]: Target chat for copying the message
  /// - [messageThreadId]: Unique identifier for the target message thread
  /// - [caption]: New caption for the media, 0-1024 characters after entities parsing
  /// - [parseMode]: Mode for parsing entities in the new caption
  /// - [captionEntities]: List of special entities in the new caption
  /// - [disableNotification]: Sends the message silently
  /// - [protectContent]: Protects the contents from forwarding and saving
  /// - [replyMarkup]: Additional interface options
  /// - [replyParameters]: Description of the message to reply to
  /// - [showCaptionAboveMedia]: Pass True, if the caption must be shown above the message media
  /// - [allowPaidBroadcast]: Pass True to allow up to 1000 messages per second, ignoring broadcasting limits
  /// - [videoStartTimestamp]: Timestamp in seconds for video copying
  ///
  /// Returns [MessageId] of the sent message.
  ///
  /// Throws [TeleverseException] if no message information is found in the current update.
  ///
  /// Example:
  /// ```dart
  /// // Simple copy
  /// await ctx.copyMessage(ChatID(123456789));
  ///
  /// // Copy with new caption
  /// await ctx.copyMessage(
  ///   ChatID(123456789),
  ///   caption: 'Copied message with new caption',
  ///   parseMode: ParseMode.markdownV2,
  /// );
  /// ```
  Future<MessageId> copyMessage(
    ID toChatId, {
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
    int? videoStartTimestamp,
    int? directMessagesTopicId,
    SuggestedPostParameters? suggestedPostParameters,
  }) async {
    final fromChatId = _getChatId();
    final msgId = messageId;
    _verifyInfo(
      [fromChatId, msgId],
      APIMethod.copyMessage,
      description:
          "No message or chat information found in the current update.",
    );

    return api.copyMessage(
      toChatId,
      fromChatId!,
      msgId!,
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
      videoStartTimestamp: videoStartTimestamp,
      directMessagesTopicId: directMessagesTopicId,
      suggestedPostParameters: suggestedPostParameters,
    );
  }

  /// Edits the current message's text.
  ///
  /// Use this method to edit text messages. On success, if the edited message
  /// is not an inline message, the edited [Message] is returned.
  ///
  /// Parameters:
  /// - [text]: New text of the message, 1-4096 characters after entities parsing
  /// - [businessConnectionId]: Unique identifier of the business connection
  /// - [parseMode]: Mode for parsing entities in the message text
  /// - [entities]: List of special entities that appear in message text
  /// - [linkPreviewOptions]: Link preview generation options for the message
  /// - [replyMarkup]: Additional interface options
  ///
  /// Returns the edited [Message] object.
  ///
  /// Throws [TeleverseException] if no message information is found in the current update.
  ///
  /// Example:
  /// ```dart
  /// // Simple text edit
  /// await ctx.editMessageText('Updated text content');
  ///
  /// // Edit with formatting
  /// await ctx.editMessageText(
  ///   '*Updated text* with _formatting_',
  ///   parseMode: ParseMode.markdownV2,
  /// );
  ///
  /// // Edit with keyboard
  /// await ctx.editMessageText(
  ///   'Choose an option:',
  ///   replyMarkup: InlineKeyboardMarkup(
  ///     inlineKeyboard: [[
  ///       InlineKeyboardButton(text: 'Option 1', callbackData: 'opt1'),
  ///     ]],
  ///   ),
  /// );
  /// ```
  Future<Message> editMessageText(
    String text, {
    String? businessConnectionId,
    ParseMode? parseMode,
    List<MessageEntity>? entities,
    LinkPreviewOptions? linkPreviewOptions,
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    final chatId = _getChatId();
    final msgId = messageId;
    _verifyInfo(
      [chatId, msgId],
      APIMethod.editMessageText,
      description:
          "No message or chat information found in the current update.",
    );

    return api.editMessageText(
      chatId!,
      msgId!,
      text,
      businessConnectionId: _businessConnectionId(businessConnectionId),
      parseMode: parseMode,
      entities: entities,
      linkPreviewOptions: linkPreviewOptions,
      replyMarkup: replyMarkup,
    );
  }

  /// Edits the current message's caption.
  ///
  /// Use this method to edit captions of messages. On success, if the edited message
  /// is not an inline message, the edited [Message] is returned.
  ///
  /// Parameters:
  /// - [businessConnectionId]: Unique identifier of the business connection
  /// - [caption]: New caption of the message, 0-1024 characters after entities parsing
  /// - [parseMode]: Mode for parsing entities in the message caption
  /// - [captionEntities]: List of special entities that appear in the caption
  /// - [showCaptionAboveMedia]: Pass True, if the caption must be shown above the message media
  /// - [replyMarkup]: Additional interface options
  ///
  /// Returns the edited [Message] object.
  ///
  /// Throws [TeleverseException] if no message information is found in the current update.
  ///
  /// Example:
  /// ```dart
  /// // Edit caption
  /// await ctx.editMessageCaption(caption: 'Updated caption');
  ///
  /// // Edit with formatting
  /// await ctx.editMessageCaption(
  ///   caption: '*Updated caption* with _formatting_',
  ///   parseMode: ParseMode.markdownV2,
  /// );
  ///
  /// // Show caption above media
  /// await ctx.editMessageCaption(
  ///   caption: 'Caption above the photo',
  ///   showCaptionAboveMedia: true,
  /// );
  /// ```
  Future<Message> editMessageCaption({
    String? businessConnectionId,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    bool? showCaptionAboveMedia,
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    final chatId = _getChatId();
    final msgId = messageId;
    _verifyInfo(
      [chatId, msgId],
      APIMethod.editMessageCaption,
      description:
          "No message or chat information found in the current update.",
    );

    return api.editMessageCaption(
      chatId!,
      msgId!,
      businessConnectionId: _businessConnectionId(businessConnectionId),
      caption: caption,
      parseMode: parseMode,
      captionEntities: captionEntities,
      showCaptionAboveMedia: showCaptionAboveMedia,
      replyMarkup: replyMarkup,
    );
  }

  /// Edits the current message's media.
  ///
  /// Use this method to edit animation, audio, document, photo, or video messages.
  /// If a message is part of a message album, then it can be edited only to an audio
  /// for audio albums, only to a document for document albums and to a photo or a video otherwise.
  ///
  /// Parameters:
  /// - [media]: New media content of the message
  /// - [businessConnectionId]: Unique identifier of the business connection
  /// - [replyMarkup]: Additional interface options
  ///
  /// Returns the edited [Message] object.
  ///
  /// Throws [TeleverseException] if no message information is found in the current update.
  ///
  /// Example:
  /// ```dart
  /// // Edit to a new photo
  /// final newMedia = InputMediaPhoto(
  ///   media: InputFile.fromFile(File('new_image.jpg')),
  ///   caption: 'Updated image',
  /// );
  /// await ctx.editMessageMedia(newMedia);
  ///
  /// // Edit to a video with caption
  /// final videoMedia = InputMediaVideo(
  ///   media: InputFile.fromUrl('https://example.com/video.mp4'),
  ///   caption: 'New video content',
  ///   width: 1280,
  ///   height: 720,
  /// );
  /// await ctx.editMessageMedia(videoMedia);
  /// ```
  Future<Message> editMessageMedia(
    InputMedia media, {
    String? businessConnectionId,
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    final chatId = _getChatId();
    final msgId = messageId;
    _verifyInfo(
      [chatId, msgId],
      APIMethod.editMessageMedia,
      description:
          "No message or chat information found in the current update.",
    );

    return api.editMessageMedia(
      chatId!,
      msgId!,
      media,
      businessConnectionId: _businessConnectionId(businessConnectionId),
      replyMarkup: replyMarkup,
    );
  }

  /// Forwards the current message to the same chat (useful for highlighting).
  ///
  /// This is a convenience method that forwards the current message to the same chat
  /// it was sent from. Useful for highlighting or bookmarking messages.
  ///
  /// Example:
  /// ```dart
  /// // Highlight the current message
  /// await ctx.forwardHere(protectContent: true);
  /// ```
  Future<Message> forwardHere({
    bool? disableNotification,
    int? messageThreadId,
    bool? protectContent,
    int? videoStartTimestamp,
    int? directMessagesTopicId,
    SuggestedPostParameters? suggestedPostParameters,
  }) async {
    final chatId = _getChatId();
    _verifyInfo(
      [chatId],
      APIMethod.forwardMessage,
      description: "No chat information found in the current update.",
    );

    return forwardMessage(
      chatId!,
      disableNotification: disableNotification,
      messageThreadId: _threadId(messageThreadId),
      protectContent: protectContent,
      videoStartTimestamp: videoStartTimestamp,
      directMessagesTopicId: directMessagesTopicId,
      suggestedPostParameters: suggestedPostParameters,
    );
  }

  /// Copies the current message to the same chat with modifications.
  ///
  /// This is a convenience method that copies the current message to the same chat
  /// it was sent from, allowing you to modify the content.
  ///
  /// Example:
  /// ```dart
  /// // Copy with a new caption
  /// await ctx.copyHere(caption: 'Modified version');
  /// ```
  Future<MessageId> copyHere({
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
    int? videoStartTimestamp,
    int? directMessagesTopicId,
    SuggestedPostParameters? suggestedPostParameters,
  }) async {
    final chatId = _getChatId();
    _verifyInfo(
      [chatId],
      APIMethod.copyMessage,
      description: "No chat information found in the current update.",
    );

    return copyMessage(
      chatId!,
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
      videoStartTimestamp: videoStartTimestamp,
      directMessagesTopicId: directMessagesTopicId,
      suggestedPostParameters: suggestedPostParameters,
    );
  }

  /// Edits the current inline message's text (from chosen inline result or
  /// callback query).
  ///
  /// This is a convenience method that automatically uses the inline message ID
  /// from the current ChosenInlineResult context.
  ///
  /// Example:
  /// ```dart
  /// // In chosen inline result handler
  /// bot.on('chosen_inline_result', (ctx) async {
  ///   await ctx.editCurrentInlineText('Updated text from context');
  /// });
  /// ```
  Future<bool> editInlineMessageText(
    String text, {
    String? businessConnectionId,
    ParseMode? parseMode,
    List<MessageEntity>? entities,
    LinkPreviewOptions? linkPreviewOptions,
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    final inlineMessageId = _getInlineMessageId();
    _verifyInfo([inlineMessageId], APIMethod.editMessageText);

    return api.editInlineMessageText(
      inlineMessageId!,
      text,
      businessConnectionId: _businessConnectionId(businessConnectionId),
      parseMode: parseMode,
      entities: entities,
      linkPreviewOptions: linkPreviewOptions,
      replyMarkup: replyMarkup,
    );
  }

  /// Edits the current inline message's caption (from chosen inline result or
  /// callback query).
  ///
  /// This is a convenience method that automatically uses the inline message ID
  /// from the current ChosenInlineResult context.
  ///
  /// Example:
  /// ```dart
  /// // In chosen inline result handler
  /// bot.on('chosen_inline_result', (ctx) async {
  ///   await ctx.editCurrentInlineCaption(caption: 'Updated caption from context');
  /// });
  /// ```
  Future<bool> editInlineMessageCaption({
    String? businessConnectionId,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    bool? showCaptionAboveMedia,
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    final inlineMessageId = _getInlineMessageId();
    _verifyInfo([inlineMessageId], APIMethod.editMessageCaption);

    return api.editInlineMessageCaption(
      inlineMessageId!,
      businessConnectionId: _businessConnectionId(businessConnectionId),
      caption: caption,
      parseMode: parseMode,
      captionEntities: captionEntities,
      showCaptionAboveMedia: showCaptionAboveMedia,
      replyMarkup: replyMarkup,
    );
  }

  /// Edits the current inline message's media (from chosen inline result or
  /// callback query).
  ///
  /// This is a convenience method that automatically uses the inline message ID
  /// from the current ChosenInlineResult context.
  ///
  /// Example:
  /// ```dart
  /// // In chosen inline result handler
  /// bot.on('chosen_inline_result', (ctx) async {
  ///   final newMedia = InputMediaPhoto(
  ///     media: InputFile.fromFile(File('new_image.jpg')),
  ///   );
  ///   await ctx.editCurrentInlineMedia(newMedia);
  /// });
  /// ```
  Future<bool> editInlineMessageMedia(
    InputMedia media, {
    String? businessConnectionId,
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    final inlineMessageId = _getInlineMessageId();
    _verifyInfo([inlineMessageId], APIMethod.editMessageMedia);

    return api.editInlineMessageMedia(
      inlineMessageId!,
      media,
      businessConnectionId: _businessConnectionId(businessConnectionId),
      replyMarkup: replyMarkup,
    );
  }

  /// Removes the current message's keyboard.
  ///
  /// Convenience method for removing inline keyboard from a message.
  ///
  /// Example:
  /// ```dart
  /// await ctx.removeKeyboard();
  /// ```
  Future<Message> removeKeyboard() async {
    return editMessageReplyMarkup();
  }

  /// Edits the current message's reply markup.
  ///
  /// Example:
  /// ```dart
  /// final newKeyboard = InlineKeyboardMarkup(inlineKeyboard: [
  ///   [InlineKeyboardButton(text: 'New Button', callbackData: 'new_data')],
  /// ]);
  /// await ctx.editMessageReplyMarkup(replyMarkup: newKeyboard);
  /// ```
  Future<Message> editMessageReplyMarkup({
    InlineKeyboardMarkup? replyMarkup,
    String? businessConnectionId,
  }) async {
    final chatId = _getChatId();
    final msgId = messageId;
    _verifyInfo(
      [chatId, msgId],
      APIMethod.editMessageReplyMarkup,
      description:
          "No message or chat information found in the current update.",
    );

    return api.editMessageReplyMarkup(
      chatId!,
      msgId!,
      replyMarkup: replyMarkup,
      businessConnectionId: _businessConnectionId(businessConnectionId),
    );
  }

  /// Edits the current inline messages's reply markup.
  ///
  /// Example:
  /// ```dart
  /// final newKeyboard = InlineKeyboardMarkup(inlineKeyboard: [
  ///   [InlineKeyboardButton(text: 'New Button', callbackData: 'new_data')],
  /// ]);
  /// await ctx.editInlineMessageReplyMarkup(replyMarkup: newKeyboard);
  /// ```
  Future<bool> editInlineMessageReplyMarkup({
    InlineKeyboardMarkup? replyMarkup,
    String? businessConnectionId,
  }) async {
    _verifyInfo(
      [_getInlineMessageId()],
      APIMethod.editMessageReplyMarkup,
      description:
          "No message or chat information found in the current update.",
    );

    return api.editInlineMessageReplyMarkup(
      _getInlineMessageId()!,
      replyMarkup: replyMarkup,
      businessConnectionId: _businessConnectionId(businessConnectionId),
    );
  }

  // ===============================
  // Chat Management Shortcuts
  // ===============================

  /// Gets information about the current chat.
  ///
  /// Example:
  /// ```dart
  /// final chatInfo = await ctx.getChat();
  /// print('Chat title: ${chatInfo.title}');
  /// ```
  Future<ChatFullInfo> getChat() async {
    final chatId = _getChatId();
    _verifyInfo([chatId], APIMethod.getChat);

    return api.getChat(chatId!);
  }

  /// Gets the list of administrators in the current chat.
  ///
  /// Example:
  /// ```dart
  /// final admins = await ctx.getChatAdministrators();
  /// print('Number of admins: ${admins.length}');
  /// ```
  Future<List<ChatMember>> getChatAdministrators() async {
    final chatId = _getChatId();
    _verifyInfo([chatId], APIMethod.getChatAdministrators);

    return api.getChatAdministrators(chatId!);
  }

  /// Gets the member count of the current chat.
  ///
  /// Example:
  /// ```dart
  /// final memberCount = await ctx.getChatMemberCount();
  /// print('Members: $memberCount');
  /// ```
  Future<int> getChatMemberCount() async {
    final chatId = _getChatId();
    _verifyInfo([chatId], APIMethod.getChatMemberCount);

    return api.getChatMemberCount(chatId!);
  }

  /// Gets information about a specific chat member.
  ///
  /// Example:
  /// ```dart
  /// final member = await ctx.getChatMember(123456789);
  /// print('Status: ${member.status}');
  /// ```
  Future<ChatMember> getChatMember(int userId) async {
    final chatId = _getChatId();
    _verifyInfo([chatId], APIMethod.getChatMember);

    return api.getChatMember(chatId!, userId);
  }

  /// Leaves the current chat.
  ///
  /// Example:
  /// ```dart
  /// await ctx.leaveChat();
  /// ```
  Future<bool> leaveChat() async {
    final chatId = _getChatId();
    _verifyInfo([chatId], APIMethod.leaveChat);

    return api.leaveChat(chatId!);
  }

  // ===============================
  // User Management Shortcuts
  // ===============================

  /// Bans a user from the current chat.
  ///
  /// This method is a shortcut for [RawAPI.banChatMember] using the current chat.
  /// Use this method to ban a user from a group, supergroup or channel.
  /// In the case of supergroups and channels, the user will not be able to return
  /// to the chat on their own using invite links, etc., unless unbanned first.
  ///
  /// Parameters:
  /// - [userId]: Unique identifier of the target user
  /// - [untilDate]: Date when the user will be unbanned, unix time. If user is banned for more than 366 days or less than 30 seconds from the current time they are considered to be banned forever. Applied for supergroups and channels only.
  /// - [revokeMessages]: Pass True to delete all messages from the chat for the user that is being removed. If False, the user will be able to see messages in the group that were sent before the user was removed. Always True for supergroups and channels.
  ///
  /// Returns True on success.
  ///
  /// Example:
  /// ```dart
  /// // Ban user permanently
  /// await ctx.banChatMember(123456789);
  ///
  /// // Ban user for 1 day
  /// await ctx.banChatMember(
  ///   123456789,
  ///   untilDate: DateTime.now().add(Duration(days: 1)),
  /// );
  ///
  /// // Ban user and delete their messages
  /// await ctx.banChatMember(123456789, revokeMessages: true);
  /// ```
  Future<bool> banChatMember(
    int userId, {
    DateTime? untilDate,
    bool? revokeMessages,
  }) async {
    final chatId = _getChatId();
    _verifyInfo([chatId], APIMethod.banChatMember);

    return api.banChatMember(
      chatId!,
      userId,
      untilDate: untilDate,
      revokeMessages: revokeMessages,
    );
  }

  /// Bans the author of the message
  Future<bool> banAuthor({DateTime? untilDate, bool? revokeMessages}) async {
    _verifyInfo([from?.id], APIMethod.banChatMember);
    return banChatMember(from!.id);
  }

  /// Unbans a previously banned user in the current chat.
  ///
  /// This method is a shortcut for [RawAPI.unbanChatMember] using the current chat.
  /// The user will not return to the group or channel automatically, but will be
  /// able to join via link, etc. The bot must have the appropriate admin rights.
  ///
  /// Parameters:
  /// - [userId]: Unique identifier of the target user
  /// - [onlyIfBanned]: Do nothing if the user is not banned
  ///
  /// Returns True on success.
  ///
  /// Example:
  /// ```dart
  /// // Unban user
  /// await ctx.unbanChatMember(123456789);
  ///
  /// // Unban user only if they are currently banned
  /// await ctx.unbanChatMember(123456789, onlyIfBanned: true);
  /// ```
  Future<bool> unbanChatMember(int userId, {bool? onlyIfBanned}) async {
    final chatId = _getChatId();
    _verifyInfo([chatId], APIMethod.unbanChatMember);

    return api.unbanChatMember(chatId!, userId, onlyIfBanned: onlyIfBanned);
  }

  /// Restricts a user in the current chat.
  ///
  /// This method is a shortcut for [RawAPI.restrictChatMember] using the current chat.
  /// Use this method to restrict a user in a supergroup. The bot must be an
  /// administrator in the supergroup for this to work and must have the appropriate
  /// admin rights.
  ///
  /// Parameters:
  /// - [userId]: Unique identifier of the target user
  /// - [permissions]: A [ChatPermissions] object for new user permissions
  /// - [untilDate]: Date when restrictions will be lifted for the user, unix time. If user is restricted for more than 366 days or less than 30 seconds from the current time, they are considered to be restricted forever
  /// - [useIndependentChatPermissions]: Pass True if chat permissions are set independently. Otherwise, the can_send_other_messages and can_add_web_page_previews permissions will imply the can_send_messages, can_send_audios, can_send_documents, can_send_photos, can_send_videos, can_send_video_notes, and can_send_voice_notes permissions; the can_send_polls permission will imply the can_send_messages permission.
  ///
  /// Returns True on success.
  ///
  /// Example:
  /// ```dart
  /// // Restrict user from sending messages
  /// final permissions = ChatPermissions(canSendMessages: false);
  /// await ctx.restrictChatMember(123456789, permissions);
  ///
  /// // Restrict user temporarily
  /// await ctx.restrictChatMember(
  ///   123456789,
  ///   permissions,
  ///   untilDate: DateTime.now().add(Duration(hours: 1)),
  /// );
  ///
  /// // Restrict with independent permissions
  /// await ctx.restrictChatMember(
  ///   123456789,
  ///   permissions,
  ///   useIndependentChatPermissions: true,
  /// );
  /// ```
  Future<bool> restrictChatMember(
    int userId,
    ChatPermissions permissions, {
    DateTime? untilDate,
    bool? useIndependentChatPermissions,
  }) async {
    final chatId = _getChatId();
    _verifyInfo([chatId], APIMethod.restrictChatMember);

    return api.restrictChatMember(
      chatId!,
      userId,
      permissions,
      untilDate: untilDate,
      useIndependentChatPermissions: useIndependentChatPermissions,
    );
  }

  /// Kicks a user from the current chat.
  ///
  /// This is an alias for [banChatMember] that immediately unbans the user,
  /// effectively removing them from the chat without permanently banning them.
  /// This is useful for groups where you want to remove someone but allow them
  /// to rejoin later via invite link.
  ///
  /// Parameters:
  /// - [userId]: Unique identifier of the target user
  /// - [revokeMessages]: Pass True to delete all messages from the chat for the user
  ///
  /// Returns True on success.
  ///
  /// Example:
  /// ```dart
  /// // Kick user (remove but don't ban permanently)
  /// await ctx.kickChatMember(123456789);
  ///
  /// // Kick user and delete their messages
  /// await ctx.kickChatMember(123456789, revokeMessages: true);
  /// ```
  Future<bool> kickChatMember(int userId, {bool? revokeMessages}) async {
    // Ban the user first
    await banChatMember(userId, revokeMessages: revokeMessages);

    // Then immediately unban them
    return unbanChatMember(userId);
  }

  /// Mutes a user in the current chat by restricting their ability to send messages.
  ///
  /// This is a convenience method that creates [ChatPermissions] with
  /// `canSendMessages` set to false and calls [restrictChatMember].
  ///
  /// Parameters:
  /// - [userId]: Unique identifier of the target user
  /// - [untilDate]: Date when the mute will be lifted
  /// - [allowMedia]: Whether to allow sending media (photos, videos, etc.)
  /// - [allowOther]: Whether to allow other message types (stickers, GIFs, etc.)
  ///
  /// Returns True on success.
  ///
  /// Example:
  /// ```dart
  /// // Mute user permanently
  /// await ctx.muteChatMember(123456789);
  ///
  /// // Mute user for 1 hour
  /// await ctx.muteChatMember(
  ///   123456789,
  ///   untilDate: DateTime.now().add(Duration(hours: 1)),
  /// );
  ///
  /// // Mute but allow media
  /// await ctx.muteChatMember(123456789, allowMedia: true);
  /// ```
  Future<bool> muteChatMember(
    int userId, {
    DateTime? untilDate,
    bool allowMedia = false,
    bool allowOther = false,
  }) async {
    final permissions = ChatPermissions(
      canSendMessages: false,
      canSendAudios: allowMedia,
      canSendDocuments: allowMedia,
      canSendPhotos: allowMedia,
      canSendVideos: allowMedia,
      canSendVideoNotes: allowMedia,
      canSendVoiceNotes: allowMedia,
      canSendPolls: false,
      canSendOtherMessages: allowOther,
      canAddWebPagePreviews: allowOther,
      canChangeInfo: false,
      canInviteUsers: false,
      canPinMessages: false,
      canManageTopics: false,
    );

    return restrictChatMember(userId, permissions, untilDate: untilDate);
  }

  /// Unmutes a user in the current chat by restoring their default permissions.
  ///
  /// This method gets the current chat's default permissions and applies them
  /// to the specified user, effectively removing any restrictions.
  ///
  /// Parameters:
  /// - [userId]: Unique identifier of the target user
  ///
  /// Returns True on success.
  ///
  /// Example:
  /// ```dart
  /// // Unmute user (restore default permissions)
  /// await ctx.unmuteChatMember(123456789);
  /// ```
  Future<bool> unmuteChatMember(int userId) async {
    // Get current chat to access default permissions
    final chatInfo = await getChat();
    final defaultPermissions =
        chatInfo.permissions ??
        ChatPermissions(
          canSendMessages: true,
          canSendAudios: true,
          canSendDocuments: true,
          canSendPhotos: true,
          canSendVideos: true,
          canSendVideoNotes: true,
          canSendVoiceNotes: true,
          canSendPolls: true,
          canSendOtherMessages: true,
          canAddWebPagePreviews: true,
          canChangeInfo: false,
          canInviteUsers: true,
          canPinMessages: false,
          canManageTopics: false,
        );

    return restrictChatMember(userId, defaultPermissions);
  }

  /// Promotes a user to administrator in the current chat.
  ///
  /// This method promotes the specified user to administrator in the current chat
  /// with the given permissions. The bot must be an administrator in the chat
  /// for this to work and must have the appropriate administrator rights.
  ///
  /// Example:
  /// ```dart
  /// await ctx.promoteChatMember(
  ///   123456789,
  ///   canDeleteMessages: true,
  ///   canInviteUsers: true,
  ///   canPostStories: true,
  /// );
  /// ```
  ///
  /// Returns True on success.
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
    bool? canManageDirectMessages,
  }) async {
    final chatId = _getChatId();
    _verifyInfo([chatId], APIMethod.promoteChatMember);

    return api.promoteChatMember(
      chatId!,
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
      canManageDirectMessages: canManageDirectMessages,
    );
  }

  /// Promotes the author of the message to administrator in the current chat.
  ///
  /// This is a convenience method that promotes the user who sent the current
  /// message to administrator with the given permissions. The bot must be an
  /// administrator in the chat for this to work and must have the appropriate
  /// administrator rights.
  ///
  /// Example:
  /// ```dart
  /// await ctx.promoteAuthor(
  ///   canDeleteMessages: true,
  ///   canInviteUsers: true,
  ///   canPostStories: true,
  /// );
  /// ```
  ///
  /// Returns True on success.
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
    bool? canManageDirectMessages,
  }) async {
    final chatId = _getChatId();
    final userId = from?.id;
    _verifyInfo([chatId, userId], APIMethod.promoteChatMember);

    return api.promoteChatMember(
      chatId!,
      userId!,
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
      canManageDirectMessages: canManageDirectMessages,
    );
  }

  /// Promotes a user to full administrator with all permissions.
  ///
  /// This is a convenience method that promotes the specified user to administrator
  /// with all available permissions enabled.
  ///
  /// Example:
  /// ```dart
  /// await ctx.promoteToFullAdmin(123456789);
  /// ```
  ///
  /// Returns True on success.
  Future<bool> promoteToFullAdmin(int userId) async {
    return promoteChatMember(
      userId,
      canManageChat: true,
      canPostMessages: true,
      canEditMessages: true,
      canDeleteMessages: true,
      canManageVideoChats: true,
      canRestrictMembers: true,
      canPromoteMembers: true,
      canChangeInfo: true,
      canInviteUsers: true,
      canPinMessages: true,
      canManageTopics: true,
      canPostStories: true,
      canEditStories: true,
      canDeleteStories: true,
    );
  }

  /// Promotes the author to full administrator with all permissions.
  ///
  /// This is a convenience method that promotes the message author to administrator
  /// with all available permissions enabled.
  ///
  /// Example:
  /// ```dart
  /// await ctx.promoteAuthorToFullAdmin();
  /// ```
  ///
  /// Returns True on success.
  Future<bool> promoteAuthorToFullAdmin() async {
    return promoteAuthor(
      canManageChat: true,
      canPostMessages: true,
      canEditMessages: true,
      canDeleteMessages: true,
      canManageVideoChats: true,
      canRestrictMembers: true,
      canPromoteMembers: true,
      canChangeInfo: true,
      canInviteUsers: true,
      canPinMessages: true,
      canManageTopics: true,
      canPostStories: true,
      canEditStories: true,
      canDeleteStories: true,
    );
  }

  /// Promotes a user to moderator with common moderation permissions.
  ///
  /// This is a convenience method that promotes the specified user to administrator
  /// with permissions commonly needed for moderation: managing chat, deleting messages,
  /// restricting members, managing video chats, inviting users, and pinning messages.
  ///
  /// Example:
  /// ```dart
  /// await ctx.promoteToModerator(123456789);
  /// ```
  ///
  /// Returns True on success.
  Future<bool> promoteToModerator(int userId) async {
    return promoteChatMember(
      userId,
      canManageChat: true,
      canDeleteMessages: true,
      canRestrictMembers: true,
      canManageVideoChats: true,
      canInviteUsers: true,
      canPinMessages: true,
      canManageTopics: true,
    );
  }

  /// Promotes the author to moderator with common moderation permissions.
  ///
  /// This is a convenience method that promotes the message author to administrator
  /// with permissions commonly needed for moderation: managing chat, deleting messages,
  /// restricting members, managing video chats, inviting users, and pinning messages.
  ///
  /// Example:
  /// ```dart
  /// await ctx.promoteAuthorToModerator();
  /// ```
  ///
  /// Returns True on success.
  Future<bool> promoteAuthorToModerator() async {
    return promoteAuthor(
      canManageChat: true,
      canDeleteMessages: true,
      canRestrictMembers: true,
      canManageVideoChats: true,
      canInviteUsers: true,
      canPinMessages: true,
      canManageTopics: true,
    );
  }

  /// Promotes a user to content manager with content-related permissions.
  ///
  /// This is a convenience method that promotes the specified user to administrator
  /// with permissions for managing content: posting messages, editing messages,
  /// deleting messages, managing topics, and story-related permissions.
  ///
  /// Example:
  /// ```dart
  /// await ctx.promoteToContentManager(123456789);
  /// ```
  ///
  /// Returns True on success.
  Future<bool> promoteToContentManager(int userId) async {
    return promoteChatMember(
      userId,
      canPostMessages: true,
      canEditMessages: true,
      canDeleteMessages: true,
      canManageTopics: true,
      canPostStories: true,
      canEditStories: true,
      canDeleteStories: true,
      canPinMessages: true,
    );
  }

  /// Promotes the author to content manager with content-related permissions.
  ///
  /// This is a convenience method that promotes the message author to administrator
  /// with permissions for managing content: posting messages, editing messages,
  /// deleting messages, managing topics, and story-related permissions.
  ///
  /// Example:
  /// ```dart
  /// await ctx.promoteAuthorToContentManager();
  /// ```
  ///
  /// Returns True on success.
  Future<bool> promoteAuthorToContentManager() async {
    return promoteAuthor(
      canPostMessages: true,
      canEditMessages: true,
      canDeleteMessages: true,
      canManageTopics: true,
      canPostStories: true,
      canEditStories: true,
      canDeleteStories: true,
      canPinMessages: true,
    );
  }

  // ===============================
  // Reaction Shortcuts
  // ===============================

  /// Sets a reaction on the current message.
  ///
  /// Example:
  /// ```dart
  /// await ctx.setReaction([ReactionTypeEmoji(emoji: '👍')]);
  /// await ctx.setReaction([]); // Remove all reactions
  /// ```
  Future<bool> setReaction(List<ReactionType>? reaction, {bool? isBig}) async {
    final chatId = _getChatId();
    final msgId = messageId;
    _verifyInfo(
      [chatId, msgId],
      APIMethod.setMessageReaction,
      description:
          "No message or chat information found in the current update.",
    );

    return api.setMessageReaction(
      chatId!,
      msgId!,
      reaction: reaction,
      isBig: isBig,
    );
  }

  /// Sets a normal reaction on the current message.
  ///
  /// Example:
  /// ```dart
  /// await ctx.react('❤️');
  /// ```
  Future<bool> react(String reaction, {bool? isBig}) async {
    final chatId = _getChatId();
    final msgId = messageId;
    _verifyInfo(
      [chatId, msgId],
      APIMethod.setMessageReaction,
      description:
          "No message or chat information found in the current update.",
    );

    return api.setMessageReaction(
      chatId!,
      msgId!,
      reaction: [ReactionTypeEmoji(emoji: reaction)],
      isBig: isBig,
    );
  }

  /// Adds a thumbs up reaction to the current message.
  ///
  /// Example:
  /// ```dart
  /// await ctx.reactWithThumbsUp();
  /// ```
  Future<bool> reactWithThumbsUp({bool? isBig}) {
    return react('👍', isBig: isBig);
  }

  /// Adds a heart reaction to the current message.
  ///
  /// Example:
  /// ```dart
  /// await ctx.reactWithHeart();
  /// ```
  Future<bool> reactWithHeart({bool? isBig}) {
    return react('❤️', isBig: isBig);
  }

  /// Adds a fire reaction to the current message.
  ///
  /// Example:
  /// ```dart
  /// await ctx.reactWithFire();
  /// ```
  Future<bool> reactWithFire({bool? isBig}) {
    return react('🔥', isBig: isBig);
  }

  /// Removes all reactions from the current message.
  ///
  /// Example:
  /// ```dart
  /// await ctx.removeReactions();
  /// ```
  Future<bool> removeReactions() {
    return setReaction([]);
  }

  // ===============================
  // User Profile Shortcuts
  // ===============================

  /// Gets profile photos for the user who sent the current message.
  ///
  /// Example:
  /// ```dart
  /// final photos = await ctx.getUserProfilePhotos();
  /// print('User has ${photos.totalCount} profile photos');
  /// ```
  Future<UserProfilePhotos> getUserProfilePhotos({
    int? offset,
    int? limit,
  }) async {
    final userId = from?.id;
    _verifyInfo(
      [userId],
      APIMethod.getUserProfilePhotos,
      description: "No user information found in the current update.",
    );

    return api.getUserProfilePhotos(userId!, offset: offset, limit: limit);
  }

  // ===============================
  // File Management Shortcuts
  // ===============================

  /// Gets file information for a file in the current message.
  ///
  /// This works with photos, documents, audio, video, etc.
  ///
  /// Example:
  /// ```dart
  /// // For a photo message
  /// final file = await ctx.getMessageFile();
  /// print('File path: ${file.filePath}');
  /// ```
  Future<File?> getMessageFile() async {
    final message = msg;
    if (message == null) return null;

    String? fileId;

    // Try to extract file ID from different message types
    if (message.photo != null && message.photo!.isNotEmpty) {
      fileId = message.photo!.last.fileId; // Get the largest photo
    } else if (message.document != null) {
      fileId = message.document!.fileId;
    } else if (message.audio != null) {
      fileId = message.audio!.fileId;
    } else if (message.video != null) {
      fileId = message.video!.fileId;
    } else if (message.animation != null) {
      fileId = message.animation!.fileId;
    } else if (message.voice != null) {
      fileId = message.voice!.fileId;
    } else if (message.videoNote != null) {
      fileId = message.videoNote!.fileId;
    } else if (message.sticker != null) {
      fileId = message.sticker!.fileId;
    }

    if (fileId == null) return null;

    return api.getFile(fileId);
  }

  // ===============================
  // Business Connection Shortcuts
  // ===============================

  /// Reads the current business message.
  ///
  /// This method can only be used with business messages.
  ///
  /// Example:
  /// ```dart
  /// await ctx.readBusinessMessage();
  /// ```
  Future<bool> readBusinessMessage() async {
    final businessConnection =
        update.businessConnection?.id ?? msg?.businessConnectionId;
    final chatId = _getChatId();
    final msgId = messageId;
    _verifyInfo(
      [businessConnection, chatId, msgId],
      APIMethod.readBusinessMessage,
      description: "No business connection or message information found.",
    );

    return api.readBusinessMessage(businessConnection!, chatId!, msgId!);
  }

  // ===============================
  // Convenient Helper Methods
  // ===============================

  /// Checks if the current user is the sender of the message.
  ///
  /// Example:
  /// ```dart
  /// if (ctx.isFromUser(123456789)) {
  ///   await ctx.reply('Hello, specific user!');
  /// }
  /// ```
  bool isFromUser(int userId) {
    return from?.id == userId;
  }

  /// Checks if the current chat is a specific chat.
  ///
  /// Example:
  /// ```dart
  /// if (ctx.isFromChat(ChatID(123456789))) {
  ///   await ctx.reply('Hello, specific chat!');
  /// }
  /// ```
  bool isFromChat(ChatID chatId) {
    final currentChatId = _getChatId();
    return currentChatId?.id == chatId.id;
  }

  /// Checks if the message contains a specific text.
  ///
  /// Example:
  /// ```dart
  /// if (ctx.hasText('hello')) {
  ///   await ctx.reply('Hi there!');
  /// }
  /// ```
  bool hasText(String text, {bool caseSensitive = false}) {
    final messageText = this.text;
    if (messageText == null) return false;

    if (caseSensitive) {
      return messageText.contains(text);
    } else {
      return messageText.toLowerCase().contains(text.toLowerCase());
    }
  }

  /// Checks if the message has any media content.
  ///
  /// Example:
  /// ```dart
  /// if (ctx.hasMedia()) {
  ///   await ctx.reply('Nice media!');
  /// }
  /// ```
  bool hasMedia() {
    final message = msg;
    if (message == null) return false;

    return message.photo != null ||
        message.video != null ||
        message.animation != null ||
        message.audio != null ||
        message.voice != null ||
        message.videoNote != null ||
        message.document != null ||
        message.sticker != null;
  }

  /// Checks if the message is a reply to another message.
  ///
  /// Example:
  /// ```dart
  /// if (ctx.isReply()) {
  ///   await ctx.reply('You replied to a message!');
  /// }
  /// ```
  bool isReply() {
    return msg?.replyToMessage != null;
  }

  /// Gets the message being replied to, if any.
  ///
  /// Example:
  /// ```dart
  /// final replyTo = ctx.getReplyToMessage();
  /// if (replyTo != null) {
  ///   await ctx.reply('You replied to: ${replyTo.text}');
  /// }
  /// ```
  Message? getReplyToMessage() {
    return msg?.replyToMessage;
  }

  /// Checks if the current user is a bot admin (user ID matches bot ID).
  ///
  /// This is useful for checking if the message is from the bot itself.
  ///
  /// Example:
  /// ```dart
  /// if (ctx.isFromBot()) {
  ///   // Handle bot's own message
  ///   return; // Don't respond to own messages
  /// }
  /// ```
  bool isFromBot() {
    return from?.id == me.id;
  }

  /// Gets the effective user ID (from callback query, inline query, or message).
  ///
  /// Example:
  /// ```dart
  /// final userId = ctx.getEffectiveUserId();
  /// if (userId != null) {
  ///   print('User ID: $userId');
  /// }
  /// ```
  int? getEffectiveUserId() {
    return from?.id;
  }

  /// Gets the effective chat ID in the correct ID format.
  ///
  /// Example:
  /// ```dart
  /// final chatId = ctx.getEffectiveChatId();
  /// if (chatId != null) {
  ///   // Use chatId for API calls
  /// }
  /// ```
  ID? getEffectiveChatId() {
    return _getChatId();
  }

  /// Checks if the user has a specific username.
  ///
  /// Example:
  /// ```dart
  /// if (ctx.hasUsername('john_doe')) {
  ///   await ctx.reply('Hello John!');
  /// }
  /// ```
  bool hasUsername(String username) {
    final userUsername = from?.username;
    return userUsername != null &&
        userUsername.toLowerCase() == username.toLowerCase();
  }

  /// Gets the display name for the user (first name + last name or username).
  ///
  /// Example:
  /// ```dart
  /// final name = ctx.getUserDisplayName();
  /// await ctx.reply('Hello $name!');
  /// ```
  String getUserDisplayName() {
    final user = from;
    if (user == null) return 'Unknown User';

    if (user.firstName.isNotEmpty) {
      final lastName = user.lastName;
      if (lastName != null && lastName.isNotEmpty) {
        return '${user.firstName} $lastName';
      }
      return user.firstName;
    }

    return user.username ?? 'Unknown User';
  }

  /// Checks if the message contains any entities of a specific type.
  ///
  /// Example:
  /// ```dart
  /// if (ctx.hasEntity(MessageEntityType.url)) {
  ///   await ctx.reply('Found a URL!');
  /// }
  /// ```
  bool hasEntity(MessageEntityType type) {
    final messageEntities = entities;
    if (messageEntities == null) return false;

    return messageEntities.any((entity) => entity.type == type);
  }

  /// Gets all entities of a specific type from the message.
  ///
  /// Example:
  /// ```dart
  /// final urls = ctx.getEntitiesOfType(MessageEntityType.url);
  /// for (final url in urls) {
  ///   print('Found URL entity at offset ${url.offset}');
  /// }
  /// ```
  List<MessageEntity> getEntitiesOfType(MessageEntityType type) {
    final messageEntities = entities;
    if (messageEntities == null) return [];

    return messageEntities.where((entity) => entity.type == type).toList();
  }

  // ===============================
  // Typing Indicator Helpers
  // ===============================

  /// Shows typing indicator and executes a function.
  ///
  /// This is useful for long operations to show the user that the bot is working.
  ///
  /// Example:
  /// ```dart
  /// await ctx.withTyping(() async {
  ///   // Some long operation
  ///   await Future.delayed(Duration(seconds: 2));
  ///   await ctx.reply('Done!');
  /// });
  /// ```
  Future<T> withTyping<T>(Future<T> Function() operation) async {
    await sendTyping();
    return await operation();
  }

  /// Shows upload photo indicator and executes a function.
  ///
  /// Example:
  /// ```dart
  /// await ctx.withUploadPhoto(() async {
  ///   final photo = await processPhoto();
  ///   await ctx.replyWithPhoto(photo);
  /// });
  /// ```
  Future<T> withUploadPhoto<T>(Future<T> Function() operation) async {
    await sendUploadPhoto();
    return await operation();
  }

  /// Shows upload document indicator and executes a function.
  ///
  /// Example:
  /// ```dart
  /// await ctx.withUploadDocument(() async {
  ///   final document = await generateReport();
  ///   await ctx.replyWithDocument(document);
  /// });
  /// ```
  Future<T> withUploadDocument<T>(Future<T> Function() operation) async {
    await sendUploadDocument();
    return await operation();
  }
}
