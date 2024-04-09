part of '../../../televerse.dart';

/// Basically stuffs the input message content to the Inline Query Result
class InputMessageContentStuffer {
  /// The Inline Query Result to which the content should be stuffed.
  InlineQueryResult result;

  /// Creates a content stuffer.
  InputMessageContentStuffer(this.result);

  /// Attaches the input message content tot he query result.
  void build() {}
}

/// A utility class to build Inline Query Results quickly and easily.
///
/// # Inline Query Result Builder
///
/// Use the methods provided by this class to construct various types of Inline Query Results,
/// such as articles, audio files, documents, etc.
///
class InlineQueryResultBuilder {
  /// Results
  final List<InlineQueryResult> _results = [];

  /// Adds an Article result to the final results
  InlineQueryResultBuilder article(
    String id,
    String title,
    InputMessageContent inputMessageContent, {
    InlineKeyboardMarkup? replyMarkup,
    String? url,
    bool? hideUrl,
    String? description,
    String? thumbnailUrl,
    int? thumbnailWidth,
    int? thumbnailHeight,
  }) {
    _results.add(
      InlineQueryResultArticle(
        id: id,
        title: title,
        inputMessageContent: inputMessageContent,
        replyMarkup: replyMarkup,
        url: url,
        hideUrl: hideUrl,
        description: description,
        thumbnailHeight: thumbnailHeight,
        thumbnailUrl: thumbnailUrl,
        thumbnailWidth: thumbnailWidth,
      ),
    );
    return this;
  }

  /// Adds an Audio result to the final results
  InlineQueryResultBuilder audio(
    String audioUrl,
    String title,
    String id, {
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    String? performer,
    int? audioDuration,
    InlineKeyboardMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
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
        inputMessageContent: inputMessageContent,
      ),
    );
    return this;
  }

  /// Adds a contact result to the final results
  InlineQueryResultBuilder contact(
    String phoneNumber,
    String firstName,
    String id, {
    String? lastName,
    String? vcard,
    InlineKeyboardMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
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
        inputMessageContent: inputMessageContent,
        thumbnailUrl: thumbnailUrl,
        thumbnailWidth: thumbnailWidth,
        thumbnailHeight: thumbnailHeight,
      ),
    );
    return this;
  }

  /// Adds an game result to the final results
  InlineQueryResultBuilder game(
    String gameShortName,
    String id, {
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
    String title,
    String documentUrl,
    String mimeType,
    String id, {
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    String? description,
    InlineKeyboardMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
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
        inputMessageContent: inputMessageContent,
        thumbnailUrl: thumbnailUrl,
        thumbnailWidth: thumbnailWidth,
        thumbnailHeight: thumbnailHeight,
      ),
    );
    return this;
  }

  /// Adds an GIF result to the final results
  InlineQueryResultBuilder gif(
    String gifUrl,
    String thumbnailUrl,
    String id, {
    int? gifWidth,
    int? gifHeight,
    int? gifDuration,
    String? thumbnailMimeType,
    String? title,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    InlineKeyboardMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
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
        inputMessageContent: inputMessageContent,
      ),
    );
    return this;
  }

  /// Adds an location result to the final results
  InlineQueryResultBuilder location(
    double latitude,
    double longitude,
    String title,
    String id, {
    int? horizontalAccuracy,
    int? livePeriod,
    int? heading,
    int? proximityAlertRadius,
    InlineKeyboardMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
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
        inputMessageContent: inputMessageContent,
        thumbnailUrl: thumbnailUrl,
        thumbnailWidth: thumbnailWidth,
        thumbnailHeight: thumbnailHeight,
      ),
    );
    return this;
  }

  /// Adds an Mpeg4GIF result to the final results
  InlineQueryResultBuilder mpeg4gif(
    String mpeg4Url,
    String thumbnailUrl,
    String id, {
    int? mpeg4Width,
    int? mpeg4Height,
    int? mpeg4Duration,
    String? thumbnailMimeType,
    String? title,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    InlineKeyboardMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
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
        inputMessageContent: inputMessageContent,
      ),
    );
    return this;
  }

  /// Adds an photo result to the final results
  InlineQueryResultBuilder photo(
    String photoUrl,
    String thumbnailUrl,
    String id, {
    int? photoWidth,
    int? photoHeight,
    String? title,
    String? description,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    InlineKeyboardMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
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
        inputMessageContent: inputMessageContent,
      ),
    );
    return this;
  }

  /// Adds an venue result to the final results
  InlineQueryResultBuilder venue(
    double latitude,
    double longitude,
    String title,
    String address,
    String id, {
    String? foursquareId,
    String? foursquareType,
    String? googlePlaceId,
    String? googlePlaceType,
    InlineKeyboardMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
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
        inputMessageContent: inputMessageContent,
        thumbnailUrl: thumbnailUrl,
        thumbnailWidth: thumbnailWidth,
        thumbnailHeight: thumbnailHeight,
      ),
    );
    return this;
  }

  /// Adds an video result to the final results
  InlineQueryResultBuilder video(
    double latitude,
    double longitude,
    String title,
    String address,
    String id, {
    String? foursquareId,
    String? foursquareType,
    String? googlePlaceId,
    String? googlePlaceType,
    InlineKeyboardMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
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
        inputMessageContent: inputMessageContent,
        thumbnailUrl: thumbnailUrl,
        thumbnailWidth: thumbnailWidth,
        thumbnailHeight: thumbnailHeight,
      ),
    );
    return this;
  }

  /// Adds an voice result to the final results
  InlineQueryResultBuilder voice(
    double latitude,
    double longitude,
    String title,
    String address,
    String id, {
    String? foursquareId,
    String? foursquareType,
    String? googlePlaceId,
    String? googlePlaceType,
    InlineKeyboardMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
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
        inputMessageContent: inputMessageContent,
        thumbnailUrl: thumbnailUrl,
        thumbnailWidth: thumbnailWidth,
        thumbnailHeight: thumbnailHeight,
      ),
    );
    return this;
  }

  /// Returns the final list of Inline Query Results
  List<InlineQueryResult> build() {
    return _results;
  }
}
