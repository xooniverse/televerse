part of televerse;

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
    InputFile? thumb,
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
      thumb: thumb,
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
    InputFile? thumb,
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
      thumb: thumb,
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
    InputFile? thumb,
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
      thumb: thumb,
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
    InputFile? thumb,
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
      thumb: thumb,
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
  /// Provide a list of [InputMedia] as [media]. Use the [InputMedia.fromFile] or [InputMedia.fromUrl] or [InputMedia.fromFileId]
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
}
