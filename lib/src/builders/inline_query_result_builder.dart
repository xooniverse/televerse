part of '../../../televerse.dart';

/// A utility class to build Inline Query Results quickly and easily.
///
/// This class provides methods to construct various types of Inline Query Results,
/// such as articles, audio files, documents, and more, which can be used in Telegram bots.
///
/// ## Inline Query Result Builder
///
/// Example usage:
/// ```dart
/// final builder = InlineQueryResultBuilder();
/// builder.article(
///   '1',
///   'Example Article',
///   (content) => content.text('This is an example article.'),
///   description: 'An example article for demonstration.',
/// );
/// final results = builder.build();
/// ```
class InlineQueryResultBuilder {
  /// Results
  final List<InlineQueryResult> _results = [];

  /// Adds an Article result to the final results.
  ///
  /// - [id] is the unique identifier for this result.
  /// - [title] is the title of the result.
  /// - [contentGenerator] is a function that generates the content of the article.
  /// - [replyMarkup] is an optional inline keyboard attached to the message.
  /// - [url] is an optional URL of the result.
  /// - [description] is an optional short description of the result.
  /// - [thumbnailUrl] is an optional URL of the thumbnail for the result.
  /// - [thumbnailWidth] is the optional width of the thumbnail.
  /// - [thumbnailHeight] is the optional height of the thumbnail.
  InlineQueryResultBuilder article(
    String id,
    String title,
    InputMessageContent Function(
      MessageContentGenerator content,
    ) contentGenerator, {
    InlineKeyboardMarkup? replyMarkup,
    String? url,
    String? description,
    String? thumbnailUrl,
    int? thumbnailWidth,
    int? thumbnailHeight,
  }) {
    _results.add(
      InlineQueryResultArticle(
        id: id,
        title: title,
        inputMessageContent: contentGenerator(
          MessageContentGenerator.i,
        ),
        replyMarkup: replyMarkup,
        url: url,
        description: description,
        thumbnailHeight: thumbnailHeight,
        thumbnailUrl: thumbnailUrl,
        thumbnailWidth: thumbnailWidth,
      ),
    );
    return this;
  }

  /// Adds an Audio result to the final results.
  ///
  /// - [id] is the unique identifier for this result.
  /// - [audioUrl] is the URL of the audio file.
  /// - [title] is the title of the result.
  /// - [caption] is an optional caption for the audio file.
  /// - [parseMode] specifies the parse mode of the caption.
  /// - [captionEntities] specifies special entities in the caption.
  /// - [performer] is the performer of the audio.
  /// - [audioDuration] is the duration of the audio in seconds.
  /// - [replyMarkup] is an optional inline keyboard attached to the message.
  /// - [contentGenerator] is an optional function to generate additional content.
  InlineQueryResultBuilder audio(
    String id,
    String audioUrl,
    String title, {
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    String? performer,
    int? audioDuration,
    InlineKeyboardMarkup? replyMarkup,
    InputMessageContent? Function(
      MessageContentGenerator content,
    )? contentGenerator,
  }) {
    _results.add(
      InlineQueryResultAudio(
        audioUrl: audioUrl,
        title: title,
        id: id,
        caption: caption,
        parseMode: parseMode,
        captionEntities: captionEntities,
        performer: performer,
        audioDuration: audioDuration,
        replyMarkup: replyMarkup,
        inputMessageContent: contentGenerator?.call(MessageContentGenerator.i),
      ),
    );
    return this;
  }

  /// Adds a Contact result to the final results.
  ///
  /// - [id] is the unique identifier for this result.
  /// - [phoneNumber] is the phone number of the contact.
  /// - [firstName] is the first name of the contact.
  /// - [lastName] is the optional last name of the contact.
  /// - [vcard] is the optional vCard of the contact.
  /// - [replyMarkup] is an optional inline keyboard attached to the message.
  /// - [contentGenerator] is an optional function to generate additional content.
  /// - [thumbnailUrl] is an optional URL of the thumbnail for the result.
  /// - [thumbnailWidth] is the optional width of the thumbnail.
  /// - [thumbnailHeight] is the optional height of the thumbnail.
  InlineQueryResultBuilder contact(
    String id,
    String phoneNumber,
    String firstName, {
    String? lastName,
    String? vcard,
    InlineKeyboardMarkup? replyMarkup,
    InputMessageContent? Function(
      MessageContentGenerator content,
    )? contentGenerator,
    String? thumbnailUrl,
    int? thumbnailWidth,
    int? thumbnailHeight,
  }) {
    _results.add(
      InlineQueryResultContact(
        phoneNumber: phoneNumber,
        firstName: firstName,
        id: id,
        lastName: lastName,
        vcard: vcard,
        replyMarkup: replyMarkup,
        inputMessageContent: contentGenerator?.call(MessageContentGenerator.i),
        thumbnailUrl: thumbnailUrl,
        thumbnailWidth: thumbnailWidth,
        thumbnailHeight: thumbnailHeight,
      ),
    );
    return this;
  }

  /// Adds a Game result to the final results.
  ///
  /// - [id] is the unique identifier for this result.
  /// - [gameShortName] is the short name of the game.
  /// - [replyMarkup] is an optional inline keyboard attached to the message.
  InlineQueryResultBuilder game(
    String id,
    String gameShortName, {
    InlineKeyboardMarkup? replyMarkup,
  }) {
    _results.add(
      InlineQueryResultGame(
        gameShortName: gameShortName,
        id: id,
        replyMarkup: replyMarkup,
      ),
    );
    return this;
  }

  /// Adds an document result to the final results
  InlineQueryResultBuilder document(
    String id,
    String title,
    String documentUrl,
    String mimeType, {
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    String? description,
    InlineKeyboardMarkup? replyMarkup,
    InputMessageContent? Function(
      MessageContentGenerator content,
    )? contentGenerator,
    String? thumbnailUrl,
    int? thumbnailWidth,
    int? thumbnailHeight,
  }) {
    _results.add(
      InlineQueryResultDocument(
        title: title,
        documentUrl: documentUrl,
        mimeType: mimeType,
        id: id,
        caption: caption,
        parseMode: parseMode,
        captionEntities: captionEntities,
        description: description,
        replyMarkup: replyMarkup,
        inputMessageContent: contentGenerator?.call(MessageContentGenerator.i),
        thumbnailUrl: thumbnailUrl,
        thumbnailWidth: thumbnailWidth,
        thumbnailHeight: thumbnailHeight,
      ),
    );
    return this;
  }

  /// Adds a GIF result to the final results.
  ///
  /// - [id] is the unique identifier for this result.
  /// - [gifUrl] is the URL of the GIF file.
  /// - [thumbnailUrl] is the URL of the thumbnail for the GIF.
  /// - [gifWidth] is the optional width of the GIF.
  /// - [gifHeight] is the optional height of the GIF.
  /// - [gifDuration] is the optional duration of the GIF in seconds.
  /// - [thumbnailMimeType] is the optional MIME type of the thumbnail.
  /// - [title] is an optional title for the GIF.
  /// - [caption] is an optional caption for the GIF.
  /// - [parseMode] specifies the parse mode of the caption.
  /// - [captionEntities] specifies special entities in the caption.
  /// - [replyMarkup] is an optional inline keyboard attached to the message.
  /// - [contentGenerator] is an optional function to generate additional content.
  InlineQueryResultBuilder gif(
    String id,
    String gifUrl,
    String thumbnailUrl, {
    int? gifWidth,
    int? gifHeight,
    int? gifDuration,
    String? thumbnailMimeType,
    String? title,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    InlineKeyboardMarkup? replyMarkup,
    InputMessageContent? Function(
      MessageContentGenerator content,
    )? contentGenerator,
  }) {
    _results.add(
      InlineQueryResultGif(
        gifUrl: gifUrl,
        thumbnailUrl: thumbnailUrl,
        id: id,
        gifWidth: gifWidth,
        gifHeight: gifHeight,
        gifDuration: gifDuration,
        thumbnailMimeType: thumbnailMimeType,
        title: title,
        caption: caption,
        parseMode: parseMode,
        captionEntities: captionEntities,
        replyMarkup: replyMarkup,
        inputMessageContent: contentGenerator?.call(MessageContentGenerator.i),
      ),
    );
    return this;
  }

  /// Adds a Location result to the final results.
  ///
  /// - [id] is the unique identifier for this result.
  /// - [latitude] is the latitude of the location.
  /// - [longitude] is the longitude of the location.
  /// - [title] is the title of the location.
  /// - [horizontalAccuracy] is the optional radius of uncertainty for the location.
  /// - [livePeriod] is the optional period in seconds for which the location can be updated.
  /// - [heading] is the optional direction in which the user is moving.
  /// - [proximityAlertRadius] is the optional radius in meters for proximity alerts.
  /// - [replyMarkup] is an optional inline keyboard attached to the message.
  /// - [contentGenerator] is an optional function to generate additional content.
  /// - [thumbnailUrl] is an optional URL of the thumbnail for the location.
  /// - [thumbnailWidth] is the optional width of the thumbnail.
  /// - [thumbnailHeight] is the optional height of the thumbnail.
  InlineQueryResultBuilder location(
    String id,
    double latitude,
    double longitude,
    String title, {
    int? horizontalAccuracy,
    int? livePeriod,
    int? heading,
    int? proximityAlertRadius,
    InlineKeyboardMarkup? replyMarkup,
    InputMessageContent? Function(
      MessageContentGenerator content,
    )? contentGenerator,
    String? thumbnailUrl,
    int? thumbnailWidth,
    int? thumbnailHeight,
  }) {
    _results.add(
      InlineQueryResultLocation(
        latitude: latitude,
        longitude: longitude,
        title: title,
        id: id,
        horizontalAccuracy: horizontalAccuracy,
        livePeriod: livePeriod,
        heading: heading,
        proximityAlertRadius: proximityAlertRadius,
        replyMarkup: replyMarkup,
        inputMessageContent: contentGenerator?.call(MessageContentGenerator.i),
        thumbnailUrl: thumbnailUrl,
        thumbnailWidth: thumbnailWidth,
        thumbnailHeight: thumbnailHeight,
      ),
    );
    return this;
  }

  /// Adds an Mpeg4 GIF result to the final results.
  ///
  /// - [id] is the unique identifier for this result.
  /// - [mpeg4Url] is the URL of the Mpeg4 GIF file.
  /// - [thumbnailUrl] is the URL of the thumbnail for the Mpeg4 GIF.
  /// - [mpeg4Width] is the optional width of the Mpeg4 GIF.
  /// - [mpeg4Height] is the optional height of the Mpeg4 GIF.
  /// - [mpeg4Duration] is the optional duration of the Mpeg4 GIF in seconds.
  /// - [thumbnailMimeType] is the optional MIME type of the thumbnail.
  /// - [title] is an optional title for the Mpeg4 GIF.
  /// - [caption] is an optional caption for the Mpeg4 GIF.
  /// - [parseMode] specifies the parse mode of the caption.
  /// - [captionEntities] specifies special entities in the caption.
  /// - [replyMarkup] is an optional inline keyboard attached to the message.
  /// - [contentGenerator] is an optional function to generate additional content.
  InlineQueryResultBuilder mpeg4gif(
    String id,
    String mpeg4Url,
    String thumbnailUrl, {
    int? mpeg4Width,
    int? mpeg4Height,
    int? mpeg4Duration,
    String? thumbnailMimeType,
    String? title,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    InlineKeyboardMarkup? replyMarkup,
    InputMessageContent? Function(
      MessageContentGenerator content,
    )? contentGenerator,
  }) {
    _results.add(
      InlineQueryResultMpeg4Gif(
        mpeg4Url: mpeg4Url,
        thumbnailUrl: thumbnailUrl,
        id: id,
        mpeg4Width: mpeg4Width,
        mpeg4Height: mpeg4Height,
        mpeg4Duration: mpeg4Duration,
        thumbnailMimeType: thumbnailMimeType,
        title: title,
        caption: caption,
        parseMode: parseMode,
        captionEntities: captionEntities,
        replyMarkup: replyMarkup,
        inputMessageContent: contentGenerator?.call(MessageContentGenerator.i),
      ),
    );
    return this;
  }

  /// Adds a Photo result to the final results.
  ///
  /// - [id] is the unique identifier for this result.
  /// - [photoUrl] is the URL of the photo file.
  /// - [thumbnailUrl] is the URL of the thumbnail for the photo.
  /// - [photoWidth] is the optional width of the photo.
  /// - [photoHeight] is the optional height of the photo.
  /// - [title] is an optional title for the photo.
  /// - [description] is an optional description for the photo.
  /// - [caption] is an optional caption for the photo.
  /// - [parseMode] specifies the parse mode of the caption.
  /// - [captionEntities] specifies special entities in the caption.
  /// - [replyMarkup] is an optional inline keyboard attached to the message.
  /// - [contentGenerator] is an optional function to generate additional content.
  InlineQueryResultBuilder photo(
    String id,
    String photoUrl,
    String thumbnailUrl, {
    int? photoWidth,
    int? photoHeight,
    String? title,
    String? description,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    InlineKeyboardMarkup? replyMarkup,
    InputMessageContent? Function(
      MessageContentGenerator content,
    )? contentGenerator,
  }) {
    _results.add(
      InlineQueryResultPhoto(
        photoUrl: photoUrl,
        thumbnailUrl: thumbnailUrl,
        id: id,
        photoWidth: photoWidth,
        photoHeight: photoHeight,
        title: title,
        description: description,
        caption: caption,
        parseMode: parseMode,
        captionEntities: captionEntities,
        replyMarkup: replyMarkup,
        inputMessageContent: contentGenerator?.call(MessageContentGenerator.i),
      ),
    );
    return this;
  }

  /// Adds a Venue result to the final results.
  ///
  /// - [id] is the unique identifier for this result.
  /// - [latitude] is the latitude of the venue.
  /// - [longitude] is the longitude of the venue.
  /// - [title] is the title of the venue.
  /// - [address] is the address of the venue.
  /// - [foursquareId] is the optional Foursquare identifier of the venue.
  /// - [foursquareType] is the optional Foursquare type of the venue.
  /// - [googlePlaceId] is the optional Google Places identifier of the venue.
  /// - [googlePlaceType] is the optional Google Places type of the venue.
  /// - [replyMarkup] is an optional inline keyboard attached to the message.
  /// - [contentGenerator] is an optional function to generate additional content.
  /// - [thumbnailUrl] is an optional URL of the thumbnail for the venue.
  /// - [thumbnailWidth] is the optional width of the thumbnail.
  /// - [thumbnailHeight] is the optional height of the thumbnail.
  InlineQueryResultBuilder venue(
    String id,
    double latitude,
    double longitude,
    String title,
    String address, {
    String? foursquareId,
    String? foursquareType,
    String? googlePlaceId,
    String? googlePlaceType,
    InlineKeyboardMarkup? replyMarkup,
    InputMessageContent? Function(
      MessageContentGenerator content,
    )? contentGenerator,
    String? thumbnailUrl,
    int? thumbnailWidth,
    int? thumbnailHeight,
  }) {
    _results.add(
      InlineQueryResultVenue(
        latitude: latitude,
        longitude: longitude,
        title: title,
        address: address,
        id: id,
        foursquareId: foursquareId,
        foursquareType: foursquareType,
        googlePlaceId: googlePlaceId,
        googlePlaceType: googlePlaceType,
        replyMarkup: replyMarkup,
        inputMessageContent: contentGenerator?.call(MessageContentGenerator.i),
        thumbnailUrl: thumbnailUrl,
        thumbnailWidth: thumbnailWidth,
        thumbnailHeight: thumbnailHeight,
      ),
    );
    return this;
  }

  /// Adds a Video result to the final results.
  ///
  /// - [id] is the unique identifier for this result.
  /// - [title] is the title of the video.
  /// - [videoUrl] is the URL of the video file.
  /// - [mimeType] is the MIME type of the video.
  /// - [thumbnailUrl] is the URL of the thumbnail for the video.
  /// - [caption] is an optional caption for the video.
  /// - [parseMode] specifies the parse mode of the caption.
  /// - [captionEntities] specifies special entities in the caption.
  /// - [videoWidth] is the optional width of the video.
  /// - [videoHeight] is the optional height of the video.
  /// - [videoDuration] is the optional duration of the video in seconds.
  /// - [description] is an optional description for the video.
  /// - [replyMarkup] is an optional inline keyboard attached to the message.
  /// - [showCaptionAboveMedia] specifies whether to show the caption above the media.
  /// - [contentGenerator] is an optional function to generate additional content.
  InlineQueryResultBuilder video(
    String id,
    String title, {
    required String videoUrl,
    required String mimeType,
    required String thumbnailUrl,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    int? videoWidth,
    int? videoHeight,
    int? videoDuration,
    String? description,
    InlineKeyboardMarkup? replyMarkup,
    bool? showCaptionAboveMedia,
    InputMessageContent? Function(
      MessageContentGenerator content,
    )? contentGenerator,
  }) {
    _results.add(
      InlineQueryResultVideo(
        videoUrl: videoUrl,
        mimeType: mimeType,
        thumbnailUrl: thumbnailUrl,
        title: title,
        id: id,
        caption: caption,
        parseMode: parseMode,
        captionEntities: captionEntities,
        videoWidth: videoWidth,
        videoHeight: videoHeight,
        videoDuration: videoDuration,
        description: description,
        replyMarkup: replyMarkup,
        inputMessageContent: contentGenerator?.call(MessageContentGenerator.i),
        showCaptionAboveMedia: showCaptionAboveMedia,
      ),
    );
    return this;
  }

  /// Adds a Voice result to the final results.
  ///
  /// - [id] is the unique identifier for this result.
  /// - [title] is the title of the voice message.
  /// - [voiceUrl] is the URL of the voice message file.
  /// - [caption] is an optional caption for the voice message.
  /// - [parseMode] specifies the parse mode of the caption.
  /// - [captionEntities] specifies special entities in the caption.
  /// - [voiceDuration] is the optional duration of the voice message in seconds.
  /// - [replyMarkup] is an optional inline keyboard attached to the message.
  /// - [contentGenerator] is an optional function to generate additional content.
  InlineQueryResultBuilder voice(
    String id,
    String title, {
    required String voiceUrl,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    int? voiceDuration,
    InlineKeyboardMarkup? replyMarkup,
    InputMessageContent? Function(
      MessageContentGenerator content,
    )? contentGenerator,
  }) {
    _results.add(
      InlineQueryResultVoice(
        voiceUrl: voiceUrl,
        title: title,
        id: id,
        caption: caption,
        parseMode: parseMode,
        captionEntities: captionEntities,
        voiceDuration: voiceDuration,
        replyMarkup: replyMarkup,
        inputMessageContent: contentGenerator?.call(MessageContentGenerator.i),
      ),
    );
    return this;
  }

  /// Adds a Cached Audio result to the final results.
  ///
  /// - [id] is the unique identifier for this result.
  /// - [audioFileId] is a valid file identifier for the audio file.
  /// - [caption] is an optional caption for the audio file.
  /// - [parseMode] specifies the parse mode of the caption.
  /// - [captionEntities] specifies special entities in the caption.
  /// - [replyMarkup] is an optional inline keyboard attached to the message.
  /// - [contentGenerator] is an optional function to generate additional content.
  InlineQueryResultBuilder cachedAudio(
    String id,
    String audioFileId, {
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    InlineKeyboardMarkup? replyMarkup,
    InputMessageContent? Function(
      MessageContentGenerator content,
    )? contentGenerator,
  }) {
    _results.add(
      InlineQueryResultCachedAudio(
        id: id,
        audioFileId: audioFileId,
        caption: caption,
        parseMode: parseMode,
        captionEntities: captionEntities,
        replyMarkup: replyMarkup,
        inputMessageContent: contentGenerator?.call(MessageContentGenerator.i),
      ),
    );
    return this;
  }

  /// Adds a Cached Document result to the final results.
  ///
  /// - [id] is the unique identifier for this result.
  /// - [documentFileId] is a valid file identifier for the document file.
  /// - [title] is the title for the result.
  /// - [description] is an optional short description of the result.
  /// - [caption] is an optional caption for the document.
  /// - [parseMode] specifies the parse mode of the caption.
  /// - [captionEntities] specifies special entities in the caption.
  /// - [replyMarkup] is an optional inline keyboard attached to the message.
  /// - [contentGenerator] is an optional function to generate additional content.
  InlineQueryResultBuilder cachedDocument(
    String id,
    String documentFileId,
    String title, {
    String? description,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    InlineKeyboardMarkup? replyMarkup,
    InputMessageContent? Function(
      MessageContentGenerator content,
    )? contentGenerator,
  }) {
    _results.add(
      InlineQueryResultCachedDocument(
        id: id,
        documentFileId: documentFileId,
        title: title,
        description: description,
        caption: caption,
        parseMode: parseMode,
        captionEntities: captionEntities,
        replyMarkup: replyMarkup,
        inputMessageContent: contentGenerator?.call(MessageContentGenerator.i),
      ),
    );
    return this;
  }

  /// Adds a Cached GIF result to the final results.
  ///
  /// - [id] is the unique identifier for this result.
  /// - [gifFileId] is a valid file identifier for the GIF file.
  /// - [title] is an optional title for the result.
  /// - [caption] is an optional caption for the GIF.
  /// - [parseMode] specifies the parse mode of the caption.
  /// - [captionEntities] specifies special entities in the caption.
  /// - [replyMarkup] is an optional inline keyboard attached to the message.
  /// - [contentGenerator] is an optional function to generate additional content.
  /// - [showCaptionAboveMedia] specifies whether to show the caption above the media.
  InlineQueryResultBuilder cachedGif(
    String id,
    String gifFileId, {
    String? title,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    InlineKeyboardMarkup? replyMarkup,
    InputMessageContent? Function(
      MessageContentGenerator content,
    )? contentGenerator,
    bool? showCaptionAboveMedia,
  }) {
    _results.add(
      InlineQueryResultCachedGif(
        id: id,
        gifFileId: gifFileId,
        title: title,
        caption: caption,
        parseMode: parseMode,
        captionEntities: captionEntities,
        replyMarkup: replyMarkup,
        inputMessageContent: contentGenerator?.call(MessageContentGenerator.i),
        showCaptionAboveMedia: showCaptionAboveMedia,
      ),
    );
    return this;
  }

  /// Adds a Cached Mpeg4 GIF result to the final results.
  ///
  /// - [id] is the unique identifier for this result.
  /// - [mpeg4FileId] is a valid file identifier for the MPEG4 file.
  /// - [title] is an optional title for the result.
  /// - [caption] is an optional caption for the MPEG4 GIF.
  /// - [parseMode] specifies the parse mode of the caption.
  /// - [captionEntities] specifies special entities in the caption.
  /// - [replyMarkup] is an optional inline keyboard attached to the message.
  /// - [contentGenerator] is an optional function to generate additional content.
  /// - [showCaptionAboveMedia] specifies whether to show the caption above the media.
  InlineQueryResultBuilder cachedMpeg4gif(
    String id,
    String mpeg4FileId, {
    String? title,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    InlineKeyboardMarkup? replyMarkup,
    InputMessageContent? Function(
      MessageContentGenerator content,
    )? contentGenerator,
    bool? showCaptionAboveMedia,
  }) {
    _results.add(
      InlineQueryResultCachedMpeg4Gif(
        id: id,
        mpeg4FileId: mpeg4FileId,
        title: title,
        caption: caption,
        parseMode: parseMode,
        captionEntities: captionEntities,
        replyMarkup: replyMarkup,
        inputMessageContent: contentGenerator?.call(MessageContentGenerator.i),
        showCaptionAboveMedia: showCaptionAboveMedia,
      ),
    );
    return this;
  }

  /// Adds a Cached Photo result to the final results.
  ///
  /// - [id] is the unique identifier for this result.
  /// - [photoFileId] is a valid file identifier for the photo.
  /// - [title] is an optional title for the result.
  /// - [description] is an optional short description of the result.
  /// - [caption] is an optional caption for the photo.
  /// - [parseMode] specifies the parse mode of the caption.
  /// - [captionEntities] specifies special entities in the caption.
  /// - [replyMarkup] is an optional inline keyboard attached to the message.
  /// - [contentGenerator] is an optional function to generate additional content.
  /// - [showCaptionAboveMedia] specifies whether to show the caption above the media.
  InlineQueryResultBuilder cachedPhoto(
    String id,
    String photoFileId, {
    String? title,
    String? description,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    InlineKeyboardMarkup? replyMarkup,
    InputMessageContent? Function(
      MessageContentGenerator content,
    )? contentGenerator,
    bool? showCaptionAboveMedia,
  }) {
    _results.add(
      InlineQueryResultCachedPhoto(
        id: id,
        photoFileId: photoFileId,
        title: title,
        description: description,
        caption: caption,
        parseMode: parseMode,
        captionEntities: captionEntities,
        replyMarkup: replyMarkup,
        inputMessageContent: contentGenerator?.call(MessageContentGenerator.i),
        showCaptionAboveMedia: showCaptionAboveMedia,
      ),
    );
    return this;
  }

  /// Adds a Cached Sticker result to the final results.
  ///
  /// - [id] is the unique identifier for this result.
  /// - [stickerFileId] is a valid file identifier for the sticker.
  /// - [replyMarkup] is an optional inline keyboard attached to the message.
  /// - [contentGenerator] is an optional function to generate additional content.
  InlineQueryResultBuilder cachedSticker(
    String id,
    String stickerFileId, {
    InlineKeyboardMarkup? replyMarkup,
    InputMessageContent? Function(
      MessageContentGenerator content,
    )? contentGenerator,
  }) {
    _results.add(
      InlineQueryResultCachedSticker(
        id: id,
        stickerFileId: stickerFileId,
        replyMarkup: replyMarkup,
        inputMessageContent: contentGenerator?.call(MessageContentGenerator.i),
      ),
    );
    return this;
  }

  /// Adds a Cached Video result to the final results.
  ///
  /// - [id] is the unique identifier for this result.
  /// - [videoFileId] is a valid file identifier for the video file.
  /// - [title] is the title for the result.
  /// - [description] is an optional short description of the result.
  /// - [caption] is an optional caption for the video.
  /// - [parseMode] specifies the parse mode of the caption.
  /// - [captionEntities] specifies special entities in the caption.
  /// - [replyMarkup] is an optional inline keyboard attached to the message.
  /// - [contentGenerator] is an optional function to generate additional content.
  /// - [showCaptionAboveMedia] specifies whether to show the caption above the media.
  InlineQueryResultBuilder cachedVideo(
    String id,
    String videoFileId,
    String title, {
    String? description,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    InlineKeyboardMarkup? replyMarkup,
    InputMessageContent? Function(
      MessageContentGenerator content,
    )? contentGenerator,
    bool? showCaptionAboveMedia,
  }) {
    _results.add(
      InlineQueryResultCachedVideo(
        id: id,
        videoFileId: videoFileId,
        title: title,
        description: description,
        caption: caption,
        parseMode: parseMode,
        captionEntities: captionEntities,
        replyMarkup: replyMarkup,
        inputMessageContent: contentGenerator?.call(MessageContentGenerator.i),
        showCaptionAboveMedia: showCaptionAboveMedia,
      ),
    );
    return this;
  }

  /// Adds a Cached Voice result to the final results.
  ///
  /// - [id] is the unique identifier for this result.
  /// - [voiceFileId] is a valid file identifier for the voice message.
  /// - [title] is the title for the voice message.
  /// - [caption] is an optional caption for the voice message.
  /// - [parseMode] specifies the parse mode of the caption.
  /// - [captionEntities] specifies special entities in the caption.
  /// - [replyMarkup] is an optional inline keyboard attached to the message.
  /// - [contentGenerator] is an optional function to generate additional content.
  InlineQueryResultBuilder cachedVoice(
    String id,
    String voiceFileId,
    String title, {
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    InlineKeyboardMarkup? replyMarkup,
    InputMessageContent? Function(
      MessageContentGenerator content,
    )? contentGenerator,
  }) {
    _results.add(
      InlineQueryResultCachedVoice(
        id: id,
        voiceFileId: voiceFileId,
        title: title,
        caption: caption,
        parseMode: parseMode,
        captionEntities: captionEntities,
        replyMarkup: replyMarkup,
        inputMessageContent: contentGenerator?.call(MessageContentGenerator.i),
      ),
    );
    return this;
  }

  /// Returns the final list of Inline Query Results
  List<InlineQueryResult> build() {
    return _results;
  }
}
