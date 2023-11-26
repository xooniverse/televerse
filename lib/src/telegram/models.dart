import 'dart:convert';
import 'dart:io' as io;
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:televerse/televerse.dart';

/// Represents the content of a location message to be sent as the result of an inline query.
class InputLocationMessageContent extends InputMessageContent {
  /// Latitude of the location in degrees
  double latitude;

  /// Longitude of the location in degrees
  double longitude;

  /// Optional. Period in seconds for which the location can be updated, should be between 60 and 86400.
  int? livePeriod;

  /// Optional. The radius of uncertainty for the location, measured in meters; 0-1500
  int? horizontalAccuracy;

  /// Optional. For live locations, a direction in which the user is moving, in degrees. Must be between 1 and 360 if specified.
  int? heading;

  /// Optional. For live locations, a maximum distance for proximity alerts about approaching another chat member, in meters. Must be between 1 and 100000 if specified.
  int? proximityAlertRadius;

  /// Constructs an [InputLocationMessageContent] object
  InputLocationMessageContent({
    required this.latitude,
    required this.longitude,
    this.livePeriod,
    this.horizontalAccuracy,
    this.heading,
    this.proximityAlertRadius,
  });

  /// Converts an [InputLocationMessageContent] object to a JSON map
  @override
  Map<String, dynamic> toJson() {
    return {
      'latitude': latitude,
      'longitude': longitude,
      'live_period': livePeriod,
      'horizontal_accuracy': horizontalAccuracy,
      'heading': heading,
      'proximity_alert_radius': proximityAlertRadius,
    }..removeWhere((key, value) => value == null);
  }

  /// Constructs an [InputLocationMessageContent] object from a JSON map
  factory InputLocationMessageContent.fromJson(Map<String, dynamic> json) {
    return InputLocationMessageContent(
      latitude: json['latitude'] as double,
      longitude: json['longitude'] as double,
      livePeriod: json['live_period'] as int?,
      horizontalAccuracy: json['horizontal_accuracy'] as int?,
      heading: json['heading'] as int?,
      proximityAlertRadius: json['proximity_alert_radius'] as int?,
    );
  }
}

/// This object represents a service message about a forum topic reopened in the chat. Currently holds no information.
class ForumTopicReopened {
  /// Creates a new [ForumTopicReopened] object.
  ForumTopicReopened();

  /// Creates a new [ForumTopicReopened] object from json.
  factory ForumTopicReopened.fromJson(Map<String, dynamic> json) {
    return ForumTopicReopened();
  }

  /// Converts a [ForumTopicReopened] object to json.
  Map<String, dynamic> toJson() {
    return {};
  }
}

/// This object represents a button to be shown above inline query results. You must use exactly one of the optional fields.
///
/// Since: Bot API 6.7
class InlineQueryResultsButton {
  /// Label text on the button
  final String text;

  /// Optional. Description of the Web App that will be launched when the user presses the button. The Web App will be able to switch back to the inline mode using the method web_app_switch_inline_query inside the Web App.
  final WebAppInfo? webApp;

  /// Optional. Deep-linking parameter for the /start message sent to the bot when a user presses the button. 1-64 characters, only `A-Z`, `a-z`, `0-9`, `_` and `-` are allowed.
  ///
  /// Example: An inline bot that sends YouTube videos can ask the user to connect the bot to their YouTube account to adapt search results accordingly. To do this, it displays a 'Connect your YouTube account' button above the results, or even before showing any. The user presses the button, switches to a private chat with the bot and, in doing so, passes a start parameter that instructs the bot to return an OAuth link. Once done, the bot can offer a switch_inline button so that the user can easily return to the chat where they wanted to use the bot's inline capabilities.
  final String? startParameter;

  /// Constructs an [InlineQueryResultsButton]
  InlineQueryResultsButton({
    required this.text,
    this.webApp,
    this.startParameter,
  });

  /// Converts this object to a map in JSON format.
  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'web_app': webApp?.toJson(),
      'start_parameter': startParameter,
    }..removeWhere((_, v) => v == null);
  }

  /// Creates an [InlineQueryResultsButton] from a JSON object.
  factory InlineQueryResultsButton.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultsButton(
      text: json['text'],
      webApp:
          json['web_app'] != null ? WebAppInfo.fromJson(json['web_app']) : null,
      startParameter: json['start_parameter'],
    );
  }
}

/// This object represents an incoming update.
///
/// At most one of the optional parameters can be present in any given update.
class Update {
  /// The update's unique identifier. Update identifiers start from a certain positive number and increase sequentially. This ID becomes especially handy if you're using webhooks, since it allows you to ignore repeated updates or to restore the correct update sequence, should they get out of order. If there are no new updates for at least a week, then identifier of the next update will be chosen randomly instead of sequentially.
  final int updateId;

  /// Optional. New incoming message of any kind — text, photo, sticker, etc.
  final Message? message;

  /// Optional. New version of a message that is known to the bot and was edited
  final Message? editedMessage;

  /// Optional. New incoming channel post of any kind - text, photo, sticker, etc.
  final Message? channelPost;

  /// Optional. New version of a channel post that is known to the bot and was edited
  final Message? editedChannelPost;

  /// Optional. New incoming inline query
  final InlineQuery? inlineQuery;

  /// Optional. The result of an inline query that was chosen by a user and sent to their chat partner. Please see our documentation on the feedback collecting for details on how to enable these updates for your bot.
  final ChosenInlineResult? chosenInlineResult;

  /// Optional. New incoming callback query
  final CallbackQuery? callbackQuery;

  /// Optional. New incoming shipping query. Only for invoices with flexible price
  final ShippingQuery? shippingQuery;

  /// Optional. New incoming pre-checkout query. Contains full information about checkout
  final PreCheckoutQuery? preCheckoutQuery;

  /// Optional. New poll state. Bots receive only updates about stopped polls and polls, which are sent by the bot
  final Poll? poll;

  /// Optional. A user changed their answer in a non-anonymous poll. Bots receive new votes only in polls that were sent by the bot itself.
  final PollAnswer? pollAnswer;

  /// Optional. New incoming my_chat_member update.
  final ChatMemberUpdated? myChatMember;

  /// Optional. A chat member's status was updated in a chat. The bot must be an administrator in the chat and must explicitly specify “chat_member” in the list of allowed_updates to receive these updates.
  final ChatMemberUpdated? chatMember;

  /// Optional. A request to join the chat has been sent. The bot must have the can_invite_users administrator right in the chat to receive these updates.
  final ChatJoinRequest? chatJoinRequest;

  /// Update Constructor
  Update({
    required this.updateId,
    this.message,
    this.editedMessage,
    this.channelPost,
    this.editedChannelPost,
    this.inlineQuery,
    this.chosenInlineResult,
    this.callbackQuery,
    this.shippingQuery,
    this.preCheckoutQuery,
    this.poll,
    this.pollAnswer,
    this.myChatMember,
    this.chatMember,
    this.chatJoinRequest,
  });

  /// Creates a [Update] from json [Map].
  static Update fromJson(Map<String, dynamic> json) {
    return Update(
      updateId: json['update_id']!,
      message:
          json['message'] != null ? Message.fromJson(json['message']!) : null,
      editedMessage: json['edited_message'] != null
          ? Message.fromJson(json['edited_message']!)
          : null,
      channelPost: json['channel_post'] != null
          ? Message.fromJson(json['channel_post']!)
          : null,
      editedChannelPost: json['edited_channel_post'] != null
          ? Message.fromJson(json['edited_channel_post']!)
          : null,
      inlineQuery: json['inline_query'] != null
          ? InlineQuery.fromJson(json['inline_query']!)
          : null,
      chosenInlineResult: json['chosen_inline_result'] != null
          ? ChosenInlineResult.fromJson(json['chosen_inline_result']!)
          : null,
      callbackQuery: json['callback_query'] != null
          ? CallbackQuery.fromJson(json['callback_query']!)
          : null,
      shippingQuery: json['shipping_query'] != null
          ? ShippingQuery.fromJson(json['shipping_query']!)
          : null,
      preCheckoutQuery: json['pre_checkout_query'] != null
          ? PreCheckoutQuery.fromJson(json['pre_checkout_query']!)
          : null,
      poll: json['poll'] != null ? Poll.fromJson(json['poll']!) : null,
      pollAnswer: json['poll_answer'] != null
          ? PollAnswer.fromJson(json['poll_answer']!)
          : null,
      myChatMember: json['my_chat_member'] != null
          ? ChatMemberUpdated.fromJson(json['my_chat_member']!)
          : null,
      chatMember: json['chat_member'] != null
          ? ChatMemberUpdated.fromJson(json['chat_member']!)
          : null,
      chatJoinRequest: json['chat_join_request'] != null
          ? ChatJoinRequest.fromJson(json['chat_join_request']!)
          : null,
    );
  }

  /// Converts a [Update] to a [Map] which can be serialized to JSON.
  Map<String, dynamic> toJson() {
    return {
      'update_id': updateId,
      'message': message?.toJson(),
      'edited_message': editedMessage?.toJson(),
      'channel_post': channelPost?.toJson(),
      'edited_channel_post': editedChannelPost?.toJson(),
      'inline_query': inlineQuery?.toJson(),
      'chosen_inline_result': chosenInlineResult?.toJson(),
      'callback_query': callbackQuery?.toJson(),
      'shipping_query': shippingQuery?.toJson(),
      'pre_checkout_query': preCheckoutQuery?.toJson(),
      'poll': poll?.toJson(),
      'poll_answer': pollAnswer?.toJson(),
      'my_chat_member': myChatMember?.toJson(),
      'chat_member': chatMember?.toJson(),
      'chat_join_request': chatJoinRequest?.toJson(),
    }..removeWhere((key, value) => value == null);
  }

  /// Converts a [Update] object to a JSON string.
  String toRawJson() => json.encode(toJson());

  /// Returns the type of the update.
  UpdateType get type {
    if (message != null) {
      return UpdateType.message;
    } else if (editedMessage != null) {
      return UpdateType.editedMessage;
    } else if (channelPost != null) {
      return UpdateType.channelPost;
    } else if (editedChannelPost != null) {
      return UpdateType.editedChannelPost;
    } else if (inlineQuery != null) {
      return UpdateType.inlineQuery;
    } else if (chosenInlineResult != null) {
      return UpdateType.chosenInlineResult;
    } else if (callbackQuery != null) {
      return UpdateType.callbackQuery;
    } else if (shippingQuery != null) {
      return UpdateType.shippingQuery;
    } else if (preCheckoutQuery != null) {
      return UpdateType.preCheckoutQuery;
    } else if (poll != null) {
      return UpdateType.poll;
    } else if (pollAnswer != null) {
      return UpdateType.pollAnswer;
    } else if (myChatMember != null) {
      return UpdateType.myChatMember;
    } else if (chatMember != null) {
      return UpdateType.chatMember;
    } else if (chatJoinRequest != null) {
      return UpdateType.chatJoinRequest;
    } else {
      return UpdateType.unknown;
    }
  }
}

/// Represents a link to a video animation (H.264/MPEG-4 AVC video without sound). By default, this animated MPEG-4 file will be sent by the user with optional caption. Alternatively, you can use input_message_content to send a message with the specified content instead of the animation.
class InlineQueryResultMpeg4Gif extends InlineQueryResult {
  /// Type of the result, always [InlineQueryResultType.mpeg4Gif]
  @override
  InlineQueryResultType get type => InlineQueryResultType.mpeg4Gif;

  /// A valid URL for the MPEG4 file. File size must not exceed 1MB
  String mpeg4Url;

  /// Optional. Video width
  int? mpeg4Width;

  /// Optional. Video height
  int? mpeg4Height;

  /// Optional. Video duration
  int? mpeg4Duration;

  /// URL of the static (JPEG or GIF) or animated (MPEG4) thumbnail for the result
  String thumbnailUrl;

  /// Optional. MIME type of the thumbnail, must be one of “image/jpeg”, “image/gif”, or “video/mp4”. Defaults to “image/jpeg”
  String? thumbnailMimeType;

  /// Optional. Title for the result
  String? title;

  /// Optional. Caption of the MPEG-4 file to be sent, 0-1024 characters after entities parsing
  String? caption;

  /// Optional. Mode for parsing entities in the caption. See formatting options for more details.
  ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  List<MessageEntity>? captionEntities;

  /// Optional. Inline keyboard attached to the message
  InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the video animation
  InputMessageContent? inputMessageContent;

  /// Constructs an [InlineQueryResultMpeg4Gif] object
  InlineQueryResultMpeg4Gif({
    required this.mpeg4Url,
    required this.thumbnailUrl,
    required super.id,
    this.mpeg4Width,
    this.mpeg4Height,
    this.mpeg4Duration,
    this.thumbnailMimeType,
    this.title,
    this.caption,
    this.parseMode,
    this.captionEntities,
    this.replyMarkup,
    this.inputMessageContent,
  });

  /// Converts an [InlineQueryResultMpeg4Gif] object to a JSON object
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'mpeg4_url': mpeg4Url,
      'thumbnail_url': thumbnailUrl,
      'id': id,
      'mpeg4_width': mpeg4Width,
      'mpeg4_height': mpeg4Height,
      'mpeg4_duration': mpeg4Duration,
      'thumbnail_mime_type': thumbnailMimeType,
      'title': title,
      'caption': caption,
      'parse_mode': parseMode?.value,
      'caption_entities': captionEntities?.map((e) => e.toJson()).toList(),
      'reply_markup': replyMarkup?.toJson(),
      'input_message_content': inputMessageContent?.toJson(),
    }..removeWhere((key, value) => value == null);
  }

  /// Constructs an [InlineQueryResultMpeg4Gif] object from a JSON object
  factory InlineQueryResultMpeg4Gif.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultMpeg4Gif(
      mpeg4Url: json['mpeg4_url'] as String,
      thumbnailUrl: json['thumbnail_url'] as String,
      id: json['id'] as String,
      mpeg4Width: json['mpeg4_width'] as int?,
      mpeg4Height: json['mpeg4_height'] as int?,
      mpeg4Duration: json['mpeg4_duration'] as int?,
      thumbnailMimeType: json['thumbnail_mime_type'] as String?,
      title: json['title'] as String?,
      caption: json['caption'] as String?,
      parseMode: json['parse_mode'] == null
          ? null
          : ParseMode.fromJson(json['parse_mode'] as String),
      captionEntities: (json['caption_entities'] as List<dynamic>?)
          ?.map((e) => MessageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      replyMarkup: json['reply_markup'] == null
          ? null
          : InlineKeyboardMarkup.fromJson(
              json['reply_markup'] as Map<String, dynamic>,
            ),
      inputMessageContent: json['input_message_content'] == null
          ? null
          : InputMessageContent.fromJson(
              json['input_message_content'] as Map<String, dynamic>,
            ),
    );
  }
}

/// Describes that no specific value for the menu button was set.
class MenuButtonDefault extends MenuButton {
  /// Type of the button, always [MenuButtonType.defaultButton]
  @override
  MenuButtonType get type => MenuButtonType.defaultButton;

  /// Constructs a [MenuButtonDefault] object
  MenuButtonDefault();

  /// Creates a [MenuButtonDefault] object from JSON object
  MenuButtonDefault.fromJson(Map<String, dynamic> json);

  /// Converts a [MenuButtonDefault] object to JSON object
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
    };
  }
}

/// This object contains basic information about an invoice.
class Invoice {
  /// Product name
  String title;

  /// Product description
  String description;

  /// Unique bot deep-linking parameter that can be used to generate this invoice
  String startParameter;

  /// Three-letter ISO 4217 currency code
  String currency;

  /// Total price in the smallest units of the currency (integer, not float/double). For example, for a price of US$ 1.45 pass amount = 145. See the exp parameter in currencies.json, it shows the number of digits past the decimal point for each currency (2 for the majority of currencies).
  int totalAmount;

  /// Constructs an [Invoice] object
  Invoice({
    required this.title,
    required this.description,
    required this.startParameter,
    required this.currency,
    required this.totalAmount,
  });

  /// Converts an [Invoice] object to a JSON object
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'start_parameter': startParameter,
      'currency': currency,
      'total_amount': totalAmount,
    }..removeWhere((key, value) => value == null);
  }

  /// Converts a JSON object to an [Invoice] object
  factory Invoice.fromJson(Map<String, dynamic> json) {
    return Invoice(
      title: json['title']!,
      description: json['description']!,
      startParameter: json['start_parameter']!,
      currency: json['currency']!,
      totalAmount: json['total_amount']!,
    );
  }
}

/// This object represents a phone contact.
class Contact {
  /// Contact's phone number
  final String phoneNumber;

  /// Contact's first name
  final String firstName;

  /// Optional. Contact's last name
  final String? lastName;

  /// Optional. Contact's user identifier in Telegram
  final int? userId;

  /// Optional. Additional data about the contact in the form of a [vCard](https://en.wikipedia.org/wiki/VCard)
  final String? vcard;

  /// Constructs a [Contact] object.
  const Contact({
    required this.phoneNumber,
    required this.firstName,
    this.lastName,
    this.userId,
    this.vcard,
  });

  /// Creates a [Contact] object from json.
  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(
      phoneNumber: json['phone_number']!,
      firstName: json['first_name']!,
      lastName: json['last_name'],
      userId: json['user_id'],
      vcard: json['vcard'],
    );
  }

  /// Converts a [Contact] object to json.
  Map<String, dynamic> toJson() {
    return {
      'phone_number': phoneNumber,
      'first_name': firstName,
      'last_name': lastName,
      'user_id': userId,
      'vcard': vcard,
    }..removeWhere((key, value) => value == null);
  }
}

/// This object represents a venue.
class Venue {
  /// Venue location
  Location location;

  /// Name of the venue
  String title;

  /// Address of the venue
  String address;

  /// Optional. Foursquare identifier of the venue
  String? foursquareId;

  /// Optional. Foursquare type of the venue. (For example, “arts_entertainment/default”, “arts_entertainment/aquarium” or “food/icecream”.)
  String? foursquareType;

  /// Optional. Google Places identifier of the venue
  String? googlePlaceId;

  /// Optional. Google Places type of the venue. (See supported types.)
  String? googlePlaceType;

  /// Constructs a [Venue] object
  Venue({
    required this.location,
    required this.title,
    required this.address,
    this.foursquareId,
    this.foursquareType,
    this.googlePlaceId,
    this.googlePlaceType,
  });

  /// Creates a [Venue] object from JSON object
  factory Venue.fromJson(Map<String, dynamic> json) {
    return Venue(
      location: Location.fromJson(json['location']!),
      title: json['title']!,
      address: json['address']!,
      foursquareId: json['foursquare_id'],
      foursquareType: json['foursquare_type'],
      googlePlaceId: json['google_place_id'],
      googlePlaceType: json['google_place_type'],
    );
  }

  /// Converts a [Venue] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'location': location.toJson(),
      'title': title,
      'address': address,
      'foursquare_id': foursquareId,
      'foursquare_type': foursquareType,
      'google_place_id': googlePlaceId,
      'google_place_type': googlePlaceType,
    }..removeWhere((key, value) => value == null);
  }
}

/// Represents a link to an MP3 audio file stored on the Telegram servers. By default, this audio file will be sent by the user. Alternatively, you can use input_message_content to send a message with the specified content instead of the audio.
///
/// Note: This will only work in Telegram versions released after 9 April, 2016. Older clients will ignore them.
class InlineQueryResultCachedAudio extends InlineQueryResult {
  /// Type of the result, always [InlineQueryResultType.audio]
  @override
  InlineQueryResultType get type => InlineQueryResultType.audio;

  /// A valid file identifier for the audio file
  String audioFileId;

  /// Optional. Caption, 0-1024 characters after entities parsing
  String? caption;

  /// Optional. Mode for parsing entities in the video caption. See formatting options for more details.
  ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  List<MessageEntity>? captionEntities;

  /// Optional. Inline keyboard attached to the message
  InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the voice message
  InputMessageContent? inputMessageContent;

  /// Constructs an [InlineQueryResultCachedAudio] objectA
  InlineQueryResultCachedAudio({
    required this.audioFileId,
    required super.id,
    this.caption,
    this.parseMode,
    this.captionEntities,
    this.replyMarkup,
    this.inputMessageContent,
  });

  /// Converts an [InlineQueryResultCachedAudio] object to a JSON map
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'audio_file_id': audioFileId,
      'caption': caption,
      'parse_mode': parseMode?.value,
      'caption_entities': captionEntities?.map((e) => e.toJson()).toList(),
      'reply_markup': replyMarkup?.toJson(),
      'input_message_content': inputMessageContent?.toJson(),
      'id': id,
    }..removeWhere((key, value) => value == null);
  }

  /// Constructs an [InlineQueryResultCachedAudio] object from a JSON map
  factory InlineQueryResultCachedAudio.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultCachedAudio(
      audioFileId: json['audio_file_id'] as String,
      id: json['id'] as String,
      caption: json['caption'] as String?,
      parseMode: json['parse_mode'] == null
          ? null
          : ParseMode.fromJson(json['parse_mode'] as String),
      captionEntities: (json['caption_entities'] as List<dynamic>?)
          ?.map((e) => MessageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      replyMarkup: json['reply_markup'] == null
          ? null
          : InlineKeyboardMarkup.fromJson(
              json['reply_markup'] as Map<String, dynamic>,
            ),
      inputMessageContent: json['input_message_content'] == null
          ? null
          : InputMessageContent.fromJson(
              json['input_message_content'] as Map<String, dynamic>,
            ),
    );
  }
}

/// Describes a Web App.
class WebAppInfo {
  /// An HTTPS URL of a Web App to be opened with additional data as specified in Initializing Web Apps
  String url;

  /// Constructs a [WebAppInfo] object
  WebAppInfo({required this.url});

  /// Creates a [WebAppInfo] object from JSON object
  factory WebAppInfo.fromJson(Map<String, dynamic> json) {
    return WebAppInfo(
      url: json['url'],
    );
  }

  /// Converts a [WebAppInfo] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'url': url,
    }..removeWhere((key, value) => value == null);
  }
}

/// This object contains information about an incoming pre-checkout query.
class PreCheckoutQuery {
  ///  Unique query identifier
  String id;

  ///  User who sent the query
  User from;

  ///  Three-letter ISO 4217 currency code
  String currency;

  ///  Total price in the smallest units of the currency (integer, not float/double). For example, for a price of US$ 1.45 pass amount = 145. See the exp parameter in currencies.json, it shows the number of digits past the decimal point for each currency (2 for the majority of currencies).
  int totalAmount;

  ///  Bot specified invoice payload
  String invoicePayload;

  ///  Optional. Identifier of the shipping option chosen by the user
  String? shippingOptionId;

  ///  Optional. Order info provided by the user
  OrderInfo? orderInfo;

  /// Constructs a [PreCheckoutQuery] object
  PreCheckoutQuery({
    required this.id,
    required this.from,
    required this.currency,
    required this.totalAmount,
    required this.invoicePayload,
    this.shippingOptionId,
    this.orderInfo,
  });

  /// Converts a [PreCheckoutQuery] object to a JSON object
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'from': from.toJson(),
      'currency': currency,
      'total_amount': totalAmount,
      'invoice_payload': invoicePayload,
      'shipping_option_id': shippingOptionId,
      'order_info': orderInfo?.toJson(),
    }..removeWhere((key, value) => value == null);
  }

  /// Creates a [PreCheckoutQuery] object from a JSON object
  factory PreCheckoutQuery.fromJson(Map<String, dynamic> json) {
    return PreCheckoutQuery(
      id: json['id']!,
      from: User.fromJson(json['from']!),
      currency: json['currency']!,
      totalAmount: json['total_amount']!,
      invoicePayload: json['invoice_payload']!,
      shippingOptionId: json['shipping_option_id'],
      orderInfo: json['order_info'] == null
          ? null
          : OrderInfo.fromJson(json['order_info']!),
    );
  }
}

/// This object represents a sticker set.
class StickerSet {
  /// Sticker set name
  String name;

  /// Sticker set title
  String title;

  /// Type of stickers in the set, currently one of “regular”, “mask”, “custom_emoji”
  StickerType type;

  /// True, if the sticker set contains animated stickers
  bool isAnimated;

  /// True, if the sticker set contains video stickers
  bool isVideo;

  /// List of all set stickers
  List<Sticker> stickers;

  /// Optional. Sticker set thumbnail in the .WEBP or .TGS format
  PhotoSize? thumbnail;

  /// Constructs a [StickerSet] object
  StickerSet({
    required this.name,
    required this.title,
    required this.type,
    required this.isAnimated,
    required this.isVideo,
    required this.stickers,
    this.thumbnail,
  });

  /// Creates a [StickerSet] object from JSON object
  factory StickerSet.fromJson(Map<String, dynamic> json) {
    return StickerSet(
      name: json['name'] as String,
      title: json['title'] as String,
      type: StickerType.values[json['type'] as int],
      isAnimated: json['is_animated'] as bool,
      isVideo: json['is_video'] as bool,
      stickers: (json['stickers'] as List<dynamic>)
          .map((e) => Sticker.fromJson(e as Map<String, dynamic>))
          .toList(),
      thumbnail: json['thumbnail'] == null
          ? null
          : PhotoSize.fromJson(json['thumbnail'] as Map<String, dynamic>),
    );
  }
}

/// This object represents an audio file to be treated as music by the Telegram clients.
class Audio {
  /// Identifier for this file, which can be used to download or reuse the file
  String fileId;

  /// Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
  String fileUniqueId;

  /// Duration of the video in seconds as defined by sender
  ///
  /// A handy [Duration] getter is available as [durationTime]
  int duration;

  /// Optional. Performer of the audio as defined by sender or by audio tags
  String? performer;

  /// Optional. Title of the audio as defined by sender or by audio tags
  String? title;

  /// Optional. Original filename as defined by sender
  String? fileName;

  /// Optional. MIME type of the file as defined by sender
  String? mimeType;

  /// Optional. File size in bytes. It can be bigger than 2^31 and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a signed 64-bit integer or double-precision float type are safe for storing this value.
  int? fileSize;

  /// Optional. Thumbnail of the album cover to which the music file belongs
  PhotoSize? thumbnail;

  /// Creates a new [Audio] object.
  Audio({
    required this.fileId,
    required this.fileUniqueId,
    required this.duration,
    this.performer,
    this.title,
    this.fileName,
    this.mimeType,
    this.fileSize,
    this.thumbnail,
  });

  /// Creates a new [Audio] object from a JSON [Map].
  factory Audio.fromJson(Map<String, dynamic> json) {
    return Audio(
      fileId: json['file_id']!,
      fileUniqueId: json['file_unique_id']!,
      duration: json['duration']!,
      performer: json['performer'],
      title: json['title'],
      fileName: json['file_name'],
      mimeType: json['mime_type'],
      fileSize: json['file_size'],
      thumbnail: json['thumbnail'] != null
          ? PhotoSize.fromJson(json['thumbnail']!)
          : null,
    );
  }

  /// Converts a [Audio] to a [Map] for JSON encoding.
  Map<String, dynamic> toJson() {
    return {
      'file_id': fileId,
      'file_unique_id': fileUniqueId,
      'duration': duration,
      'performer': performer,
      'title': title,
      'file_name': fileName,
      'mime_type': mimeType,
      'file_size': fileSize,
      'thumbnail': thumbnail?.toJson(),
    }..removeWhere((key, value) => value == null);
  }

  /// Duration of the video as [Duration] object.
  Duration get durationTime => Duration(seconds: duration);
}

/// This object represents a sticker.
class Sticker {
  /// Identifier for this file, which can be used to download or reuse the file
  final String fileId;

  /// Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
  final String fileUniqueId;

  /// Type of the sticker, currently one of “regular”, “mask”, “custom_emoji”. The type of the sticker is independent from its format, which is determined by the fields is_animated and is_video.
  final StickerType type;

  /// Sticker width
  final int width;

  /// Sticker height
  final int height;

  /// True, if the sticker is animated
  final bool isAnimated;

  /// True, if the sticker is a video sticker
  final bool isVideo;

  /// Optional. Sticker thumbnail in the .WEBP or .JPG format
  final PhotoSize? thumbnail;

  /// Optional. Emoji associated with the sticker
  final String? emoji;

  /// Optional. Name of the sticker set to which the sticker belongs
  final String? setName;

  /// Optional. For premium regular stickers, premium animation for the sticker
  final File? premiumAnimation;

  /// Optional. For mask stickers, the position where the mask should be placed
  final MaskPosition? maskPosition;

  /// Optional. For custom emoji stickers, unique identifier of the custom emoji
  final String? customEmojiId;

  /// Optional. File size in bytes
  final int? fileSize;

  /// Optional. True, if the sticker must be repainted to a text color in messages, the color of the Telegram Premium badge in emoji status, white color on chat photos, or another appropriate color in other places
  final bool? needsRepainting;

  /// Constructs a [Sticker] object
  const Sticker({
    required this.fileId,
    required this.fileUniqueId,
    required this.type,
    required this.width,
    required this.height,
    required this.isAnimated,
    required this.isVideo,
    this.thumbnail,
    this.emoji,
    this.setName,
    this.premiumAnimation,
    this.maskPosition,
    this.customEmojiId,
    this.fileSize,
    this.needsRepainting,
  });

  /// Creates a [Sticker] object from JSON object
  factory Sticker.fromJson(Map<String, dynamic> json) {
    return Sticker(
      fileId: json['file_id'] as String,
      fileUniqueId: json['file_unique_id'] as String,
      type: StickerType.fromJson(json['type'] as String),
      width: json['width'] as int,
      height: json['height'] as int,
      isAnimated: json['is_animated'] as bool,
      isVideo: json['is_video'] as bool,
      thumbnail: json['thumbnail'] == null
          ? null
          : PhotoSize.fromJson(json['thumbnail'] as Map<String, dynamic>),
      emoji: json['emoji'] as String?,
      setName: json['set_name'] as String?,
      premiumAnimation: json['premium_animation'] == null
          ? null
          : File.fromJson(json['premium_animation'] as Map<String, dynamic>),
      maskPosition: json['mask_position'] == null
          ? null
          : MaskPosition.fromJson(
              json['mask_position'] as Map<String, dynamic>,
            ),
      customEmojiId: json['custom_emoji_id'] as String?,
      fileSize: json['file_size'] as int?,
      needsRepainting: json['needs_repainting'] as bool?,
    );
  }

  /// Converts a [Sticker] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'file_id': fileId,
      'file_unique_id': fileUniqueId,
      'type': type.toJson(),
      'width': width,
      'height': height,
      'is_animated': isAnimated,
      'is_video': isVideo,
      'thumbnail': thumbnail?.toJson(),
      'emoji': emoji,
      'set_name': setName,
      'premium_animation': premiumAnimation?.toJson(),
      'mask_position': maskPosition?.toJson(),
      'custom_emoji_id': customEmojiId,
      'file_size': fileSize,
    }..removeWhere((key, value) => value == null);
  }
}

/// This object represents a shipping address.
class ShippingAddress {
  /// ISO 3166-1 alpha-2 country code
  String countryCode;

  /// State, if applicable
  String state;

  /// City
  String city;

  /// First line for the address
  String streetLine1;

  /// Second line for the address
  String streetLine2;

  /// Address post code
  String postCode;

  /// Constructs a [ShippingAddress] object
  ShippingAddress({
    required this.countryCode,
    required this.state,
    required this.city,
    required this.streetLine1,
    required this.streetLine2,
    required this.postCode,
  });

  /// Converts a [ShippingAddress] object to a JSON object
  Map<String, dynamic> toJson() {
    return {
      'country_code': countryCode,
      'state': state,
      'city': city,
      'street_line1': streetLine1,
      'street_line2': streetLine2,
      'post_code': postCode,
    }..removeWhere((key, value) => value == null);
  }

  /// Creates a [ShippingAddress] object from JSON object
  factory ShippingAddress.fromJson(Map<String, dynamic> json) {
    return ShippingAddress(
      countryCode: json['country_code']!,
      state: json['state']!,
      city: json['city']!,
      streetLine1: json['street_line1']!,
      streetLine2: json['street_line2']!,
      postCode: json['post_code']!,
    );
  }
}

/// This object contains information about the user whose identifier was shared with the bot using a [KeyboardButtonRequestUser] button.
///
/// https://core.telegram.org/bots/api#usershared
class UserShared {
  /// Identifier of the request
  int requestId;

  /// Identifier of the shared user. This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a 64-bit integer or double-precision float type are safe for storing this identifier. The bot may not have access to the user and could be unable to use this identifier, unless the user is already known to the bot by some other means.
  int userId;

  /// Constructs a [UserShared] object
  UserShared({
    required this.requestId,
    required this.userId,
  });

  /// Creates a [UserShared] object from JSON object
  factory UserShared.fromJson(Map<String, dynamic> json) {
    return UserShared(
      requestId: json['request_id']!,
      userId: json['user_id']!,
    );
  }

  /// Converts a [UserShared] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'request_id': requestId,
      'user_id': userId,
    };
  }
}

/// This object represents a forum topic.
class ForumTopic {
  /// Unique identifier of the forum topic
  final String messageThreadId;

  /// Name of the topic
  final String name;

  /// Color of the topic icon in RGB format
  final int iconColor;

  /// Optional. Unique identifier of the custom emoji shown as the topic icon
  final String? iconCustomEmojiId;

  /// Creates a new [ForumTopic] object.
  ForumTopic({
    required this.messageThreadId,
    required this.name,
    required this.iconColor,
    this.iconCustomEmojiId,
  });

  /// Creates a new [ForumTopic] object from json.
  factory ForumTopic.fromJson(Map<String, dynamic> json) {
    return ForumTopic(
      messageThreadId: json['message_thread_id'] as String,
      name: json['name'] as String,
      iconColor: json['icon_color'] as int,
      iconCustomEmojiId: json['icon_custom_emoji_id'] as String?,
    );
  }

  /// Converts a [ForumTopic] object to json.
  Map<String, dynamic> toJson() {
    return {
      'message_thread_id': messageThreadId,
      'name': name,
      'icon_color': iconColor,
      'icon_custom_emoji_id': iconCustomEmojiId,
    }..removeWhere((key, value) => value == null);
  }
}

/// This object represents a unique message identifier.
class MessageId {
  /// Unique message identifier
  int messageId;

  /// Constructs a [MessageId] object
  MessageId({
    required this.messageId,
  });

  /// Creates a [MessageId] object from JSON object
  factory MessageId.fromJson(Map<String, dynamic> json) {
    return MessageId(
      messageId: json['message_id'],
    );
  }

  /// Converts a [MessageId] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'message_id': messageId,
    };
  }
}

/// Represents a chat member that has no additional privileges or restrictions.
class ChatMemberMember implements ChatMember {
  /// The member's status in the chat, always “creator”
  @override
  final ChatMemberStatus status = ChatMemberStatus.member;

  /// Information about the user
  @override
  final User user;

  /// Creates a new [ChatMemberMember] object.
  const ChatMemberMember({
    required this.user,
  });

  /// Converts a [ChatMemberMember] to a [Map] for JSON encoding.
  @override
  Map<String, dynamic> toJson() {
    return {
      'status': status.value,
      'user': user.toJson(),
    };
  }

  /// Creates a new [ChatMemberMember] object from json.
  factory ChatMemberMember.fromJson(Map<String, dynamic> json) {
    return ChatMemberMember(
      user: User.fromJson(json['user']),
    );
  }
}

/// This object represents a file uploaded to Telegram Passport. Currently all Telegram Passport files are in JPEG format when decrypted and don't exceed 10MB.
class PassportFile {
  /// Unique identifier for this file
  final String fileId;

  /// Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
  final String fileUniqueId;

  /// File size
  final int fileSize;

  /// Unix time when the file was uploaded
  ///
  /// You can get the [DateTime] object as [fileDateTime] getter.
  final int fileDate;

  /// Constructs a [PassportFile] object
  const PassportFile({
    required this.fileId,
    required this.fileUniqueId,
    required this.fileSize,
    required this.fileDate,
  });

  /// Creates a [PassportFile] object from JSON object
  factory PassportFile.fromJson(Map<String, dynamic> json) {
    return PassportFile(
      fileId: json['file_id']!,
      fileUniqueId: json['file_unique_id']!,
      fileSize: json['file_size']!,
      fileDate: json['file_date']!,
    );
  }

  /// Converts a [PassportFile] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'file_id': fileId,
      'file_unique_id': fileUniqueId,
      'file_size': fileSize,
      'file_date': fileDate,
    }..removeWhere((key, value) => value == null);
  }

  /// Returns the [DateTime] object of [fileDate].
  /// [DateTime] object of [fileDate].
  DateTime get fileDateTime =>
      DateTime.fromMillisecondsSinceEpoch(fileDate * 1000);
}

/// Describes why a request was unsuccessful.
class ResponseParameters {
  /// Optional. The group has been migrated to a supergroup with the specified identifier. This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a signed 64-bit integer or double-precision float type are safe for storing this identifier.
  final int? migrateToChatId;

  /// Optional. In case of exceeding flood control, the number of seconds left to wait before the request can be repeated
  final int? retryAfter;

  /// Constructs a [ResponseParameters] object
  const ResponseParameters({
    this.migrateToChatId,
    this.retryAfter,
  });

  /// Creates a [ResponseParameters] object from JSON object
  factory ResponseParameters.fromJson(Map<String, dynamic> json) {
    return ResponseParameters(
      migrateToChatId: json['migrate_to_chat_id'] as int?,
      retryAfter: json['retry_after'] as int?,
    );
  }

  /// Converts a [ResponseParameters] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'migrate_to_chat_id': migrateToChatId,
      'retry_after': retryAfter,
    }..removeWhere((key, value) => value == null);
  }

  /// Returns a string representation of this object.
  @override
  String toString() {
    return "ResponseParameters(${migrateToChatId != null ? 'migrateToChatId: $migrateToChatId,' : ''}${retryAfter != null ? 'retryAfter: $retryAfter,' : ''})";
  }
}

/// This object represents a chat photo.
class ChatPhoto {
  /// File identifier of small (160x160) chat photo. This file_id can be used only for photo download and only for as long as the photo is not changed.
  String smallFileId;

  /// Unique file identifier of small (160x160) chat photo, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
  String smallFileUniqueId;

  /// File identifier of big (640x640) chat photo. This file_id can be used only for photo download and only for as long as the photo is not changed.
  String bigFileId;

  /// Unique file identifier of big (640x640) chat photo, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
  String bigFileUniqueId;

  /// Creates a new [ChatPhoto] object.
  ChatPhoto({
    required this.smallFileId,
    required this.smallFileUniqueId,
    required this.bigFileId,
    required this.bigFileUniqueId,
  });

  /// Creates a new [ChatPhoto] object from json.
  factory ChatPhoto.fromJson(Map<String, dynamic> json) {
    return ChatPhoto(
      smallFileId: json['small_file_id'],
      smallFileUniqueId: json['small_file_unique_id'],
      bigFileId: json['big_file_id'],
      bigFileUniqueId: json['big_file_unique_id'],
    );
  }

  /// Converts a [ChatPhoto] to a [Map] for JSON encoding.
  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['small_file_id'] = smallFileId;
    data['small_file_unique_id'] = smallFileUniqueId;
    data['big_file_id'] = bigFileId;
    data['big_file_unique_id'] = bigFileUniqueId;
    data.removeWhere((key, value) => value == null);
    return data;
  }
}

/// This object represents a portion of the price for goods or services.
class LabeledPrice {
  /// Portion label
  String label;

  /// Price of the product in the smallest units of the currency (integer, not float/double). For example, for a price of US$ 1.45 pass amount = 145. See the exp parameter in [currencies.json](https://core.telegram.org/bots/payments/currencies.json), it shows the number of digits past the decimal point for each currency (2 for the majority of currencies).
  int amount;

  /// Constructs a [LabeledPrice] object
  LabeledPrice({
    required this.label,
    required this.amount,
  });

  /// Converts a [LabeledPrice] object to a JSON object
  Map<String, dynamic> toJson() {
    return {
      'label': label,
      'amount': amount,
    };
  }

  /// Converts a JSON object to a [LabeledPrice] object
  factory LabeledPrice.fromJson(Map<String, dynamic> json) {
    return LabeledPrice(
      label: json['label']!,
      amount: json['amount']!,
    );
  }
}

/// This object represents a video message (available in Telegram apps as of v.4.0).
class VideoNote {
  /// Identifier for this file, which can be used to download or reuse the file
  String fileId;

  /// Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
  String fileUniqueId;

  /// Video width and height (diameter of the video message) as defined by sender
  int length;

  /// Duration of the video in seconds as defined by sender
  ///
  /// A handy [Duration] getter is available as [durationTime]
  int duration;

  /// Optional. Animation thumbnail as defined by sender
  PhotoSize? thumbnail;

  /// Optional. File size in bytes. It can be bigger than 2^31 and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a signed 64-bit integer or double-precision float type are safe for storing this value.
  int? fileSize;

  /// Constructs a [VideoNote] object
  VideoNote({
    required this.fileId,
    required this.fileUniqueId,
    required this.length,
    required this.duration,
    this.thumbnail,
    this.fileSize,
  });

  /// Creates a [VideoNote] object from JSON object
  factory VideoNote.fromJson(Map<String, dynamic> json) {
    return VideoNote(
      fileId: json['file_id']!,
      fileUniqueId: json['file_unique_id']!,
      length: json['length']!,
      duration: json['duration']!,
      thumbnail: json['thumbnail'] != null
          ? PhotoSize.fromJson(json['thumbnail']!)
          : null,
      fileSize: json['file_size'],
    );
  }

  /// Converts a [VideoNote] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'file_id': fileId,
      'file_unique_id': fileUniqueId,
      'length': length,
      'duration': duration,
      'thumbnail': thumbnail?.toJson(),
      'file_size': fileSize,
    }..removeWhere((key, value) => value == null);
  }

  /// Duration of the video as [Duration] object.
  Duration get durationTime => Duration(seconds: duration);
}

/// Represents an issue with a list of scans. The error is considered resolved when the list of files containing the scans changes.
class PassportElementErrorFiles extends PassportElementError {
  /// Error message
  final String message;

  /// List of base64-encoded file hashes
  final List<String> fileHashes;

  /// Constructs a [PassportElementErrorFiles] object
  const PassportElementErrorFiles({
    required super.source,
    required super.type,
    required this.message,
    required this.fileHashes,
  });

  /// Converts a [PassportElementErrorFiles] object to JSON object
  @override
  Map<String, dynamic> toJson() {
    return {
      'source': source,
      'type': type,
      'message': message,
      'file_hashes': fileHashes,
    }..removeWhere((key, value) => value == null);
  }

  /// Creates a [PassportElementErrorFiles] object from JSON object
  factory PassportElementErrorFiles.fromJson(Map<String, dynamic> json) {
    return PassportElementErrorFiles(
      source: json['source']!,
      type: PassportType.fromJson(json['type']!),
      message: json['message']!,
      fileHashes: List<String>.from(json['file_hashes']! as List<dynamic>),
    );
  }
}

/// This object represents a message.
class Message {
  /// Unique message identifier inside this chat
  final int messageId;

  /// Optional. Unique identifier of a message thread to which the message belongs; for supergroups only
  final int? messageThreadId;

  /// Optional. Sender of the message; empty for messages sent to channels. For backward compatibility, the field contains a fake sender user in non-channel chats, if the message was sent on behalf of a chat.
  final User? from;

  /// Optional. Sender of the message, sent on behalf of a chat. For example, the channel itself for channel posts, the supergroup itself for messages from anonymous group administrators, the linked channel for messages automatically forwarded to the discussion group. For backward compatibility, the field from contains a fake sender user in non-channel chats, if the message was sent on behalf of a chat.
  final Chat? senderChat;

  /// Date the message was sent in Unix time
  ///
  /// Note: Handy [DateTime] object is available in [dateTime] getter.
  final int date;

  /// Conversation the message belongs to
  final Chat chat;

  /// Optional. For forwarded messages, sender of the original message
  final User? forwardFrom;

  /// Optional. For messages forwarded from channels or from anonymous administrators, information about the original sender chat
  final Chat? forwardFromChat;

  /// Optional. For messages forwarded from channels, identifier of the original message in the channel
  final int? forwardFromMessageId;

  /// Optional. For forwarded messages that were originally sent in channels or by an anonymous chat administrator, signature of the message sender if present
  final String? forwardSignature;

  /// Optional. Sender's name for messages forwarded from users who disallow adding a link to their account in forwarded messages
  final String? forwardSenderName;

  /// Optional. For forwarded messages, date the original message was sent in Unix time
  ///
  /// Note: Handy [DateTime] object is available in [forwardDateTime] getter.
  final int? forwardDate;

  /// Optional. True, if the message is sent to a forum topic
  final bool? isTopicMessage;

  /// Optional. True, if the message is a channel post that was automatically forwarded to the connected discussion group
  final bool? isAutomaticForward;

  /// Optional. For replies, the original message. Note that the Message object in this field will not contain further reply_to_message fields even if it itself is a reply.
  final Message? replyToMessage;

  /// Optional. Bot through which the message was sent
  final User? viaBot;

  /// Optional. Date the message was last edited in Unix time
  ///
  /// Note: Handy [DateTime] object is available in [editDateTime] getter.
  final int? editDate;

  /// Optional. True, if the message can't be forwarded
  final bool? hasProtectedContent;

  /// Optional. The unique identifier of a media message group this message belongs to
  final String? mediaGroupId;

  /// Optional. Signature of the post author for messages in channels, or the custom title of an anonymous group administrator
  final String? authorSignature;

  /// Optional. For text messages, the actual UTF-8 text of the message
  final String? text;

  /// Optional. For text messages, special entities like usernames, URLs, bot commands, etc. that appear in the text
  final List<MessageEntity>? entities;

  /// Optional. Message is an animation, information about the animation. For backward compatibility, when this field is set, the document field will also be set
  final Animation? animation;

  /// Optional. Message is an audio file, information about the file
  final Audio? audio;

  /// Optional. Message is a general file, information about the file
  final Document? document;

  /// Optional. Message is a photo, available sizes of the photo
  final List<PhotoSize>? photo;

  /// Optional. Message is a sticker, information about the sticker
  final Sticker? sticker;

  /// Optional. Message is a video, information about the video
  final Video? video;

  /// Optional. Message is a video note, information about the video message
  final VideoNote? videoNote;

  /// Optional. Message is a voice message, information about the file
  final Voice? voice;

  /// Optional. Caption for the animation, audio, document, photo, video or voice
  final String? caption;

  /// Optional. For messages with a caption, special entities like usernames, URLs, bot commands, etc. that appear in the caption
  final List<MessageEntity>? captionEntities;

  /// Optional. Message is a shared contact, information about the contact
  final Contact? contact;

  /// Optional. Message is a dice with random value
  final Dice? dice;

  /// Optional. Message is a game, information about the game. More about games »
  final Game? game;

  /// Optional. Message is a native poll, information about the poll
  final Poll? poll;

  /// Optional. Message is a venue, information about the venue. For backward compatibility, when this field is set, the location field will also be set
  final Venue? venue;

  /// Optional. Message is a shared location, information about the location
  final Location? location;

  /// Optional. New members that were added to the group or supergroup and information about them (the bot itself may be one of these members)
  final List<User>? newChatMembers;

  /// Optional. A member was removed from the group, information about them (this member may be the bot itself)
  final User? leftChatMember;

  /// Optional. A chat title was changed to this value
  final String? newChatTitle;

  /// Optional. A chat photo was change to this value
  final List<PhotoSize>? newChatPhoto;

  /// Optional. Service message: the chat photo was deleted
  final bool? deleteChatPhoto;

  /// Optional. Service message: the group has been created
  final bool? groupChatCreated;

  /// Optional. Service message: the supergroup has been created. This field can't be received in a message coming through updates, because bot can't be a member of a supergroup when it is created. It can only be found in reply_to_message if someone replies to a very first message in a directly created supergroup.
  final bool? supergroupChatCreated;

  /// Optional. Service message: the channel has been created. This field can't be received in a message coming through updates, because bot can't be a member of a channel when it is created. It can only be found in reply_to_message if someone replies to a very first message in a channel.
  final bool? channelChatCreated;

  /// Optional. Service message: auto-delete timer settings changed in the chat
  final MessageAutoDeleteTimerChanged? messageAutoDeleteTimerChanged;

  /// Optional. The group has been migrated to a supergroup with the specified identifier. This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a signed 64-bit integer or double-precision float type are safe for storing this identifier.
  final int? migrateToChatId;

  /// Optional. The supergroup has been migrated from a group with the specified identifier. This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a signed 64-bit integer or double-precision float type are safe for storing this identifier.
  final int? migrateFromChatId;

  /// Optional. Specified message was pinned. Note that the Message object in this field will not contain further reply_to_message fields even if it is itself a reply.
  final Message? pinnedMessage;

  /// Optional. Message is an invoice for a payment, information about the invoice. [More about payments »](https://core.telegram.org/bots/api#payments)
  final Invoice? invoice;

  /// Optional. Message is a service message about a successful payment, information about the payment. [More about payments »](https://core.telegram.org/bots/api#payments)
  final SuccessfulPayment? successfulPayment;

  /// Optional. The domain name of the website on which the user has logged in. [More about Telegram Login »](https://core.telegram.org/widgets/login)
  final String? connectedWebsite;

  /// Optional. Telegram Passport data
  final PassportData? passportData;

  /// Optional. Service message. A user in the chat triggered another user's proximity alert while sharing Live Location.
  final ProximityAlertTriggered? proximityAlertTriggered;

  /// Optional. Service message: forum topic created
  final ForumTopicCreated? forumTopicCreated;

  /// Optional. Service message: forum topic closed
  final ForumTopicClosed? forumTopicClosed;

  /// Optional. Service message: forum topic reopened
  final ForumTopicReopened? forumTopicReopened;

  /// Optional. Service message: video chat scheduled
  final VideoChatScheduled? videoChatScheduled;

  /// Optional. Service message: video chat started
  final VideoChatStarted? videoChatStarted;

  /// Optional. Service message: video chat ended
  final VideoChatEnded? videoChatEnded;

  /// Optional. Service message: new participants invited to a video chat
  final VideoChatParticipantsInvited? videoChatParticipantsInvited;

  /// Optional. Service message: data sent by a Web App
  final WebAppData? webAppData;

  /// Optional. Inline keyboard attached to the message. login_url buttons are represented as ordinary url buttons.
  final InlineKeyboardMarkup? replyMarkup;

  /// Optional. Service message: a user was shared with the bot
  final UserShared? userShared;

  /// Optional. Service message: a chat was shared with the bot
  final ChatShared? chatShared;

  /// Optional. True, if the message media is covered by a spoiler animation
  final bool? hasMediaSpoiler;

  /// Optional. Service message: forum topic edited
  final ForumTopicEdited? forumTopicEdited;

  /// Optional. Service message: the 'General' forum topic hidden
  final GeneralForumTopicHidden? generalForumTopicHidden;

  /// Optional. Service message: the 'General' forum topic unhidden
  final GeneralForumTopicUnhidden? generalForumTopicUnhidden;

  /// Optional. Service message: the user allowed the bot added to the attachment menu to write messages
  final WriteAccessAllowed? writeAccessAllowed;

  /// Optional. Message is a forwarded story
  final Story? story;

  /// Creates a Message object.
  const Message({
    required this.messageId,
    this.from,
    this.senderChat,
    required this.date,
    required this.chat,
    this.forwardFrom,
    this.forwardFromChat,
    this.forwardFromMessageId,
    this.forwardSignature,
    this.forwardSenderName,
    this.forwardDate,
    this.replyToMessage,
    this.viaBot,
    this.editDate,
    this.mediaGroupId,
    this.authorSignature,
    this.text,
    this.entities,
    this.animation,
    this.audio,
    this.document,
    this.photo,
    this.sticker,
    this.video,
    this.videoNote,
    this.voice,
    this.caption,
    this.captionEntities,
    this.contact,
    this.dice,
    this.game,
    this.poll,
    this.venue,
    this.location,
    this.newChatMembers,
    this.leftChatMember,
    this.newChatTitle,
    this.newChatPhoto,
    this.deleteChatPhoto,
    this.groupChatCreated,
    this.supergroupChatCreated,
    this.channelChatCreated,
    this.messageAutoDeleteTimerChanged,
    this.migrateToChatId,
    this.migrateFromChatId,
    this.pinnedMessage,
    this.invoice,
    this.successfulPayment,
    this.connectedWebsite,
    this.passportData,
    this.proximityAlertTriggered,
    this.forumTopicCreated,
    this.forumTopicClosed,
    this.forumTopicReopened,
    this.videoChatScheduled,
    this.videoChatStarted,
    this.videoChatEnded,
    this.videoChatParticipantsInvited,
    this.webAppData,
    this.replyMarkup,
    this.hasProtectedContent,
    this.isAutomaticForward,
    this.isTopicMessage,
    this.messageThreadId,
    this.userShared,
    this.chatShared,
    this.hasMediaSpoiler,
    this.forumTopicEdited,
    this.generalForumTopicHidden,
    this.generalForumTopicUnhidden,
    this.writeAccessAllowed,
    this.story,
  });

  /// Creates a [Message] object from json map.
  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      messageId: json['message_id'],
      from: json['from'] == null ? null : User.fromJson(json['from']),
      senderChat: json['sender_chat'] == null
          ? null
          : Chat.fromJson(json['sender_chat']),
      date: json['date'],
      chat: Chat.fromJson(json['chat']),
      forwardFrom: json['forward_from'] == null
          ? null
          : User.fromJson(json['forward_from']),
      forwardFromChat: json['forward_from_chat'] == null
          ? null
          : Chat.fromJson(json['forward_from_chat']),
      forwardFromMessageId: json['forward_from_message_id'],
      forwardSignature: json['forward_signature'],
      forwardSenderName: json['forward_sender_name'],
      forwardDate: json['forward_date'],
      replyToMessage: json['reply_to_message'] == null
          ? null
          : Message.fromJson(json['reply_to_message']),
      viaBot: json['via_bot'] == null ? null : User.fromJson(json['via_bot']),
      editDate: json['edit_date'],
      mediaGroupId: json['media_group_id'],
      authorSignature: json['author_signature'],
      text: json['text'],
      entities: (json['entities'] as List<dynamic>?)
          ?.map((e) => MessageEntity.fromJson(e))
          .toList(),
      animation: json['animation'] == null
          ? null
          : Animation.fromJson(json['animation']),
      audio: json['audio'] == null ? null : Audio.fromJson(json['audio']),
      document:
          json['document'] == null ? null : Document.fromJson(json['document']),
      photo: (json['photo'] as List<dynamic>?)
          ?.map((e) => PhotoSize.fromJson(e))
          .toList(),
      sticker:
          json['sticker'] == null ? null : Sticker.fromJson(json['sticker']),
      video: json['video'] == null ? null : Video.fromJson(json['video']),
      videoNote: json['video_note'] == null
          ? null
          : VideoNote.fromJson(json['video_note']),
      voice: json['voice'] == null ? null : Voice.fromJson(json['voice']),
      caption: json['caption'],
      captionEntities: (json['caption_entities'] as List<dynamic>?)
          ?.map((e) => MessageEntity.fromJson(e))
          .toList(),
      contact:
          json['contact'] == null ? null : Contact.fromJson(json['contact']),
      dice: json['dice'] == null ? null : Dice.fromJson(json['dice']),
      game: json['game'] == null ? null : Game.fromJson(json['game']),
      poll: json['poll'] == null ? null : Poll.fromJson(json['poll']),
      venue: json['venue'] == null ? null : Venue.fromJson(json['venue']),
      location:
          json['location'] == null ? null : Location.fromJson(json['location']),
      newChatMembers: (json['new_chat_members'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e))
          .toList(),
      leftChatMember: json['left_chat_member'] == null
          ? null
          : User.fromJson(json['left_chat_member']),
      newChatTitle: json['new_chat_title'],
      newChatPhoto: (json['new_chat_photo'] as List<dynamic>?)
          ?.map((e) => PhotoSize.fromJson(e))
          .toList(),
      deleteChatPhoto: json['delete_chat_photo'],
      groupChatCreated: json['group_chat_created'],
      supergroupChatCreated: json['supergroup_chat_created'],
      channelChatCreated: json['channel_chat_created'],
      messageAutoDeleteTimerChanged:
          json['message_auto_delete_timer_changed'] == null
              ? null
              : MessageAutoDeleteTimerChanged.fromJson(
                  json['message_auto_delete_timer_changed'],
                ),
      migrateToChatId: json['migrate_to_chat_id'],
      migrateFromChatId: json['migrate_from_chat_id'],
      pinnedMessage: json['pinned_message'] == null
          ? null
          : Message.fromJson(json['pinned_message']),
      invoice:
          json['invoice'] == null ? null : Invoice.fromJson(json['invoice']),
      successfulPayment: json['successful_payment'] == null
          ? null
          : SuccessfulPayment.fromJson(json['successful_payment']),
      connectedWebsite: json['connected_website'],
      passportData: json['passport_data'] == null
          ? null
          : PassportData.fromJson(json['passport_data']),
      proximityAlertTriggered: json['proximity_alert_triggered'] == null
          ? null
          : ProximityAlertTriggered.fromJson(json['proximity_alert_triggered']),
      replyMarkup: json['reply_markup'] == null
          ? null
          : InlineKeyboardMarkup.fromJson(json['reply_markup']),
      isAutomaticForward: json['is_automatic_forward'],
      webAppData: json['web_app_data'] == null
          ? null
          : WebAppData.fromJson(json['web_app_data']),
      videoChatEnded: json['video_chat_ended'] == null
          ? null
          : VideoChatEnded.fromJson(json['video_chat_ended']),
      videoChatStarted: json['video_chat_started'] == null
          ? null
          : VideoChatStarted.fromJson(json['video_chat_started']),
      videoChatParticipantsInvited:
          json['video_chat_participants_invited'] == null
              ? null
              : VideoChatParticipantsInvited.fromJson(
                  json['video_chat_participants_invited'],
                ),
      videoChatScheduled: json['video_chat_scheduled'] == null
          ? null
          : VideoChatScheduled.fromJson(json['video_chat_scheduled']),
      forumTopicClosed: json['forum_topic_closed'] == null
          ? null
          : ForumTopicClosed.fromJson(json['forum_topic_closed']),
      forumTopicCreated: json['forum_topic_created'] == null
          ? null
          : ForumTopicCreated.fromJson(json['forum_topic_created']),
      forumTopicReopened: json['forum_topic_reopened'] == null
          ? null
          : ForumTopicReopened.fromJson(json['forum_topic_reopened']),
      hasProtectedContent: json['has_protected_content'],
      isTopicMessage: json['is_topic_message'],
      messageThreadId: json['message_thread_id'],
      userShared: json['user_shared'] == null
          ? null
          : UserShared.fromJson(json['user_shared']),
      chatShared: json['chat_shared'] == null
          ? null
          : ChatShared.fromJson(json['chat_shared']),
      hasMediaSpoiler: json['has_media_spoiler'],
      forumTopicEdited: json['forum_topic_edited'] == null
          ? null
          : ForumTopicEdited.fromJson(json['forum_topic_edited']),
      generalForumTopicHidden: json['general_forum_topic_hidden'] == null
          ? null
          : GeneralForumTopicHidden.fromJson(
              json['general_forum_topic_hidden'],
            ),
      generalForumTopicUnhidden: json['general_forum_topic_unhidden'] == null
          ? null
          : GeneralForumTopicUnhidden.fromJson(
              json['general_forum_topic_unhidden'],
            ),
      writeAccessAllowed: json['write_access_allowed'] == null
          ? null
          : WriteAccessAllowed.fromJson(json['write_access_allowed']),
      story: json['story'] == null ? null : Story.fromJson(json['story']),
    );
  }

  /// Returns the JSON representation of the Message object.
  Map<String, dynamic> toJson() {
    return {
      'message_id': messageId,
      'from': from?.toJson(),
      'sender_chat': senderChat?.toJson(),
      'date': date,
      'chat': chat.toJson(),
      'forward_from': forwardFrom?.toJson(),
      'forward_from_chat': forwardFromChat?.toJson(),
      'forward_from_message_id': forwardFromMessageId,
      'forward_signature': forwardSignature,
      'forward_sender_name': forwardSenderName,
      'forward_date': forwardDate,
      'reply_to_message': replyToMessage?.toJson(),
      'via_bot': viaBot?.toJson(),
      'edit_date': editDate,
      'media_group_id': mediaGroupId,
      'author_signature': authorSignature,
      'text': text,
      'entities': entities?.map((e) => e.toJson()).toList(),
      'animation': animation?.toJson(),
      'audio': audio?.toJson(),
      'document': document?.toJson(),
      'photo': photo?.map((e) => e.toJson()).toList(),
      'sticker': sticker?.toJson(),
      'video': video?.toJson(),
      'video_note': videoNote?.toJson(),
      'voice': voice?.toJson(),
      'caption': caption,
      'caption_entities': captionEntities?.map((e) => e.toJson()).toList(),
      'contact': contact?.toJson(),
      'dice': dice?.toJson(),
      'game': game?.toJson(),
      'poll': poll?.toJson(),
      'venue': venue?.toJson(),
      'location': location?.toJson(),
      'new_chat_members': newChatMembers?.map((e) => e.toJson()).toList(),
      'left_chat_member': leftChatMember?.toJson(),
      'new_chat_title': newChatTitle,
      'new_chat_photo': newChatPhoto?.map((e) => e.toJson()).toList(),
      'delete_chat_photo': deleteChatPhoto,
      'group_chat_created': groupChatCreated,
      'supergroup_chat_created': supergroupChatCreated,
      'channel_chat_created': channelChatCreated,
      'message_auto_delete_timer_changed':
          messageAutoDeleteTimerChanged?.toJson(),
      'migrate_to_chat_id': migrateToChatId,
      'migrate_from_chat_id': migrateFromChatId,
      'pinned_message': pinnedMessage?.toJson(),
      'invoice': invoice?.toJson(),
      'successful_payment': successfulPayment?.toJson(),
      'connected_website': connectedWebsite,
      'passport_data': passportData?.toJson(),
      'proximity_alert_triggered': proximityAlertTriggered?.toJson(),
      'reply_markup': replyMarkup?.toJson(),
      'is_automatic_forward': isAutomaticForward,
      'web_app_data': webAppData?.toJson(),
      'video_chat_ended': videoChatEnded?.toJson(),
      'video_chat_started': videoChatStarted?.toJson(),
      'video_chat_participants_invited': videoChatParticipantsInvited?.toJson(),
      'video_chat_scheduled': videoChatScheduled?.toJson(),
      'forum_topic_closed': forumTopicClosed?.toJson(),
      'forum_topic_created': forumTopicCreated?.toJson(),
      'forum_topic_reopened': forumTopicReopened?.toJson(),
      'has_protected_content': hasProtectedContent,
      'is_topic_message': isTopicMessage,
      'message_thread_id': messageThreadId,
      'user_shared': userShared?.toJson(),
      'chat_shared': chatShared?.toJson(),
      'has_media_spoiler': hasMediaSpoiler,
      'forum_topic_edited': forumTopicEdited?.toJson(),
      'general_forum_topic_hidden': generalForumTopicHidden?.toJson(),
      'general_forum_topic_unhidden': generalForumTopicUnhidden?.toJson(),
      'write_access_allowed': writeAccessAllowed?.toJson(),
      'story': story?.toJson(),
    }..removeWhere((key, value) => value == null);
  }

  /// Getter for the [DateTime] object that represents the message sent date
  DateTime get dateTime => DateTime.fromMillisecondsSinceEpoch(date * 1000);

  /// Getter for the [DateTime] object that represents the message edit date
  DateTime? get editDateTime => editDate == null
      ? null
      : DateTime.fromMillisecondsSinceEpoch(editDate! * 1000);

  /// Getter for the [DateTime] object that represents the message forward date
  DateTime? get forwardDateTime => forwardDate == null
      ? null
      : DateTime.fromMillisecondsSinceEpoch(forwardDate! * 1000);

  /// Returns true if the message is a command
  bool get isCommand => entities != null && entities!.isNotEmpty
      ? entities!.first.type == MessageEntityType.botCommand &&
          entities!.first.offset == 0
      : false;

  /// Returns the text where the given [MessageEntityType] is found
  String? getEntityText(MessageEntityType type) {
    if (entities == null || entities!.isEmpty) return null;
    if ((text ?? caption) == null) return null;
    if (entities?.any((element) => element.type == type) != true) return null;
    final entity = (entities ?? captionEntities)
        ?.firstWhere((element) => element.type == type);
    if (entity == null) return null;
    String entxt =
        text!.substring(entity.offset, entity.offset + entity.length);

    switch (type) {
      case MessageEntityType.mention:
      case MessageEntityType.hashtag:
      case MessageEntityType.cashtag:
        entxt = entxt.substring(1);
        break;
      case MessageEntityType.botCommand:
        if (entxt.contains('@')) {
          entxt = entxt.substring(0, entxt.indexOf('@'));
        } else {
          entxt = entxt.substring(1);
        }
        break;
      case MessageEntityType.textMention:
      case MessageEntityType.url:
      case MessageEntityType.email:
      case MessageEntityType.phoneNumber:
      case MessageEntityType.bold:
      case MessageEntityType.italic:
      case MessageEntityType.underline:
      case MessageEntityType.strikethrough:
      case MessageEntityType.spoiler:
      case MessageEntityType.code:
      case MessageEntityType.pre:
      case MessageEntityType.textLink:
        break;
      case MessageEntityType.customEmoji:
        entxt = entity.customEmojiId!;
        break;
    }
    return entxt;
  }
}

/// Represents the rights of an administrator in a chat.
class ChatAdministratorRights {
  /// True, if the user's presence in the chat is hidden
  final bool isAnonymous;

  /// True, if the administrator can access the chat event log, chat statistics, message statistics in channels, see channel members, see anonymous administrators in supergroups and ignore slow mode. Implied by any other administrator privilege
  final bool canManageChat;

  /// True, if the administrator can delete messages of other users
  final bool canDeleteMessages;

  /// True, if the administrator can manage video chats
  final bool canManageVideoChats;

  /// True, if the administrator can restrict, ban or unban chat members
  final bool canRestrictMembers;

  /// True, if the administrator can add new administrators with a subset of their own privileges or demote administrators that he has promoted, directly or indirectly (promoted by administrators that were appointed by the user)
  final bool canPromoteMembers;

  /// True, if the user is allowed to change the chat title, photo and other settings
  final bool canChangeInfo;

  /// True, if the user is allowed to invite new users to the chat
  final bool canInviteUsers;

  /// Optional. True, if the administrator can post in the channel; channels only
  final bool? canPostMessages;

  /// Optional. True, if the administrator can edit messages of other users and can pin messages; channels only
  final bool? canEditMessages;

  /// Optional. True, if the user is allowed to pin messages; groups and supergroups only
  final bool? canPinMessages;

  /// Optional. True, if the user is allowed to create, rename, close, and reopen forum topics; supergroups only
  final bool? canManageForum;

  /// Optional. True, if the administrator can post stories in the channel; channels only
  final bool? canPostStories;

  /// Optional. True, if the administrator can edit stories posted by other users; channels only
  final bool? canEditStories;

  /// Optional. True, if the administrator can delete stories posted by other users
  final bool? canDeleteStories;

  /// Creates a new [ChatAdministratorRights] object.
  const ChatAdministratorRights({
    required this.isAnonymous,
    required this.canManageChat,
    required this.canDeleteMessages,
    required this.canManageVideoChats,
    required this.canRestrictMembers,
    required this.canPromoteMembers,
    required this.canChangeInfo,
    required this.canInviteUsers,
    this.canPostMessages,
    this.canEditMessages,
    this.canPinMessages,
    this.canManageForum,
    this.canPostStories,
    this.canEditStories,
    this.canDeleteStories,
  });

  /// Creates a new [ChatAdministratorRights] object from json.
  factory ChatAdministratorRights.fromJson(Map<String, dynamic> json) {
    return ChatAdministratorRights(
      isAnonymous: json['is_anonymous'] ?? false,
      canManageChat: json['can_manage_chat'] ?? false,
      canDeleteMessages: json['can_delete_messages'] ?? false,
      canManageVideoChats: json['can_manage_video_chats'] ?? false,
      canRestrictMembers: json['can_restrict_members'] ?? false,
      canPromoteMembers: json['can_promote_members'] ?? false,
      canChangeInfo: json['can_change_info'] ?? false,
      canInviteUsers: json['can_invite_users'] ?? false,
      canPostMessages: json['can_post_messages'],
      canEditMessages: json['can_edit_messages'],
      canPinMessages: json['can_pin_messages'],
      canManageForum: json['can_manage_forum'],
      canPostStories: json['can_post_stories'],
      canEditStories: json['can_edit_stories'],
      canDeleteStories: json['can_delete_stories'],
    );
  }

  /// Converts a [ChatAdministratorRights] to a [Map] for JSON encoding.
  Map<String, dynamic> toJson() {
    return {
      'is_anonymous': isAnonymous,
      'can_manage_chat': canManageChat,
      'can_delete_messages': canDeleteMessages,
      'can_manage_video_chats': canManageVideoChats,
      'can_restrict_members': canRestrictMembers,
      'can_promote_members': canPromoteMembers,
      'can_change_info': canChangeInfo,
      'can_invite_users': canInviteUsers,
      'can_post_messages': canPostMessages,
      'can_edit_messages': canEditMessages,
      'can_pin_messages': canPinMessages,
      'can_manage_forum': canManageForum,
      'can_post_stories': canPostStories,
      'can_edit_stories': canEditStories,
      'can_delete_stories': canDeleteStories,
    }..removeWhere((key, value) => value == null);
  }
}

/// Represents a link to a photo stored on the Telegram servers. By default, this photo will be sent by the user with an optional caption. Alternatively, you can use input_message_content to send a message with the specified content instead of the photo.
class InlineQueryResultCachedPhoto extends InlineQueryResult {
  /// Type of the result, always [InlineQueryResultType.photo]
  @override
  InlineQueryResultType get type => InlineQueryResultType.photo;

  /// A valid file identifier of the photo
  String photoFileId;

  /// Optional. Title for the result
  String? title;

  /// Optional. Short description of the result
  String? description;

  /// Optional. Caption of the photo to be sent, 0-1024 characters after entities parsing
  String? caption;

  /// Optional. Mode for parsing entities in the photo caption. See formatting options for more details.
  ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  List<MessageEntity>? captionEntities;

  /// Optional. Inline keyboard attached to the message
  InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the photo
  InputMessageContent? inputMessageContent;

  /// Constructs an [InlineQueryResultCachedPhoto] object
  InlineQueryResultCachedPhoto({
    required this.photoFileId,
    required super.id,
    this.title,
    this.description,
    this.caption,
    this.parseMode,
    this.captionEntities,
    this.replyMarkup,
    this.inputMessageContent,
  });

  /// Converts an [InlineQueryResultCachedPhoto] object to a JSON map
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'photo_file_id': photoFileId,
      'title': title,
      'description': description,
      'caption': caption,
      'parse_mode': parseMode?.value,
      'caption_entities': captionEntities?.map((e) => e.toJson()).toList(),
      'reply_markup': replyMarkup?.toJson(),
      'input_message_content': inputMessageContent?.toJson(),
    }..removeWhere((key, value) => value == null);
  }

  /// Constructs an [InlineQueryResultCachedPhoto] object from a JSON map
  factory InlineQueryResultCachedPhoto.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultCachedPhoto(
      id: json['id'] as String,
      photoFileId: json['photo_file_id'] as String,
      title: json['title'] as String?,
      description: json['description'] as String?,
      caption: json['caption'] as String?,
      parseMode: json['parse_mode'] == null
          ? null
          : ParseMode.fromJson(json['parse_mode'] as String),
      captionEntities: json['caption_entities'] == null
          ? null
          : (json['caption_entities'] as List<dynamic>?)
              ?.map((e) => MessageEntity.fromJson(e as Map<String, dynamic>))
              .toList(),
      replyMarkup: json['reply_markup'] == null
          ? null
          : InlineKeyboardMarkup.fromJson(
              json['reply_markup'] as Map<String, dynamic>,
            ),
      inputMessageContent: json['input_message_content'] == null
          ? null
          : InputMessageContent.fromJson(
              json['input_message_content'] as Map<String, dynamic>,
            ),
    );
  }
}

/// Represents an issue with the selfie with a document. The error is considered resolved when the file with the selfie changes.
class PassportElementErrorSelfie extends PassportElementError {
  /// Error message
  final String message;

  /// Base64-encoded hash of the file with the selfie
  final String fileHash;

  /// Constructs a [PassportElementErrorSelfie] object
  const PassportElementErrorSelfie({
    required super.source,
    required super.type,
    required this.message,
    required this.fileHash,
  });

  /// Converts a [PassportElementErrorSelfie] object to JSON object
  @override
  Map<String, dynamic> toJson() {
    return {
      'source': source,
      'type': type,
      'message': message,
      'file_hash': fileHash,
    }..removeWhere((key, value) => value == null);
  }

  /// Creates a [PassportElementErrorSelfie] object from JSON object
  factory PassportElementErrorSelfie.fromJson(Map<String, dynamic> json) {
    return PassportElementErrorSelfie(
      source: json['source']!,
      type: PassportType.fromJson(json['type']!),
      message: json['message']!,
      fileHash: json['file_hash']!,
    );
  }
}

/// This object represents a service message about a video chat started in the chat. Currently holds no information.
class VideoChatStarted {
  /// Constructs a [VideoChatStarted] object
  VideoChatStarted();

  /// Creates a [VideoChatStarted] object from JSON object
  factory VideoChatStarted.fromJson(Map<String, dynamic> json) {
    return VideoChatStarted();
  }

  /// Converts a [VideoChatStarted] object to JSON object
  Map<String, dynamic> toJson() {
    return {};
  }
}

/// Represents the content of a text message to be sent as the result of an inline query.
class InputTextMessageContent extends InputMessageContent {
  /// Text of the message to be sent, 1-4096 characters
  String messageText;

  /// Optional. Mode for parsing entities in the message text. See formatting options for more details.
  ParseMode? parseMode;

  /// Optional. List of special entities that appear in message text, which can be specified instead of parse_mode
  List<MessageEntity>? entities;

  /// Optional. Disables link previews for links in the sent message
  bool? disableWebPagePreview;

  /// Constructs an [InputTextMessageContent] object
  InputTextMessageContent({
    required this.messageText,
    this.parseMode,
    this.entities,
    this.disableWebPagePreview,
  });

  /// Converts an [InputTextMessageContent] object to a JSON object
  @override
  Map<String, dynamic> toJson() {
    return {
      'message_text': messageText,
      'parse_mode': parseMode?.value,
      'entities': entities?.map((e) => e.toJson()).toList(),
      'disable_web_page_preview': disableWebPagePreview,
    }..removeWhere((key, value) => value == null);
  }

  /// Constructs an [InputTextMessageContent] object from a JSON object
  factory InputTextMessageContent.fromJson(Map<String, dynamic> json) {
    return InputTextMessageContent(
      messageText: json['message_text'] as String,
      parseMode: json['parse_mode'] == null
          ? null
          : ParseMode.fromJson(json['parse_mode'] as String),
      entities: (json['entities'] as List<dynamic>?)
          ?.map((e) => MessageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      disableWebPagePreview: json['disable_web_page_preview'] as bool?,
    );
  }
}

/// Describes data sent from a Web App to the bot.
class WebAppData {
  /// The data. Be aware that a bad client can send arbitrary data in this field.
  String data;

  /// Text of the web_app keyboard button from which the Web App was opened. Be aware that a bad client can send arbitrary data in this field.
  String buttonText;

  /// Constructs a [WebAppData] object
  WebAppData({
    required this.data,
    required this.buttonText,
  });

  /// Creates a [WebAppData] object from JSON object
  factory WebAppData.fromJson(Map<String, dynamic> json) {
    return WebAppData(
      data: json['data']!,
      buttonText: json['button_text'],
    );
  }

  /// Converts a [WebAppData] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'data': data,
      'button_text': buttonText,
    }..removeWhere((key, value) => value == null);
  }
}

/// This object contains information about a poll.
class Poll {
  /// Unique poll identifier
  String id;

  /// Poll question, 1-300 characters
  String question;

  /// List of poll options
  List<PollOption> options;

  /// Total number of users that voted in the poll
  int totalVoterCount;

  /// True, if the poll is closed
  bool isClosed;

  /// True, if the poll is anonymous
  bool isAnonymous;

  /// Poll type, currently can be “regular” or “quiz”
  PollType type;

  /// True, if the poll allows multiple answers
  bool allowsMultipleAnswers;

  /// Optional. 0-based identifier of the correct answer option. Available only for polls in the quiz mode, which are closed, or was sent (not forwarded) by the bot or to the private chat with the bot.
  int? correctOptionId;

  /// Optional. Text that is shown when a user chooses an incorrect answer or taps on the lamp icon in a quiz-style poll, 0-200 characters
  String? explanation;

  /// Optional. Special entities like usernames, URLs, bot commands, etc. that appear in the explanation
  List<MessageEntity>? explanationEntities;

  /// Optional. Amount of time in seconds the poll will be active after creation
  ///
  /// A handy [Duration] object is available as [openPeriodDuration] getter
  int? openPeriod;

  /// Optional. Point in time (Unix timestamp) when the poll will be automatically closed
  ///
  /// A handy [DateTime] object is available as [closeDateTime] getter
  int? closeDate;

  /// Constructs a [Poll] object
  Poll({
    required this.id,
    required this.question,
    required this.options,
    required this.totalVoterCount,
    required this.isClosed,
    required this.isAnonymous,
    required this.type,
    required this.allowsMultipleAnswers,
    this.correctOptionId,
    this.explanation,
    this.explanationEntities,
    this.openPeriod,
    this.closeDate,
  });

  /// Creates a [Poll] object from JSON object
  factory Poll.fromJson(Map<String, dynamic> json) {
    return Poll(
      id: json['id']!,
      question: json['question']!,
      options: (json['options'] as List<dynamic>)
          .map((x) => PollOption.fromJson(x as Map<String, dynamic>))
          .toList(),
      totalVoterCount: json['total_voter_count']!,
      isClosed: json['is_closed']!,
      isAnonymous: json['is_anonymous']!,
      type: PollType.fromJson(json['type']!),
      allowsMultipleAnswers: json['allows_multiple_answers']!,
      correctOptionId: json['correct_option_id'],
      explanation: json['explanation'],
      explanationEntities: (json['explanation_entities'] as List<dynamic>?)
          ?.map((x) => MessageEntity.fromJson(x as Map<String, dynamic>))
          .toList(),
      openPeriod: json['open_period'],
      closeDate: json['close_date'],
    );
  }

  /// Converts a [Poll] object to a JSON object
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'question': question,
      'options': options.map((x) => x.toJson()).toList(),
      'total_voter_count': totalVoterCount,
      'is_closed': isClosed,
      'is_anonymous': isAnonymous,
      'type': type.toJson(),
      'allows_multiple_answers': allowsMultipleAnswers,
      'correct_option_id': correctOptionId,
      'explanation': explanation,
      'explanation_entities':
          explanationEntities?.map((x) => x.toJson()).toList(),
      'open_period': openPeriod,
      'close_date': closeDate,
    }..removeWhere((key, value) => value == null);
  }

  /// The [Duration] object for [openPeriod]
  Duration? get openPeriodDuration =>
      openPeriod == null ? null : Duration(seconds: openPeriod!);

  /// The [DateTime] object for [closeDate]
  DateTime? get closeDateTime => closeDate == null
      ? null
      : DateTime.fromMillisecondsSinceEpoch(closeDate! * 1000);
}

/// Represents a link to a voice message stored on the Telegram servers. By default, this voice message will be sent by the user. Alternatively, you can use input_message_content to send a message with the specified content instead of the voice message.
///
/// Note: This will only work in Telegram versions released after 9 April, 2016. Older clients will ignore them.
class InlineQueryResultCachedVoice extends InlineQueryResult {
  /// Type of the result, always [InlineQueryResultType.voice]
  @override
  InlineQueryResultType get type => InlineQueryResultType.voice;

  /// A valid file identifier for the voice message
  String voiceFileId;

  /// Voice message title
  String title;

  /// Optional. Caption, 0-1024 characters after entities parsing
  String? caption;

  /// Optional. Mode for parsing entities in the video caption. See formatting options for more details.
  ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  List<MessageEntity>? captionEntities;

  /// Optional. Inline keyboard attached to the message
  InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the voice message
  InputMessageContent? inputMessageContent;

  /// Constructs an [InlineQueryResultCachedVoice] object
  InlineQueryResultCachedVoice({
    required this.voiceFileId,
    required this.title,
    required super.id,
    this.caption,
    this.parseMode,
    this.captionEntities,
    this.replyMarkup,
    this.inputMessageContent,
  });

  /// Converts an [InlineQueryResultCachedVoice] object to a JSON map
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'voice_file_id': voiceFileId,
      'title': title,
      'caption': caption,
      'parse_mode': parseMode?.value,
      'caption_entities': captionEntities?.map((e) => e.toJson()).toList(),
      'reply_markup': replyMarkup?.toJson(),
      'input_message_content': inputMessageContent?.toJson(),
    }..removeWhere((key, value) => value == null);
  }

  /// Constructs an [InlineQueryResultCachedVoice] object from a JSON map
  factory InlineQueryResultCachedVoice.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultCachedVoice(
      voiceFileId: json['voice_file_id'] as String,
      title: json['title'] as String,
      id: json['id'] as String,
      caption: json['caption'] as String?,
      parseMode: json['parse_mode'] == null
          ? null
          : ParseMode.fromJson(json['parse_mode'] as String),
      captionEntities: (json['caption_entities'] as List<dynamic>?)
          ?.map((e) => MessageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      replyMarkup: json['reply_markup'] == null
          ? null
          : InlineKeyboardMarkup.fromJson(
              json['reply_markup'] as Map<String, dynamic>,
            ),
      inputMessageContent: json['input_message_content'] == null
          ? null
          : InputMessageContent.fromJson(
              json['input_message_content'] as Map<String, dynamic>,
            ),
    );
  }
}

/// This object represents the bot's name.
class BotName {
  /// The bot's name
  final String name;

  /// Creates a new BotName object
  const BotName({
    required this.name,
  });

  /// Constructs [BotName] from JSON
  factory BotName.fromJson(Map<String, dynamic> json) {
    return BotName(
      name: json['name'],
    );
  }

  /// Converts [BotName] to JSON
  Map<String, dynamic> toJson() {
    return {
      'name': name,
    }..removeWhere((_, value) => value == null);
  }
}

/// Represents a link to a page containing an embedded video player or a video file. By default, this video file will be sent by the user with an optional caption. Alternatively, you can use input_message_content to send a message with the specified content instead of the video.
///
/// If an InlineQueryResultVideo message contains an embedded video (e.g., YouTube), you must replace its content using input_message_content.
class InlineQueryResultVideo extends InlineQueryResult {
  /// Type of the result, always [InlineQueryResultType.video]
  @override
  InlineQueryResultType get type => InlineQueryResultType.video;

  /// A valid URL for the embedded video player or video file
  String videoUrl;

  /// MIME type of the content of the video URL, “text/html” or “video/mp4”
  String mimeType;

  /// URL of the thumbnail (JPEG only) for the video
  String thumbnailUrl;

  /// Title for the result
  String title;

  /// Optional. Caption of the video to be sent, 0-1024 characters after entities parsing
  String? caption;

  /// Optional. Mode for parsing entities in the video caption. See formatting options for more details.
  ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  List<MessageEntity>? captionEntities;

  /// Optional. Video width
  int? videoWidth;

  /// Optional. Video height
  int? videoHeight;

  /// Optional. Video duration in seconds
  int? videoDuration;

  /// Optional. Short description of the result
  String? description;

  /// Optional. Inline keyboard attached to the message
  InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the video. This field is required if InlineQueryResultVideo is used to send an HTML-page as a result (e.g., a YouTube video).
  InputMessageContent? inputMessageContent;

  /// Converts [InlineQueryResultVideo] object to a JSON object
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'video_url': videoUrl,
      'mime_type': mimeType,
      'thumbnail_url': thumbnailUrl,
      'title': title,
      'caption': caption,
      'parse_mode': parseMode?.value,
      'caption_entities': captionEntities?.map((e) => e.toJson()).toList(),
      'video_width': videoWidth,
      'video_height': videoHeight,
      'video_duration': videoDuration,
      'description': description,
      'reply_markup': replyMarkup?.toJson(),
      'input_message_content': inputMessageContent?.toJson(),
    }..removeWhere((_, v) => v == null);
  }

  /// Constructs an [InlineQueryResultVideo] object
  InlineQueryResultVideo({
    required this.videoUrl,
    required this.mimeType,
    required this.thumbnailUrl,
    required this.title,
    required super.id,
    this.caption,
    this.parseMode,
    this.captionEntities,
    this.videoWidth,
    this.videoHeight,
    this.videoDuration,
    this.description,
    this.replyMarkup,
    this.inputMessageContent,
  });

  /// Constructs an [InlineQueryResultVideo] from JSON object
  factory InlineQueryResultVideo.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultVideo(
      videoUrl: json['video_url']!,
      mimeType: json['mime_type']!,
      thumbnailUrl: json['thumbnail_url']!,
      title: json['title']!,
      id: json['id']!,
      caption: json['caption'],
      parseMode: ParseMode.fromJson(json['parse_mode']),
      captionEntities: (json['caption_entities'] as List<dynamic>?)
          ?.map((e) => MessageEntity.fromJson(e))
          .toList(),
      videoWidth: json['video_width'],
      videoHeight: json['video_height'],
      videoDuration: json['video_duration'],
      description: json['description'],
      replyMarkup: InlineKeyboardMarkup.fromJson(json['reply_markup']),
      inputMessageContent:
          InputMessageContent.fromJson(json['input_message_content']),
    );
  }
}

/// Represents the content of an invoice message to be sent as the result of an inline query.
class InputInvoiceMessageContent extends InputMessageContent {
  /// Product name, 1-32 characters
  String title;

  /// Product description, 1-255 characters
  String description;

  /// Bot-defined invoice payload, 1-128 bytes. This will not be displayed to the user, use for your internal processes.
  String payload;

  /// Payment provider token, obtained via @BotFather
  String providerToken;

  /// Three-letter ISO 4217 currency code, [see more on currencies](https://core.telegram.org/bots/payments#supported-currencies)
  String currency;

  /// Price breakdown, a JSON-serialized list of components (e.g. product price, tax, discount, delivery cost, delivery tax, bonus, etc.)
  List<LabeledPrice> prices;

  /// Optional. The maximum accepted amount for tips in the smallest units of the currency (integer, not float/double). For example, for a maximum tip of US$ 1.45 pass max_tip_amount = 145. See the exp parameter in currencies.json, it shows the number of digits past the decimal point for each currency (2 for the majority of currencies). Defaults to 0
  int? maxTipAmount;

  /// Optional. A JSON-serialized array of suggested amounts of tip in the smallest units of the currency (integer, not float/double). At most 4 suggested tip amounts can be specified. The suggested tip amounts must be positive, passed in a strictly increased order and must not exceed max_tip_amount.
  List<int>? suggestedTipAmounts;

  /// Optional. A JSON-serialized object for data about the invoice, which will be shared with the payment provider. A detailed description of the required fields should be provided by the payment provider.
  String? providerData;

  /// Optional. URL of the product photo for the invoice. Can be a photo of the goods or a marketing image for a service.
  String? photoUrl;

  /// Optional. Photo size in bytes
  int? photoSize;

  /// Optional. Photo width
  int? photoWidth;

  /// Optional. Photo height
  int? photoHeight;

  /// Optional. Pass True if you require the user's full name to complete the order
  bool? needName;

  /// Optional. Pass True if you require the user's phone number to complete the order
  bool? needPhoneNumber;

  /// Optional. Pass True if you require the user's email address to complete the order
  bool? needEmail;

  /// Optional. Pass True if you require the user's shipping address to complete the order
  bool? needShippingAddress;

  /// Optional. Pass True if the user's phone number should be sent to provider
  bool? sendPhoneNumberToProvider;

  /// Optional. Pass True if the user's email address should be sent to provider
  bool? sendEmailToProvider;

  /// Optional. Pass True if the final price depends on the shipping method
  bool? isFlexible;

  /// Constructs an [InputInvoiceMessageContent] object
  InputInvoiceMessageContent({
    required this.title,
    required this.description,
    required this.payload,
    required this.providerToken,
    required this.currency,
    required this.prices,
    this.maxTipAmount,
    this.suggestedTipAmounts,
    this.providerData,
    this.photoUrl,
    this.photoSize,
    this.photoWidth,
    this.photoHeight,
    this.needName,
    this.needPhoneNumber,
    this.needEmail,
    this.needShippingAddress,
    this.sendPhoneNumberToProvider,
    this.sendEmailToProvider,
    this.isFlexible,
  });

  /// Converts an [InputInvoiceMessageContent] object to a JSON map
  @override
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'payload': payload,
      'provider_token': providerToken,
      'currency': currency,
      'prices': prices.map((e) => e.toJson()).toList(),
      'max_tip_amount': maxTipAmount,
      'suggested_tip_amounts': suggestedTipAmounts,
      'provider_data': providerData,
      'photo_url': photoUrl,
      'photo_size': photoSize,
      'photo_width': photoWidth,
      'photo_height': photoHeight,
      'need_name': needName,
      'need_phone_number': needPhoneNumber,
      'need_email': needEmail,
      'need_shipping_address': needShippingAddress,
      'send_phone_number_to_provider': sendPhoneNumberToProvider,
      'send_email_to_provider': sendEmailToProvider,
      'is_flexible': isFlexible,
    }..removeWhere((key, value) => value == null);
  }

  /// Constructs an [InputInvoiceMessageContent] object from a JSON map
  factory InputInvoiceMessageContent.fromJson(Map<String, dynamic> json) {
    return InputInvoiceMessageContent(
      title: json['title'] as String,
      description: json['description'] as String,
      payload: json['payload'] as String,
      providerToken: json['provider_token'] as String,
      currency: json['currency'] as String,
      prices: (json['prices'] as List<dynamic>)
          .map((e) => LabeledPrice.fromJson(e as Map<String, dynamic>))
          .toList(),
      maxTipAmount: json['max_tip_amount'] as int?,
      suggestedTipAmounts: (json['suggested_tip_amounts'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      providerData: json['provider_data'] as String?,
      photoUrl: json['photo_url'] as String?,
      photoSize: json['photo_size'] as int?,
      photoWidth: json['photo_width'] as int?,
      photoHeight: json['photo_height'] as int?,
      needName: json['need_name'] as bool?,
      needPhoneNumber: json['need_phone_number'] as bool?,
      needEmail: json['need_email'] as bool?,
      needShippingAddress: json['need_shipping_address'] as bool?,
      sendPhoneNumberToProvider: json['send_phone_number_to_provider'] as bool?,
      sendEmailToProvider: json['send_email_to_provider'] as bool?,
      isFlexible: json['is_flexible'] as bool?,
    );
  }
}

/// This object represents a service message about a video chat scheduled in the chat.
class VideoChatScheduled {
  /// Point in time (Unix timestamp) when the video chat is supposed to be started by a chat administrator
  ///
  /// Note: You can also use the [DateTime] object getter as [startDateTime]
  int startDate;

  /// Constructs a [VideoChatScheduled] object
  VideoChatScheduled({
    required this.startDate,
  });

  /// Creates a [VideoChatScheduled] object from JSON object
  factory VideoChatScheduled.fromJson(Map<String, dynamic> json) {
    return VideoChatScheduled(
      startDate: json['start_date']!,
    );
  }

  /// Converts a [VideoChatScheduled] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'start_date': startDate,
    }..removeWhere((key, value) => value == null);
  }

  /// [DateTime] object getter for [startDate]
  DateTime get startDateTime =>
      DateTime.fromMillisecondsSinceEpoch(startDate * 1000);
}

/// This object represents one button of an inline keyboard. You must use exactly one of the optional fields.
class InlineKeyboardButton {
  /// Label text on the button
  String text;

  /// Optional. HTTP or tg:// url to be opened when button is pressed
  String? url;

  /// Optional. An HTTP URL used to automatically authorize the user. Can be used as a replacement for the Telegram Login Widget.
  LoginURL? loginUrl;

  /// Optional. Data to be sent in a callback query to the bot when button is pressed, 1-64 bytes
  String? callbackData;

  /// Optional. If set, pressing the button will prompt the user to select one of their chats, open that chat and insert the bot's username and the specified inline query in the input field. Can be empty, in which case just the bot's username will be inserted.
  ///
  /// Note: This offers an easy way for users to start using your bot in inline mode when they are currently in a private chat with it. Especially useful when combined with switch_pm… actions – in this case the user will be automatically returned to the chat they switched from, skipping the chat selection screen.
  String? switchInlineQuery;

  /// Optional. If set, pressing the button will insert the bot's username and the specified inline query in the current chat's input field. Can be empty, in which case only the bot's username will be inserted.
  ///
  /// This offers a quick way for the user to open your bot in inline mode in the same chat – good for selecting something from multiple options.
  String? switchInlineQueryCurrentChat;

  /// Optional. Description of the game that will be launched when the user presses the button.
  ///
  /// NOTE: This type of button must always be the first button in the first row.
  CallbackGame? callbackGame;

  /// Optional. Specify True, to send a Pay button.
  ///
  /// NOTE: This type of button must always be the first button in the first row.
  bool? pay;

  /// Optional. Description of the Web App that will be launched when the user presses the button. The Web App will be able to send an arbitrary message on behalf of the user using the method answerWebAppQuery. Available only in private chats between a user and the bot.
  WebAppInfo? webApp;

  /// Optional. If set, pressing the button will prompt the user to select one of their chats of the specified type, open that chat and insert the bot's username and the specified inline query in the input field
  ///
  /// Since Bot API 6.7
  SwitchInlineQueryChosenChat? switchInlineQueryChosenChat;

  /// This object represents one button of an inline keyboard.
  ///
  /// The inline keyboard consists of a row of buttons, each represented by an [InlineKeyboardButton] object. You can use the various fields to specify the behavior of the button.
  InlineKeyboardButton({
    required this.text,
    this.url,
    this.loginUrl,
    this.callbackData,
    this.switchInlineQuery,
    this.switchInlineQueryCurrentChat,
    this.callbackGame,
    this.pay,
    this.webApp,
    this.switchInlineQueryChosenChat,
  });

  /// Creates an [InlineKeyboardButton] from JSON object
  factory InlineKeyboardButton.fromJson(Map<String, dynamic> json) {
    return InlineKeyboardButton(
      text: json['text'],
      url: json['url'],
      loginUrl: json['login_url'] != null
          ? LoginURL.fromJson(json['login_url'])
          : null,
      callbackData: json['callback_data'],
      switchInlineQuery: json['switch_inline_query'],
      switchInlineQueryCurrentChat: json['switch_inline_query_current_chat'],
      callbackGame: json['callback_game'] != null
          ? CallbackGame.fromJson(json['callback_game'])
          : null,
      pay: json['pay'],
      webApp: json['web_app'] != null
          ? WebAppInfo.fromJson(json['web_app_info'])
          : null,
      switchInlineQueryChosenChat:
          json['switch_inline_query_chosen_chat'] != null
              ? SwitchInlineQueryChosenChat.fromJson(
                  json['switch_inline_query_chosen_chat'],
                )
              : null,
    );
  }

  /// Converts an [InlineKeyboardButton] to JSON object
  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'url': url,
      'login_url': loginUrl?.toJson(),
      'callback_data': callbackData,
      'switch_inline_query': switchInlineQuery,
      'switch_inline_query_current_chat': switchInlineQueryCurrentChat,
      'callback_game': callbackGame?.toJson(),
      'pay': pay,
      'web_app': webApp?.toJson(),
      'switch_inline_query_chosen_chat': switchInlineQueryChosenChat?.toJson(),
    }..removeWhere((key, value) => value == null);
  }
}

/// This object describes the position on faces where a mask should be placed by default.
class MaskPosition {
  /// The
  MaskPositionPoint point;

  /// Shift by X-axis measured in widths of the mask scaled to the face size, from left to right. For example, choosing -1.0 will place mask just to the left of the default mask position.
  double xShift;

  /// Shift by Y-axis measured in heights of the mask scaled to the face size, from top to bottom. For example, 1.0 will place the mask just below the default mask position.
  double yShift;

  /// Mask scaling coefficient. For example, 2.0 means double size.
  double scale;

  /// Constructs a [MaskPosition] object
  MaskPosition({
    required this.point,
    required this.xShift,
    required this.yShift,
    required this.scale,
  });

  /// Creates a [MaskPosition] object from a JSON map
  factory MaskPosition.fromJson(Map<String, dynamic> json) {
    return MaskPosition(
      point: MaskPositionPoint.fromJson(json['point']),
      xShift: json['x_shift'] as double,
      yShift: json['y_shift'] as double,
      scale: json['scale'] as double,
    );
  }

  /// Converts a [MaskPosition] object to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'point': point.toJson(),
      'x_shift': xShift,
      'y_shift': yShift,
      'scale': scale,
    };
  }
}

/// Describes actions that a non-administrator user is allowed to take in a chat.
class ChatPermissions {
  /// Optional. True, if the user is allowed to send text messages, contacts, locations and venues
  final bool? canSendMessages;

  /// Optional. True, if the user is allowed to send polls, implies can_send_messages
  final bool? canSendPolls;

  /// Optional. True, if the user is allowed to send animations, games, stickers and use inline bots, implies can_send_media_messages
  final bool? canSendOtherMessages;

  /// Optional. True, if the user is allowed to add web page previews to their messages, implies can_send_media_messages
  final bool? canAddWebPagePreviews;

  /// Optional. True, if the user is allowed to change the chat title, photo and other settings. Ignored in public supergroups
  final bool? canChangeInfo;

  /// Optional. True, if the user is allowed to invite new users to the chat
  final bool? canInviteUsers;

  /// Optional. True, if the user is allowed to pin messages. Ignored in public supergroups
  final bool? canPinMessages;

  /// Optional. True, if the user is allowed to create forum topics. If omitted defaults to the value of can_pin_messages
  final bool? canManageTopics;

  /// True, if the user is allowed to send audios
  /// Since Bot API 6.5
  final bool? canSendAudios;

  /// True, if the user is allowed to send documents
  final bool? canSendDocuments;

  /// True, if the user is allowed to send photos
  final bool? canSendPhotos;

  /// True, if the user is allowed to send videos
  final bool? canSendVideos;

  /// True, if the user is allowed to send video notes
  final bool? canSendVideoNotes;

  /// True, if the user is allowed to send voice notes
  final bool? canSendVoiceNotes;

  /// Creates a new [ChatPermissions] object.
  const ChatPermissions({
    this.canSendMessages,
    this.canSendPolls,
    this.canSendOtherMessages,
    this.canAddWebPagePreviews,
    this.canChangeInfo,
    this.canInviteUsers,
    this.canPinMessages,
    this.canManageTopics,
    this.canSendAudios,
    this.canSendDocuments,
    this.canSendPhotos,
    this.canSendVideos,
    this.canSendVideoNotes,
    this.canSendVoiceNotes,
  });

  /// Creates a new [ChatPermissions] object from json [String].
  factory ChatPermissions.fromJson(Map<String, dynamic> json) {
    return ChatPermissions(
      canSendMessages: json['can_send_messages'],
      canSendPolls: json['can_send_polls'],
      canSendOtherMessages: json['can_send_other_messages'],
      canAddWebPagePreviews: json['can_add_web_page_previews'],
      canChangeInfo: json['can_change_info'],
      canInviteUsers: json['can_invite_users'],
      canPinMessages: json['can_pin_messages'],
      canManageTopics: json['can_manage_topics'],
      canSendAudios: json['can_send_audios'],
      canSendDocuments: json['can_send_documents'],
      canSendPhotos: json['can_send_photos'],
      canSendVideos: json['can_send_videos'],
      canSendVideoNotes: json['can_send_video_notes'],
      canSendVoiceNotes: json['can_send_voice_notes'],
    );
  }

  /// Converts a [ChatPermissions] to a [Map] for JSON encoding.
  Map<String, dynamic> toJson() {
    return {
      'can_send_messages': canSendMessages,
      'can_send_polls': canSendPolls,
      'can_send_other_messages': canSendOtherMessages,
      'can_add_web_page_previews': canAddWebPagePreviews,
      'can_change_info': canChangeInfo,
      'can_invite_users': canInviteUsers,
      'can_pin_messages': canPinMessages,
      'can_manage_topics': canManageTopics,
      'can_send_audios': canSendAudios,
      'can_send_documents': canSendDocuments,
      'can_send_photos': canSendPhotos,
      'can_send_videos': canSendVideos,
      'can_send_video_notes': canSendVideoNotes,
      'can_send_voice_notes': canSendVoiceNotes,
    }..removeWhere((key, value) => value == null);
  }
}

/// This object represents a custom keyboard with reply options (see Introduction to bots for details and examples).
class ReplyKeyboardMarkup extends ReplyMarkup {
  /// Array of button rows, each represented by an Array of [KeyboardButton] objects
  List<List<KeyboardButton>> keyboard;

  /// Optional. Requests clients to resize the keyboard vertically for optimal fit (e.g., make the keyboard smaller if there are just two rows of buttons). Defaults to false, in which case the custom keyboard is always of the same height as the app's standard keyboard.
  bool? resizeKeyboard;

  /// Optional. Requests clients to hide the keyboard as soon as it's been used. The keyboard will still be available, but clients will automatically display the usual letter-keyboard in the chat – the user can press a special button in the input field to see the custom keyboard again. Defaults to false.
  bool? oneTimeKeyboard;

  /// Optional. The placeholder to be shown in the input field when the keyboard is active; 1-64 characters
  String? inputFieldPlaceholder;

  /// Optional. Use this parameter if you want to show the keyboard to specific users only.
  /// Targets:
  ///   1) users that are @mentioned in the text of the [Message] object;
  ///   2) if the bot's message is a reply (has [Message.replyToMessage]), sender of the original message.Example: A user requests to change the bot‘s language, bot replies to the request with a keyboard to select the new language. Other users in the group don’t see the keyboard.
  bool? selective;

  /// Optional. Requests clients to always show the keyboard when the regular keyboard is hidden. Defaults to false, in which case the custom keyboard can be hidden and opened with a keyboard icon.
  bool? isPersistent;

  /// Constructs a [ReplyKeyboardMarkup] object
  ReplyKeyboardMarkup({
    required this.keyboard,
    this.resizeKeyboard,
    this.oneTimeKeyboard,
    this.inputFieldPlaceholder,
    this.selective,
    this.isPersistent,
  });

  /// Constructs a [ReplyKeyboardMarkup] object from a json [String]
  factory ReplyKeyboardMarkup.fromJson(Map<String, dynamic> json) {
    return ReplyKeyboardMarkup(
      keyboard: List<List<KeyboardButton>>.from(
        json['keyboard'].map(
          (x) => List<KeyboardButton>.from(
            x.map((x) => KeyboardButton.fromJson(x)),
          ),
        ),
      ),
      resizeKeyboard: json['resize_keyboard'],
      oneTimeKeyboard: json['one_time_keyboard'],
      inputFieldPlaceholder: json['input_field_placeholder'],
      selective: json['selective'],
      isPersistent: json['is_persistent'],
    );
  }

  /// Converts a [ReplyKeyboardMarkup] object to a json [String]
  @override
  Map<String, dynamic> toJson() {
    return {
      'keyboard': List<dynamic>.from(
        keyboard.map(
          (x) => List<dynamic>.from(
            x.map(
              (x) => x.toJson(),
            ),
          ),
        ),
      ),
      'resize_keyboard': resizeKeyboard,
      'one_time_keyboard': oneTimeKeyboard,
      'input_field_placeholder': inputFieldPlaceholder,
      'selective': selective,
      'is_persistent': isPersistent,
    }..removeWhere((key, value) => value == null);
  }
}

/// Represents the scope of bot commands, covering a specific member of a group or supergroup chat.
class BotCommandScopeChatMember implements BotCommandScope {
  /// Scope type, always be [BotCommandScopeType.chatMember]
  @override
  BotCommandScopeType get type => BotCommandScopeType.chatMember;

  /// Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
  ID chatId;

  /// Unique identifier of the target user
  int userId;

  /// Creates a new [BotCommandScopeChatMember] object.
  BotCommandScopeChatMember({
    required this.chatId,
    required this.userId,
  });

  /// Creates a new [BotCommandScopeChatMember] object from json.
  factory BotCommandScopeChatMember.fromJson(Map<String, dynamic> json) {
    return BotCommandScopeChatMember(
      chatId: ID.create(json['chat_id']),
      userId: json['user_id'] as int,
    );
  }

  /// Converts a [BotCommandScopeChatMember] to a [Map] for JSON encoding.
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.toJson(),
      'chat_id': chatId.toJson(),
      'user_id': userId,
    }..removeWhere((key, value) => value == null);
  }
}

/// This object represents a voice note.
class Voice {
  /// Identifier for this file, which can be used to download or reuse the file
  String fileId;

  /// Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
  String fileUniqueId;

  /// Duration of the video in seconds as defined by sender
  ///
  /// A handy [Duration] getter is available as [durationTime]
  int duration;

  /// Optional. MIME type of the file as defined by sender
  String? mimeType;

  /// Optional. File size in bytes. It can be bigger than 2^31 and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a signed 64-bit integer or double-precision float type are safe for storing this value.
  int? fileSize;

  /// Constructs a [Voice] object
  Voice({
    required this.fileId,
    required this.fileUniqueId,
    required this.duration,
    this.mimeType,
    this.fileSize,
  });

  /// Creates a [Voice] object from JSON object
  factory Voice.fromJson(Map<String, dynamic> json) {
    return Voice(
      fileId: json['file_id']!,
      fileUniqueId: json['file_unique_id']!,
      duration: json['duration']!,
      mimeType: json['mime_type'],
      fileSize: json['file_size'],
    );
  }

  /// Converts a [Voice] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'file_id': fileId,
      'file_unique_id': fileUniqueId,
      'duration': duration,
      'mime_type': mimeType,
      'file_size': fileSize,
    }..removeWhere((key, value) => value == null);
  }

  /// Duration of the video as [Duration] object.
  Duration get durationTime => Duration(seconds: duration);
}

/// This object defines the criteria used to request a suitable user. The identifier of the selected user will be shared with the bot when the corresponding button is pressed.
class KeyboardButtonRequestUser {
  /// Signed 32-bit identifier of the request
  int requestId;

  /// Optional. Pass True to request a bot, pass False to request a regular user. If not specified, no additional restrictions are applied.
  bool? userIsBot;

  /// Optional. Pass True to request a premium user, pass False to request a non-premium user. If not specified, no additional restrictions are applied.
  bool? userIsPremium;

  /// Creates a new [KeyboardButtonRequestUser] object
  KeyboardButtonRequestUser({
    required this.requestId,
    this.userIsBot,
    this.userIsPremium,
  });

  /// Creates a new [KeyboardButtonRequestUser] from a JSON object.
  factory KeyboardButtonRequestUser.fromJson(Map<String, dynamic> json) {
    return KeyboardButtonRequestUser(
      requestId: json['request_id']!,
      userIsBot: json['user_is_bot'],
      userIsPremium: json['user_is_premium'],
    );
  }

  /// Generates a JSON object from this object.
  Map<String, dynamic> toJson() {
    return {
      'request_id': requestId,
      'user_is_bot': userIsBot,
      'user_is_premium': userIsPremium,
    }..removeWhere((key, value) => value == null);
  }
}

/// Describes an inline message sent by a Web App on behalf of a user.
class SentWebAppMessage {
  /// Optional. Identifier of the sent inline message. Available only if there is an inline keyboard attached to the message.
  final String? inlineMessageId;

  /// Constructs a [SentWebAppMessage] object
  const SentWebAppMessage({
    this.inlineMessageId,
  });

  /// Creates a [SentWebAppMessage] object from JSON object
  Map<String, dynamic> toJson() {
    return {
      'inline_message_id': inlineMessageId,
    }..removeWhere((key, value) => value == null);
  }

  /// Creates a [SentWebAppMessage] object from JSON object
  factory SentWebAppMessage.fromJson(Map<String, dynamic> json) {
    return SentWebAppMessage(
      inlineMessageId: json['inline_message_id'] as String?,
    );
  }
}

/// Represents the content of a contact message to be sent as the result of an inline query.
class InputContactMessageContent extends InputMessageContent {
  /// Contact's phone number
  String phoneNumber;

  /// Contact's first name
  String firstName;

  /// Optional. Contact's last name
  String? lastName;

  /// Optional. Additional data about the contact in the form of a [vCard](https://en.wikipedia.org/wiki/VCard), 0-2048 bytes
  String? vcard;

  /// Constructs an [InputContactMessageContent] object
  InputContactMessageContent({
    required this.phoneNumber,
    required this.firstName,
    this.lastName,
    this.vcard,
  });

  /// Converts an [InputContactMessageContent] object to a JSON map
  @override
  Map<String, dynamic> toJson() {
    return {
      'phone_number': phoneNumber,
      'first_name': firstName,
      'last_name': lastName,
      'vcard': vcard,
    }..removeWhere((key, value) => value == null);
  }

  /// Constructs an [InputContactMessageContent] object from a JSON map
  factory InputContactMessageContent.fromJson(Map<String, dynamic> json) {
    return InputContactMessageContent(
      phoneNumber: json['phone_number'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String?,
      vcard: json['vcard'] as String?,
    );
  }
}

/// Represents a link to an MP3 audio file. By default, this audio file will be sent by the user. Alternatively, you can use input_message_content to send a message with the specified content instead of the audio.
///
/// Note: This will only work in Telegram versions released after 9 April, 2016. Older clients will ignore them.
class InlineQueryResultAudio extends InlineQueryResult {
  /// Type of the result, always [InlineQueryResultType.audio]
  @override
  InlineQueryResultType get type => InlineQueryResultType.audio;

  /// A valid URL for the audio file
  String audioUrl;

  /// Title
  String title;

  /// Optional. Caption, 0-1024 characters after entities parsing
  String? caption;

  /// Optional. Mode for parsing entities in the audio caption. See formatting options for more details.
  ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  List<MessageEntity>? captionEntities;

  /// Optional. Performer
  String? performer;

  /// Optional. Audio duration in seconds
  int? audioDuration;

  /// Optional. Inline keyboard attached to the message
  InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the audio
  InputMessageContent? inputMessageContent;

  /// Constructs an [InlineQueryResultAudio] object
  InlineQueryResultAudio({
    required this.audioUrl,
    required this.title,
    required super.id,
    this.caption,
    this.parseMode,
    this.captionEntities,
    this.performer,
    this.audioDuration,
    this.replyMarkup,
    this.inputMessageContent,
  });

  /// Converts an [InlineQueryResultAudio] object to a JSON map
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'audio_url': audioUrl,
      'title': title,
      'caption': caption,
      'parse_mode': parseMode?.value,
      'caption_entities': captionEntities?.map((e) => e.toJson()).toList(),
      'performer': performer,
      'audio_duration': audioDuration,
      'reply_markup': replyMarkup?.toJson(),
      'input_message_content': inputMessageContent?.toJson(),
      'id': id,
    }..removeWhere((key, value) => value == null);
  }

  /// Constructs an [InlineQueryResultAudio] object from a JSON map
  factory InlineQueryResultAudio.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultAudio(
      audioUrl: json['audio_url'] as String,
      title: json['title'] as String,
      id: json['id'] as String,
      caption: json['caption'] as String?,
      parseMode: json['parse_mode'] == null
          ? null
          : ParseMode.fromJson(json['parse_mode'] as String),
      captionEntities: (json['caption_entities'] as List<dynamic>?)
          ?.map((e) => MessageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      performer: json['performer'] as String?,
      audioDuration: json['audio_duration'] as int?,
      replyMarkup: json['reply_markup'] == null
          ? null
          : InlineKeyboardMarkup.fromJson(
              json['reply_markup'] as Map<String, dynamic>,
            ),
      inputMessageContent: json['input_message_content'] == null
          ? null
          : InputMessageContent.fromJson(
              json['input_message_content'] as Map<String, dynamic>,
            ),
    );
  }
}

/// Represents a link to an animated GIF file stored on the Telegram servers. By default, this animated GIF file will be sent by the user with an optional caption. Alternatively, you can use input_message_content to send a message with specified content instead of the animation.
class InlineQueryResultCachedGif extends InlineQueryResult {
  /// Type of the result, always [InlineQueryResultType.gif]
  @override
  InlineQueryResultType get type => InlineQueryResultType.gif;

  /// A valid file identifier for the GIF file
  String gifFileId;

  /// Optional. Title for the result
  String? title;

  /// Optional. Caption of the GIF file to be sent, 0-1024 characters after entities parsing
  String? caption;

  /// Optional. Mode for parsing entities in the caption. See formatting options for more details.
  ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  List<MessageEntity>? captionEntities;

  /// Optional. Inline keyboard attached to the message
  InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the GIF animation
  InputMessageContent? inputMessageContent;

  /// Constructs an [InlineQueryResultCachedGif] object
  InlineQueryResultCachedGif({
    required this.gifFileId,
    required super.id,
    this.title,
    this.caption,
    this.parseMode,
    this.captionEntities,
    this.replyMarkup,
    this.inputMessageContent,
  });

  /// Converts an [InlineQueryResultCachedGif] object to a JSON map
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'id': id,
      'gif_file_id': gifFileId,
      'title': title,
      'caption': caption,
      'parse_mode': parseMode?.value,
      'caption_entities': captionEntities?.map((e) => e.toJson()).toList(),
      'reply_markup': replyMarkup?.toJson(),
      'input_message_content': inputMessageContent?.toJson(),
    }..removeWhere((key, value) => value == null);
  }

  /// Constructs an [InlineQueryResultCachedGif] object from a JSON map
  factory InlineQueryResultCachedGif.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultCachedGif(
      gifFileId: json['gif_file_id'] as String,
      id: json['id'] as String,
      title: json['title'] as String?,
      caption: json['caption'] as String?,
      parseMode: json['parse_mode'] == null
          ? null
          : ParseMode.fromJson(json['parse_mode'] as String),
      captionEntities: (json['caption_entities'] as List<dynamic>?)
          ?.map((e) => MessageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      replyMarkup: json['reply_markup'] == null
          ? null
          : InlineKeyboardMarkup.fromJson(
              json['reply_markup'] as Map<String, dynamic>,
            ),
      inputMessageContent: json['input_message_content'] == null
          ? null
          : InputMessageContent.fromJson(
              json['input_message_content'] as Map<String, dynamic>,
            ),
    );
  }
}

/// This object represents one button of the reply keyboard. For simple text buttons String can be used instead of this object to specify text of the button. Optional fields web_app, request_contact, request_location, and request_poll are mutually exclusive.
class KeyboardButton {
  /// Text of the button. If none of the optional fields are used, it will be sent as a message when the button is pressed
  String text;

  /// Optional. If True, the user's phone number will be sent as a contact when the button is pressed. Available in private chats only
  ///
  /// Note: request_contact and request_location options will only work in Telegram versions released after 9 April, 2016. Older clients will display unsupported message.
  bool? requestContact;

  /// Optional. If True, the user's current location will be sent when the button is pressed. Available in private chats only.
  bool? requestLocation;

  /// Optional. If specified, the user will be asked to create a poll and send it to the bot when the button is pressed. Available in private chats only.
  ///
  /// Note: request_poll option will only work in Telegram versions released after 23 January, 2020. Older clients will display unsupported message.
  KeyboardButtonPollType? requestPoll;

  /// Optional. If specified, the described Web App will be launched when the button is pressed. The Web App will be able to send a “web_app_data” service message. Available in private chats only.
  ///
  /// Note: web_app option will only work in Telegram versions released after 16 April, 2022. Older clients will display unsupported message.
  WebAppInfo? webApp;

  /// Optional. If specified, pressing the button will open a list of suitable users. Tapping on any user will send their identifier to the bot in a “user_shared” service message. Available in private chats only.
  ///
  /// Since: Bot API 6.5
  KeyboardButtonRequestUser? requestUser;

  /// Optional. If specified, pressing the button will open a list of suitable chats. Tapping on a chat will send its identifier to the bot in a “chat_shared” service message. Available in private chats only.
  ///
  /// Since: Bot API 6.5
  KeyboardButtonRequestChat? requestChat;

  /// Creates a new [KeyboardButton] with the specified [text].
  ///
  /// [requestContact] - If True, the user's phone number will be sent as a contact when the button is pressed. Available in private chats only
  ///
  /// [requestLocation] - If True, the user's current location will be sent when the button is pressed. Available in private chats only.
  ///
  /// [requestPoll] - If specified, the user will be asked to create a poll and send it to the bot when the button is pressed. Available in private chats only.
  ///
  /// [webApp] - If specified, the described Web App will be launched when the button is pressed. The Web App will be able to send a “web_app_data” service message. Available in private chats only.
  ///
  /// [requestUser] - If specified, pressing the button will open a list of suitable users. Tapping on any user will send their identifier to the bot in a “user_shared” service message. Available in private chats only.
  ///
  /// [requestChat] - If specified, pressing the button will open a list of suitable chats. Tapping on a chat will send its identifier to the bot in a “chat_shared” service message. Available in private chats only.
  KeyboardButton({
    required this.text,
    this.requestContact,
    this.requestLocation,
    this.requestPoll,
    this.webApp,
    this.requestUser,
    this.requestChat,
  });

  /// Creates a new [KeyboardButton] from a JSON object.
  factory KeyboardButton.fromJson(Map<String, dynamic> json) {
    return KeyboardButton(
      text: json['text'],
      requestContact: json['request_contact'] ?? false,
      requestLocation: json['request_location'] ?? false,
      requestPoll: json['request_poll'] != null
          ? KeyboardButtonPollType.fromJson(json['request_poll'])
          : null,
      webApp:
          json['web_app'] != null ? WebAppInfo.fromJson(json['web_app']) : null,
      requestUser: json['request_user'] != null
          ? KeyboardButtonRequestUser.fromJson(json['request_user'])
          : null,
      requestChat: json['request_chat'] != null
          ? KeyboardButtonRequestChat.fromJson(json['request_chat'])
          : null,
    );
  }

  /// Generates a JSON object from this object.
  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'request_contact': requestContact,
      'request_location': requestLocation,
      'request_poll': requestPoll?.toJson(),
      'web_app': webApp?.toJson(),
      'request_user': requestUser?.toJson(),
      'request_chat': requestChat?.toJson(),
    }..removeWhere((key, value) => value == null);
  }
}

/// This object represents a general file (as opposed to photos, voice messages and audio files).
class Document {
  /// Identifier for this file, which can be used to download or reuse the file
  String fileId;

  /// Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
  String fileUniqueId;

  /// Optional. Thumbnail of the album cover to which the music file belongs
  PhotoSize? thumbnail;

  /// Optional. Original filename as defined by sender
  String? fileName;

  /// Optional. MIME type of the file as defined by sender
  String? mimeType;

  /// Optional. File size in bytes. It can be bigger than 2^31 and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a signed 64-bit integer or double-precision float type are safe for storing this value.
  int? fileSize;

  /// Creates a new [Document] object.
  Document({
    required this.fileId,
    required this.fileUniqueId,
    this.thumbnail,
    this.fileName,
    this.mimeType,
    this.fileSize,
  });

  /// Creates a new [Document] object from json.
  factory Document.fromJson(Map<String, dynamic> json) {
    return Document(
      fileId: json['file_id']!,
      fileUniqueId: json['file_unique_id']!,
      thumbnail: json['thumbnail'] != null
          ? PhotoSize.fromJson(json['thumbnail']!)
          : null,
      fileName: json['file_name'],
      mimeType: json['mime_type'],
      fileSize: json['file_size'],
    );
  }

  /// Converts a [Document] to a [Map] for JSON encoding.
  Map<String, dynamic> toJson() {
    return {
      'file_id': fileId,
      'file_unique_id': fileUniqueId,
      'thumbnail': thumbnail?.toJson(),
      'file_name': fileName,
      'mime_type': mimeType,
      'file_size': fileSize,
    }..removeWhere((key, value) => value == null);
  }
}

/// This object represents a Telegram user or bot.
class User {
  /// Unique identifier for this user or bot. This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a 64-bit integer or double-precision float type are safe for storing this identifier.
  int id;

  /// True, if this user is a bot
  bool isBot;

  /// User's or bot's first name
  String firstName;

  /// Optional. User's or bot's last name
  String? lastName;

  /// Optional. User's or bot's username
  String? username;

  /// Optional. IETF language tag of the user's language
  String? languageCode;

  /// Optional. True, if this user is a Telegram Premium user
  bool? isPremium;

  /// Optional. True, if this user added the bot to the attachment menu
  bool? addedToAttachmentMenu;

  /// Optional. True, if the bot can be invited to groups. Returned only in getMe.
  bool? canJoinGroups;

  /// Optional. True, if privacy mode is disabled for the bot. Returned only in getMe.
  bool? canReadAllGroupMessages;

  /// Optional. True, if the bot supports inline queries. Returned only in getMe.
  bool? supportsInlineQueries;

  /// Constructs a [User] object
  User({
    required this.id,
    required this.isBot,
    required this.firstName,
    this.lastName,
    this.username,
    this.languageCode,
    this.isPremium,
    this.addedToAttachmentMenu,
    this.canJoinGroups,
    this.canReadAllGroupMessages,
    this.supportsInlineQueries,
  });

  /// Creates a [User] object from JSON object
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      isBot: json['is_bot'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      username: json['username'],
      languageCode: json['language_code'],
      isPremium: json['is_premium'],
      addedToAttachmentMenu: json['added_to_attachment_menu'],
      canJoinGroups: json['can_join_groups'],
      canReadAllGroupMessages: json['can_read_all_group_messages'],
      supportsInlineQueries: json['supports_inline_queries'],
    );
  }

  /// Converts a [User] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'is_bot': isBot,
      'first_name': firstName,
      'last_name': lastName,
      'username': username,
      'language_code': languageCode,
      'is_premium': isPremium,
      'added_to_attachment_menu': addedToAttachmentMenu,
      'can_join_groups': canJoinGroups,
      'can_read_all_group_messages': canReadAllGroupMessages,
      'supports_inline_queries': supportsInlineQueries,
    }..removeWhere((key, value) => value == null);
  }
}

/// Represents a venue. By default, the venue will be sent by the user. Alternatively, you can use input_message_content to send a message with the specified content instead of the venue.
///
/// Note: This will only work in Telegram versions released after 9 April, 2016. Older clients will ignore them.
class InlineQueryResultVenue extends InlineQueryResult {
  /// Type of the result, always [InlineQueryResultType.venue]
  @override
  InlineQueryResultType get type => InlineQueryResultType.venue;

  /// Latitude of the venue location in degrees
  double latitude;

  /// Longitude of the venue location in degrees
  double longitude;

  /// Title of the venue
  String title;

  /// Address of the venue
  String address;

  /// Optional. Foursquare identifier of the venue if known
  String? foursquareId;

  /// Optional. Foursquare type of the venue, if known. (For example, “arts_entertainment/default”, “arts_entertainment/aquarium” or “food/icecream”.)
  String? foursquareType;

  /// Optional. Google Places identifier of the venue
  String? googlePlaceId;

  /// Optional. Google Places type of the venue. (See supported types.)
  String? googlePlaceType;

  /// Optional. Inline keyboard attached to the message
  InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the venue
  InputMessageContent? inputMessageContent;

  /// Optional. Url of the thumbnail for the result
  String? thumbnailUrl;

  /// Optional. Thumbnail width
  int? thumbnailWidth;

  /// Optional. Thumbnail height
  int? thumbnailHeight;

  /// Constructs an [InlineQueryResultVenue] object
  InlineQueryResultVenue({
    required this.latitude,
    required this.longitude,
    required this.title,
    required this.address,
    required super.id,
    this.foursquareId,
    this.foursquareType,
    this.googlePlaceId,
    this.googlePlaceType,
    this.replyMarkup,
    this.inputMessageContent,
    this.thumbnailUrl,
    this.thumbnailWidth,
    this.thumbnailHeight,
  });

  /// Converts an [InlineQueryResultVenue] object to a JSON map
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'latitude': latitude,
      'longitude': longitude,
      'title': title,
      'address': address,
      'foursquare_id': foursquareId,
      'foursquare_type': foursquareType,
      'google_place_id': googlePlaceId,
      'google_place_type': googlePlaceType,
      'reply_markup': replyMarkup?.toJson(),
      'input_message_content': inputMessageContent?.toJson(),
      'thumbnail_url': thumbnailUrl,
      'thumbnail_width': thumbnailWidth,
      'thumbnail_height': thumbnailHeight,
    }..removeWhere((key, value) => value == null);
  }

  /// Constructs an [InlineQueryResultVenue] object from a JSON map
  factory InlineQueryResultVenue.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultVenue(
      latitude: json['latitude'] as double,
      longitude: json['longitude'] as double,
      title: json['title'] as String,
      address: json['address'] as String,
      id: json['id'] as String,
      foursquareId: json['foursquare_id'] as String?,
      foursquareType: json['foursquare_type'] as String?,
      googlePlaceId: json['google_place_id'] as String?,
      googlePlaceType: json['google_place_type'] as String?,
      replyMarkup: json['reply_markup'] == null
          ? null
          : InlineKeyboardMarkup.fromJson(
              json['reply_markup'] as Map<String, dynamic>,
            ),
      inputMessageContent: json['input_message_content'] == null
          ? null
          : InputMessageContent.fromJson(
              json['input_message_content'] as Map<String, dynamic>,
            ),
      thumbnailUrl: json['thumbnail_url'] as String?,
      thumbnailWidth: json['thumbnail_width'] as int?,
      thumbnailHeight: json['thumbnail_height'] as int?,
    );
  }
}

/// Represents the scope of bot commands, covering all private chats.
class BotCommandScopeDefault implements BotCommandScope {
  /// Scope type, always be [BotCommandScopeType.defaultScope]
  @override
  BotCommandScopeType get type => BotCommandScopeType.defaultScope;

  /// Creates a new [BotCommandScopeDefault] object.
  const BotCommandScopeDefault();

  /// Creates a new [BotCommandScopeDefault] object from json.
  factory BotCommandScopeDefault.fromJson(Map<String, dynamic> json) {
    return BotCommandScopeDefault();
  }

  /// Converts a [BotCommandScopeDefault] to a [Map] for JSON encoding.
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.toJson(),
    };
  }
}

/// This object represents an animated emoji that displays a random value.
class Dice {
  /// Emoji on which the dice throw animation is based
  final DiceEmoji emoji;

  /// Value of the dice, 1-6 for “🎲”, “🎯” and “🎳” base emoji, 1-5 for “🏀” and “⚽” base emoji, 1-64 for “🎰” base emoji
  final int value;

  /// Creates a new [Dice] object.
  const Dice({
    required this.emoji,
    required this.value,
  });

  /// Creates a new [Dice] object from json.
  factory Dice.fromJson(Map<String, dynamic> json) {
    return Dice(
      emoji: DiceEmoji.fromJson(json['emoji']!),
      value: json['value']!,
    );
  }

  /// Converts a [Dice] object to json.
  Map<String, dynamic> toJson() {
    return {
      'emoji': emoji.emoji,
      'value': value,
    };
  }
}

/// Represents a location on a map. By default, the location will be sent by the user. Alternatively, you can use input_message_content to send a message with the specified content instead of the location.
class InlineQueryResultLocation extends InlineQueryResult {
  /// Type of the result, always [InlineQueryResultType.location]
  @override
  InlineQueryResultType get type => InlineQueryResultType.location;

  /// Location latitude in degrees
  double latitude;

  /// Location longitude in degrees
  double longitude;

  /// Location title
  String title;

  /// Optional. The radius of uncertainty for the location, measured in meters; 0-1500
  int? horizontalAccuracy;

  /// Optional. Period in seconds for which the location can be updated, should be between 60 and 86400.
  int? livePeriod;

  /// Optional. For live locations, a direction in which the user is moving, in degrees. Must be between 1 and 360 if specified.
  int? heading;

  /// Optional. For live locations, a maximum distance for proximity alerts about approaching another chat member, in meters. Must be between 1 and 100000 if specified.
  int? proximityAlertRadius;

  /// Optional. Inline keyboard attached to the message
  InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the location
  InputMessageContent? inputMessageContent;

  /// Optional. Url of the thumbnail for the result
  String? thumbnailUrl;

  /// Optional. Thumbnail width
  int? thumbnailWidth;

  /// Optional. Thumbnail height
  int? thumbnailHeight;

  /// Constructs an [InlineQueryResultLocation] object
  InlineQueryResultLocation({
    required this.latitude,
    required this.longitude,
    required this.title,
    required super.id,
    this.horizontalAccuracy,
    this.livePeriod,
    this.heading,
    this.proximityAlertRadius,
    this.replyMarkup,
    this.inputMessageContent,
    this.thumbnailUrl,
    this.thumbnailWidth,
    this.thumbnailHeight,
  });

  /// Converts an [InlineQueryResultLocation] object to a JSON map
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'latitude': latitude,
      'longitude': longitude,
      'title': title,
      'horizontal_accuracy': horizontalAccuracy,
      'live_period': livePeriod,
      'heading': heading,
      'proximity_alert_radius': proximityAlertRadius,
      'reply_markup': replyMarkup?.toJson(),
      'input_message_content': inputMessageContent?.toJson(),
      'thumbnail_url': thumbnailUrl,
      'thumbnail_width': thumbnailWidth,
      'thumbnail_height': thumbnailHeight,
    }..removeWhere((key, value) => value == null);
  }

  /// Constructs an [InlineQueryResultLocation] object from a JSON map
  factory InlineQueryResultLocation.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultLocation(
      latitude: json['latitude'] as double,
      longitude: json['longitude'] as double,
      title: json['title'] as String,
      id: json['id'] as String,
      horizontalAccuracy: json['horizontal_accuracy'] as int?,
      livePeriod: json['live_period'] as int?,
      heading: json['heading'] as int?,
      proximityAlertRadius: json['proximity_alert_radius'] as int?,
      replyMarkup: json['reply_markup'] == null
          ? null
          : InlineKeyboardMarkup.fromJson(
              json['reply_markup'] as Map<String, dynamic>,
            ),
      inputMessageContent: json['input_message_content'] == null
          ? null
          : InputMessageContent.fromJson(
              json['input_message_content'] as Map<String, dynamic>,
            ),
      thumbnailUrl: json['thumbnail_url'] as String?,
      thumbnailWidth: json['thumbnail_width'] as int?,
      thumbnailHeight: json['thumbnail_height'] as int?,
    );
  }
}

/// This object represents a service message about an edited forum topic.
class ForumTopicEdited {
  /// Optional. New name of the topic, if it was edited
  final String? name;

  /// Optional. New identifier of the custom emoji shown as the topic icon, if it was edited; an empty string if the icon was removed
  final String? iconCustomEmojiId;

  /// Creates a new [ForumTopicEdited] object.
  ForumTopicEdited({
    this.name,
    this.iconCustomEmojiId,
  });

  /// Converts a [ForumTopicEdited] object to json.
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'icon_custom_emoji_id': iconCustomEmojiId,
    }..removeWhere((key, value) => value == null);
  }

  /// Creates a new [ForumTopicEdited] object from json.
  factory ForumTopicEdited.fromJson(Map<String, dynamic> json) {
    return ForumTopicEdited(
      name: json['name'],
      iconCustomEmojiId: json['icon_custom_emoji_id'],
    );
  }
}

/// This object represents a message about a forwarded story in the chat. Currently holds no information.
class Story {
  /// Constructs an instance of Story.
  const Story();

  /// Constructs an instance of Story from a JSON map.
  factory Story.fromJson(Map<String, dynamic> json) {
    return Story();
  }

  /// Returns JSON-encodeable map of this object.
  Map<String, dynamic> toJson() => <String, dynamic>{};
}

/// Represents the content of a venue message to be sent as the result of an inline query.
class InputVenueMessageContent extends InputMessageContent {
  /// Latitude of the venue in degrees
  double latitude;

  /// Longitude of the venue in degrees
  double longitude;

  /// Name of the venue
  String title;

  /// Address of the venue
  String address;

  /// Optional. Foursquare identifier of the venue, if known
  String? foursquareId;

  /// Optional. Foursquare type of the venue, if known. (For example, “arts_entertainment/default”, “arts_entertainment/aquarium” or “food/icecream”.)
  String? foursquareType;

  /// Optional. Google Places identifier of the venue
  String? googlePlaceId;

  /// Optional. Google Places type of the venue. ([See supported types](https://developers.google.com/places/web-service/supported_types))
  String? googlePlaceType;

  /// Constructs an [InputVenueMessageContent] object
  InputVenueMessageContent({
    required this.latitude,
    required this.longitude,
    required this.title,
    required this.address,
    this.foursquareId,
    this.foursquareType,
    this.googlePlaceId,
    this.googlePlaceType,
  });

  /// Converts an [InputVenueMessageContent] object to a JSON map
  @override
  Map<String, dynamic> toJson() {
    return {
      'latitude': latitude,
      'longitude': longitude,
      'title': title,
      'address': address,
      'foursquare_id': foursquareId,
      'foursquare_type': foursquareType,
      'google_place_id': googlePlaceId,
      'google_place_type': googlePlaceType,
    }..removeWhere((key, value) => value == null);
  }

  /// Converts a JSON map to an [InputVenueMessageContent] object
  factory InputVenueMessageContent.fromJson(Map<String, dynamic> json) {
    return InputVenueMessageContent(
      latitude: json['latitude'] as double,
      longitude: json['longitude'] as double,
      title: json['title'] as String,
      address: json['address'] as String,
      foursquareId: json['foursquare_id'] as String?,
      foursquareType: json['foursquare_type'] as String?,
      googlePlaceId: json['google_place_id'] as String?,
      googlePlaceType: json['google_place_type'] as String?,
    );
  }
}

/// Represents a link to a video file stored on the Telegram servers. By default, this video file will be sent by the user with an optional caption. Alternatively, you can use input_message_content to send a message with the specified content instead of the video.
class InlineQueryResultCachedVideo extends InlineQueryResult {
  /// Type of the result, always [InlineQueryResultType.video]
  @override
  InlineQueryResultType get type => InlineQueryResultType.video;

  /// A valid file identifier for the video file
  String videoFileId;

  /// Title for the result
  String title;

  /// Optional. Short description of the result
  String? description;

  /// Optional. Caption of the video to be sent, 0-1024 characters after entities parsing
  String? caption;

  /// Optional. Mode for parsing entities in the video caption. See formatting options for more details.
  ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  List<MessageEntity>? captionEntities;

  /// Optional. Inline keyboard attached to the message
  InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the video
  InputMessageContent? inputMessageContent;

  /// Constructs an [InlineQueryResultCachedVideo] object
  InlineQueryResultCachedVideo({
    required this.videoFileId,
    required this.title,
    required super.id,
    this.description,
    this.caption,
    this.parseMode,
    this.captionEntities,
    this.replyMarkup,
    this.inputMessageContent,
  });

  /// Converts an [InlineQueryResultCachedVideo] object to a JSON map
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'video_file_id': videoFileId,
      'title': title,
      'description': description,
      'caption': caption,
      'parse_mode': parseMode?.value,
      'caption_entities': captionEntities?.map((e) => e.toJson()).toList(),
      'reply_markup': replyMarkup?.toJson(),
      'input_message_content': inputMessageContent?.toJson(),
    }..removeWhere((key, value) => value == null);
  }

  /// Constructs an [InlineQueryResultCachedVideo] object from a JSON map
  factory InlineQueryResultCachedVideo.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultCachedVideo(
      videoFileId: json['video_file_id'] as String,
      title: json['title'] as String,
      id: json['id'] as String,
      description: json['description'] as String?,
      caption: json['caption'] as String?,
      parseMode: json['parse_mode'] == null
          ? null
          : ParseMode.fromJson(json['parse_mode'] as String),
      captionEntities: (json['caption_entities'] as List<dynamic>?)
          ?.map((e) => MessageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      replyMarkup: json['reply_markup'] == null
          ? null
          : InlineKeyboardMarkup.fromJson(
              json['reply_markup'] as Map<String, dynamic>,
            ),
      inputMessageContent: json['input_message_content'] == null
          ? null
          : InputMessageContent.fromJson(
              json['input_message_content'] as Map<String, dynamic>,
            ),
    );
  }
}

/// This object represents the bot's description.
class BotDescription {
  /// Bot's description.
  final String description;

  /// Creates the Bot Description object.
  BotDescription({
    required this.description,
  });

  /// Creates the Bot Description object from a JSON object.
  factory BotDescription.fromJson(Map<String, dynamic> json) {
    return BotDescription(
      description: json['description'] as String,
    );
  }

  /// Creates a JSON object from the Bot Description object.
  Map<String, dynamic> toJson() {
    return {
      'description': description,
    };
  }
}

/// Represents a menu button, which opens the bot's list of commands.
class MenuButtonCommands extends MenuButton {
  /// Type of the button, always [MenuButtonType.commands]
  @override
  MenuButtonType get type => MenuButtonType.commands;

  /// Constructs a [MenuButtonCommands] object
  MenuButtonCommands();

  /// Creates a [MenuButtonCommands] object from JSON object
  MenuButtonCommands.fromJson(Map<String, dynamic> json);

  /// Converts a [MenuButtonCommands] object to JSON object
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
    };
  }
}

/// Represents a link to a voice recording in an .OGG container encoded with OPUS. By default, this voice recording will be sent by the user. Alternatively, you can use input_message_content to send a message with the specified content instead of the the voice message.
///
/// Note: This will only work in Telegram versions released after 9 April, 2016. Older clients will ignore them.
class InlineQueryResultVoice extends InlineQueryResult {
  /// Type of the result, always [InlineQueryResultType.voice]
  @override
  InlineQueryResultType get type => InlineQueryResultType.voice;

  /// A valid URL for the voice recording
  String voiceUrl;

  /// Recording title
  String title;

  /// Optional. Caption, 0-1024 characters after entities parsing
  String? caption;

  /// Optional. Mode for parsing entities in the voice message caption. See formatting options for more details.
  ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  List<MessageEntity>? captionEntities;

  /// Optional. Recording duration in seconds
  int? voiceDuration;

  /// Optional. Inline keyboard attached to the message
  InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the voice recording
  InputMessageContent? inputMessageContent;

  /// Constructs an [InlineQueryResultVoice] object
  InlineQueryResultVoice({
    required this.voiceUrl,
    required this.title,
    required super.id,
    this.caption,
    this.parseMode,
    this.captionEntities,
    this.voiceDuration,
    this.replyMarkup,
    this.inputMessageContent,
  });

  /// Converts an [InlineQueryResultVoice] object to a JSON map
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'voice_url': voiceUrl,
      'title': title,
      'caption': caption,
      'parse_mode': parseMode?.value,
      'caption_entities': captionEntities?.map((e) => e.toJson()).toList(),
      'voice_duration': voiceDuration,
      'reply_markup': replyMarkup?.toJson(),
      'input_message_content': inputMessageContent?.toJson(),
    }..removeWhere((key, value) => value == null);
  }
}

/// This object represents an incoming inline query. When the user sends an empty query, your bot could return some default or trending results.
class InlineQuery {
  /// Unique identifier for this query
  String id;

  /// Sender
  User from;

  /// Text of the query (up to 256 characters)
  String query;

  /// Offset of the results to be returned, can be controlled by the bot
  String offset;

  /// Optional. Type of the chat from which the inline query was sent. Can be either “sender” for a private chat with the inline query sender, “private”, “group”, “supergroup”, or “channel”. The chat type should be always known for requests sent from official clients and most third-party clients, unless the request was sent from a secret chat
  ChatType? chatType;

  /// Optional. Sender location, only for bots that request user location
  Location? location;

  /// Constructs an [InlineQuery] object
  InlineQuery({
    required this.id,
    required this.from,
    required this.query,
    required this.offset,
    this.chatType,
    this.location,
  });

  /// Creates an [InlineQuery] object from JSON object
  factory InlineQuery.fromJson(Map<String, dynamic> json) {
    return InlineQuery(
      id: json['id'] as String,
      from: User.fromJson(json['from'] as Map<String, dynamic>),
      query: json['query'] as String,
      offset: json['offset'] as String,
      chatType: json['chat_type'] == null
          ? null
          : ChatType.values[json['chat_type'] as int],
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
    );
  }

  /// Converts an [InlineQuery] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'from': from.toJson(),
      'query': query,
      'offset': offset,
      'chat_type': chatType?.index,
      'location': location?.toJson(),
    }..removeWhere((key, value) => value == null);
  }
}

/// This object represents a video file.
class Video {
  /// Identifier for this file, which can be used to download or reuse the file
  String fileId;

  /// Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
  String fileUniqueId;

  /// Video width as defined by sender
  int width;

  /// Video height as defined by sender
  int height;

  /// Duration of the video in seconds as defined by sender
  ///
  /// A handy [Duration] getter is available as [durationTime]
  int duration;

  /// Optional. Animation thumbnail as defined by sender
  PhotoSize? thumbnail;

  /// Optional. Original animation filename as defined by sender
  String? fileName;

  /// Optional. MIME type of the file as defined by sender
  String? mimeType;

  /// Optional. File size in bytes. It can be bigger than 2^31 and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a signed 64-bit integer or double-precision float type are safe for storing this value.
  int? fileSize;

  /// Constructs a [Video] object
  Video({
    required this.fileId,
    required this.fileUniqueId,
    required this.width,
    required this.height,
    required this.duration,
    this.thumbnail,
    this.fileName,
    this.mimeType,
    this.fileSize,
  });

  /// Creates a [Video] object from JSON object
  factory Video.fromJson(Map<String, dynamic> json) {
    return Video(
      fileId: json['file_id']!,
      fileUniqueId: json['file_unique_id']!,
      width: json['width']!,
      height: json['height']!,
      duration: json['duration']!,
      thumbnail: json['thumbnail'] != null
          ? PhotoSize.fromJson(json['thumbnail']!)
          : null,
      fileName: json['file_name'],
      mimeType: json['mime_type'],
      fileSize: json['file_size'],
    );
  }

  /// Converts a [Video] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'file_id': fileId,
      'file_unique_id': fileUniqueId,
      'width': width,
      'height': height,
      'duration': duration,
      'thumbnail': thumbnail?.toJson(),
      'file_name': fileName,
      'mime_type': mimeType,
      'file_size': fileSize,
    }..removeWhere((key, value) => value == null);
  }

  /// Duration of the video as [Duration] object.
  Duration get durationTime => Duration(seconds: duration);
}

/// This object represents a service message about a change in auto-delete timer settings.
class MessageAutoDeleteTimerChanged {
  /// New auto-delete time for messages in the chat; in seconds
  ///
  /// Note: you can also use the getter [timeInDuration] to get the time in [Duration] object
  int messageAutoDeleteTime;

  /// Constructs a [MessageAutoDeleteTimerChanged] object
  MessageAutoDeleteTimerChanged({
    required this.messageAutoDeleteTime,
  });

  /// Creates a [MessageAutoDeleteTimerChanged] object from JSON object
  factory MessageAutoDeleteTimerChanged.fromJson(Map<String, dynamic> json) {
    return MessageAutoDeleteTimerChanged(
      messageAutoDeleteTime: json['message_auto_delete_time']!,
    );
  }

  /// Converts a [MessageAutoDeleteTimerChanged] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'message_auto_delete_time': messageAutoDeleteTime,
    };
  }

  /// Returns the time in [Duration] object
  Duration get timeInDuration => Duration(seconds: messageAutoDeleteTime);
}

/// This object represents information about an order.
class OrderInfo {
  /// User name
  String name;

  /// User's phone number
  String phoneNumber;

  /// User email
  String email;

  /// User shipping address
  ShippingAddress shippingAddress;

  /// Creates a new [OrderInfo] object.
  OrderInfo({
    required this.name,
    required this.phoneNumber,
    required this.email,
    required this.shippingAddress,
  });

  /// Converts a [OrderInfo] object to a JSON object
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'phone_number': phoneNumber,
      'email': email,
      'shipping_address': shippingAddress.toJson(),
    }..removeWhere((key, value) => value == null);
  }

  /// Creates a [OrderInfo] object from a JSON object
  factory OrderInfo.fromJson(Map<String, dynamic> json) {
    return OrderInfo(
      name: json['name']!,
      phoneNumber: json['phone_number']!,
      email: json['email']!,
      shippingAddress: ShippingAddress.fromJson(json['shipping_address']!),
    );
  }
}

/// This object represents an incoming callback query from a callback button in an inline keyboard. If the button that originated the query was attached to a message sent by the bot, the field message will be present. If the button was attached to a message sent via the bot (in inline mode), the field inline_message_id will be present. Exactly one of the fields data or game_short_name will be present.
///
/// NOTE: After the user presses a callback button, Telegram clients will display a progress bar until you call [answerCallbackQuery](https://core.telegram.org/bots/api#answercallbackquery). It is, therefore, necessary to react by calling [answerCallbackQuery](https://core.telegram.org/bots/api#answercallbackquery) even if no notification to the user is needed (e.g., without specifying any of the optional parameters).
class CallbackQuery {
  /// Unique identifier for this query
  String id;

  /// Sender
  User user;

  /// Optional. Message with the callback button that originated the query. Note that message content and message date will not be available if the message is too old
  Message? message;

  /// Optional. Identifier of the message sent via the bot in inline mode, that originated the query.
  String? inlineMessageId;

  /// Global identifier, uniquely corresponding to the chat to which the message with the callback button was sent. Useful for high scores in games.
  String chatInstance;

  /// Optional. Data associated with the callback button. Be aware that the message originated the query can contain no callback buttons with this data.
  String? data;

  /// Optional. Short name of a Game to be returned, serves as the unique identifier for the game
  String? gameShortName;

  /// Creates a new CallbackQuery object.
  CallbackQuery({
    required this.id,
    required this.user,
    this.message,
    this.inlineMessageId,
    required this.chatInstance,
    this.data,
    this.gameShortName,
  });

  /// Creates a new CallbackQuery object from a JSON [Map].
  factory CallbackQuery.fromJson(Map<String, dynamic> json) {
    return CallbackQuery(
      id: json['id'],
      user: User.fromJson(json['from']),
      message:
          json['message'] == null ? null : Message.fromJson(json['message']),
      inlineMessageId: json['inline_message_id'],
      chatInstance: json['chat_instance'],
      data: json['data'],
      gameShortName: json['game_short_name'],
    );
  }

  /// Converts a CallbackQuery object to JSON.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'from': user.toJson(),
      'message': message?.toJson(),
      'inline_message_id': inlineMessageId,
      'chat_instance': chatInstance,
      'data': data,
      'game_short_name': gameShortName,
    }..removeWhere((key, value) => value == null);
  }
}

/// Describes documents or other Telegram Passport elements shared with the bot by the user.
class EncryptedPassportElement {
  /// Type of Telegram Passport element
  PassportType type;

  /// Optional. Base64-encoded encrypted Telegram Passport element data provided by the user, available for “personal_details”, “passport”, “driver_license”, “identity_card”, “internal_passport” and “address” types. Can be decrypted and verified using the accompanying EncryptedCredentials.
  String? data;

  /// Optional. User's verified phone number, available only for “phone_number” type
  String? phoneNumber;

  /// Optional. User's verified email address, available only for “email” type
  String? email;

  /// Optional. Array of encrypted files with documents provided by the user, available for “utility_bill”, “bank_statement”, “rental_agreement”, “passport_registration” and “temporary_registration” types. Files can be decrypted and verified using the accompanying EncryptedCredentials.
  List<PassportFile>? files;

  /// Optional. Encrypted file with the front side of the document, provided by the user. Available for “passport”, “driver_license”, “identity_card” and “internal_passport”. The file can be decrypted and verified using the accompanying EncryptedCredentials.
  PassportFile? frontSide;

  /// Optional. Encrypted file with the reverse side of the document, provided by the user. Available for “driver_license” and “identity_card”. The file can be decrypted and verified using the accompanying EncryptedCredentials.
  PassportFile? reverseSide;

  /// Optional. Encrypted file with the selfie of the user holding a document, provided by the user; available for “passport”, “driver_license”, “identity_card” and “internal_passport”. The file can be decrypted and verified using the accompanying EncryptedCredentials.
  PassportFile? selfie;

  /// Optional. Array of encrypted files with translated versions of documents provided by the user. Available if requested for “passport”, “driver_license”, “identity_card”, “internal_passport”, “utility_bill”, “bank_statement”, “rental_agreement”, “passport_registration” and “temporary_registration” types. Files can be decrypted and verified using the accompanying EncryptedCredentials.
  List<PassportFile>? translation;

  /// Base64-encoded element hash for using in PassportElementErrorUnspecified
  String hash;

  /// Creates a new [EncryptedPassportElement] object.
  EncryptedPassportElement({
    required this.type,
    this.data,
    this.phoneNumber,
    this.email,
    this.files,
    this.frontSide,
    this.reverseSide,
    this.selfie,
    this.translation,
    required this.hash,
  });

  /// Creates a new [EncryptedPassportElement] object from json.
  Map<String, dynamic> toJson() {
    return {
      'type': type.toJson(),
      'data': data,
      'phone_number': phoneNumber,
      'email': email,
      'files': files?.map((e) => e.toJson()).toList(),
      'front_side': frontSide?.toJson(),
      'reverse_side': reverseSide?.toJson(),
      'selfie': selfie?.toJson(),
      'translation': translation?.map((e) => e.toJson()).toList(),
      'hash': hash,
    }..removeWhere((key, value) => value == null);
  }

  /// Creates a new [EncryptedPassportElement] object from json.
  factory EncryptedPassportElement.fromJson(Map<String, dynamic> json) {
    return EncryptedPassportElement(
      type: PassportType.fromJson(json['type']!),
      data: json['data'],
      phoneNumber: json['phone_number'],
      email: json['email'],
      files: (json['files'] as List<dynamic>?)
          ?.map((e) => PassportFile.fromJson(e))
          .toList(),
      frontSide: json['front_side'] != null
          ? PassportFile.fromJson(json['front_side']!)
          : null,
      reverseSide: json['reverse_side'] != null
          ? PassportFile.fromJson(json['reverse_side']!)
          : null,
      selfie: json['selfie'] != null
          ? PassportFile.fromJson(json['selfie']!)
          : null,
      translation: (json['translation'] as List<dynamic>?)
          ?.map((e) => PassportFile.fromJson(e))
          .toList(),
      hash: json['hash']!,
    );
  }
}

/// Represents a link to an animated GIF file. By default, this animated GIF file will be sent by the user with optional caption. Alternatively, you can use input_message_content to send a message with the specified content instead of the animation.
class InlineQueryResultGif extends InlineQueryResult {
  /// Type of the result, always [InlineQueryResultType.gif]
  @override
  InlineQueryResultType get type => InlineQueryResultType.gif;

  /// A valid URL for the GIF file. File size must not exceed 1MB
  String gifUrl;

  /// Optional. Width of the GIF
  int? gifWidth;

  /// Optional. Height of the GIF
  int? gifHeight;

  /// Optional. Duration of the GIF in seconds
  int? gifDuration;

  /// URL of the static (JPEG or GIF) or animated (MPEG4) thumbnail for the result
  String thumbnailUrl;

  /// Optional. MIME type of the thumbnail, must be one of “image/jpeg”, “image/gif”, or “video/mp4”. Defaults to “image/jpeg”
  String? thumbnailMimeType;

  /// Optional. Title for the result
  String? title;

  /// Optional. Caption of the GIF file to be sent, 0-1024 characters after entities parsing
  String? caption;

  /// Optional. Mode for parsing entities in the caption. See formatting options for more details.
  ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  List<MessageEntity>? captionEntities;

  /// Optional. Inline keyboard attached to the message
  InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the GIF animation
  InputMessageContent? inputMessageContent;

  /// Constructs an [InlineQueryResultGif] object
  InlineQueryResultGif({
    required this.gifUrl,
    required this.thumbnailUrl,
    required super.id,
    this.gifWidth,
    this.gifHeight,
    this.gifDuration,
    this.thumbnailMimeType,
    this.title,
    this.caption,
    this.parseMode,
    this.captionEntities,
    this.replyMarkup,
    this.inputMessageContent,
  });

  /// Converts an [InlineQueryResultGif] object to a JSON map
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'id': id,
      'gif_url': gifUrl,
      'gif_width': gifWidth,
      'gif_height': gifHeight,
      'gif_duration': gifDuration,
      'thumbnail_url': thumbnailUrl,
      'thumbnail_mime_type': thumbnailMimeType,
      'title': title,
      'caption': caption,
      'parse_mode': parseMode,
      'caption_entities': captionEntities,
      'reply_markup': replyMarkup,
      'input_message_content': inputMessageContent,
    }..removeWhere((key, value) => value == null);
  }

  /// Constructs an [InlineQueryResultGif] object from a JSON map
  factory InlineQueryResultGif.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultGif(
      gifUrl: json['gif_url'],
      thumbnailUrl: json['thumbnail_url'],
      id: json['id'],
      gifWidth: json['gif_width'],
      gifHeight: json['gif_height'],
      gifDuration: json['gif_duration'],
      thumbnailMimeType: json['thumbnail_mime_type'],
      title: json['title'],
      caption: json['caption'],
      parseMode: json['parse_mode'] != null
          ? ParseMode.fromJson(json['parse_mode'])
          : null,
      captionEntities: (json['caption_entities'] as List<dynamic>?)
          ?.map((e) => MessageEntity.fromJson(e))
          .toList(),
      replyMarkup: json['reply_markup'] != null
          ? InlineKeyboardMarkup.fromJson(json['reply_markup'])
          : null,
      inputMessageContent: json['input_message_content'] != null
          ? InputMessageContent.fromJson(json['input_message_content'])
          : null,
    );
  }
}

/// Represents the scope of bot commands, covering all administrators of a specific group or supergroup chat.
class BotCommandScopeChatAdministrators implements BotCommandScope {
  /// Scope type, always be [BotCommandScopeType.chatAdministrators]
  @override
  BotCommandScopeType get type => BotCommandScopeType.chatAdministrators;

  /// Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
  ID chatId;

  /// Creates a new [BotCommandScopeChatAdministrators] object.
  BotCommandScopeChatAdministrators({
    required this.chatId,
  });

  /// Creates a new [BotCommandScopeChatAdministrators] object from json.
  factory BotCommandScopeChatAdministrators.fromJson(
    Map<String, dynamic> json,
  ) {
    return BotCommandScopeChatAdministrators(
      chatId: ID.create(json['chat_id']),
    );
  }

  /// Converts a [BotCommandScopeChatAdministrators] to a [Map] for JSON encoding.
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.toJson(),
      'chat_id': chatId,
    }..removeWhere((key, value) => value == null);
  }
}

/// Represents a chat member that owns the chat and has all administrator privileges.
class ChatMemberOwner implements ChatMember {
  /// The member's status in the chat, always “creator”
  @override
  ChatMemberStatus status = ChatMemberStatus.creator;

  /// Information about the user
  @override
  User user;

  /// True, if the user's presence in the chat is hidden
  bool isAnonymous;

  /// Custom title for this user
  String? customTitle;

  /// Creates a new [ChatMemberOwner] object.
  ChatMemberOwner({
    required this.user,
    required this.isAnonymous,
    this.customTitle,
  });

  /// Converts a [ChatMemberOwner] to a [Map] for JSON encoding.
  @override
  Map<String, dynamic> toJson() {
    return {
      'status': status.value,
      'user': user.toJson(),
      'is_anonymous': isAnonymous,
      'custom_title': customTitle,
    }..removeWhere((key, value) => value == null);
  }

  /// Creates a new [ChatMemberOwner] object from json.
  factory ChatMemberOwner.fromJson(Map<String, dynamic> json) {
    return ChatMemberOwner(
      user: User.fromJson(json['user']),
      isAnonymous: json['is_anonymous'],
      customTitle: json['custom_title'],
    );
  }
}

/// ## Payments
///
/// Your bot can accept payments from Telegram users. Please see the introduction to payments for more details on the process and how to set up payments for your bot. Please note that users will need Telegram v.4.0 or higher to use payments (released on May 18, 2017).

/// This object contains information about the chat whose identifier was shared with the bot using a [KeyboardButtonRequestChat] button.
class ChatShared {
  /// Identifier of the request
  final int requestId;

  /// Identifier of the shared chat. This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a 64-bit integer or double-precision float type are safe for storing this identifier. The bot may not have access to the chat and could be unable to use this identifier, unless the chat is already known to the bot by some other means.
  final int chatId;

  /// Creates a new [ChatShared] object.
  const ChatShared({
    required this.requestId,
    required this.chatId,
  });

  /// Creates a new [ChatShared] object from json.
  factory ChatShared.fromJson(Map<String, dynamic> json) {
    return ChatShared(
      requestId: json['request_id']!,
      chatId: json['chat_id']!,
    );
  }

  /// Converts a [ChatShared] to a [Map] for JSON encoding.
  Map<String, dynamic> toJson() {
    return {
      'request_id': requestId,
      'chat_id': chatId,
    };
  }
}

/// Represents an issue with the front side of a document. The error is considered resolved when the file with the front side of the document changes.
class PassportElementErrorFrontSide extends PassportElementError {
  /// Error message
  final String message;

  /// Base64-encoded hash of the file with the front side of the document
  final String fileHash;

  /// Constructs a [PassportElementErrorFrontSide] object
  const PassportElementErrorFrontSide({
    required super.source,
    required super.type,
    required this.message,
    required this.fileHash,
  });

  /// Converts a [PassportElementErrorFrontSide] object to JSON object
  @override
  Map<String, dynamic> toJson() {
    return {
      'source': source,
      'type': type,
      'message': message,
      'file_hash': fileHash,
    }..removeWhere((key, value) => value == null);
  }

  /// Creates a [PassportElementErrorFrontSide] object from JSON object
  factory PassportElementErrorFrontSide.fromJson(Map<String, dynamic> json) {
    return PassportElementErrorFrontSide(
      source: json['source']!,
      type: PassportType.fromJson(json['type']!),
      message: json['message']!,
      fileHash: json['file_hash']!,
    );
  }
}

/// Represents a chat member that isn't currently a member of the chat, but may join it themselves.
class ChatMemberLeft implements ChatMember {
  /// The member's status in the chat, always “left”
  @override
  final ChatMemberStatus status = ChatMemberStatus.left;

  /// Information about the user
  @override
  final User user;

  /// Creates a new [ChatMemberLeft] object.
  const ChatMemberLeft({
    required this.user,
  });

  /// Creates a new [ChatMemberLeft] object from json.
  factory ChatMemberLeft.fromJson(Map<String, dynamic> json) {
    return ChatMemberLeft(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );
  }

  /// Converts a [ChatMemberLeft] to a [Map] for JSON encoding.
  @override
  Map<String, dynamic> toJson() {
    return {
      'user': user.toJson(),
      'status': status.value,
    };
  }
}

/// Represents a link to a video animation (H.264/MPEG-4 AVC video without sound) stored on the Telegram servers. By default, this animated MPEG-4 file will be sent by the user with an optional caption. Alternatively, you can use input_message_content to send a message with the specified content instead of the animation.
class InlineQueryResultCachedMpeg4Gif extends InlineQueryResult {
  /// Type of the result, always [InlineQueryResultType.mpeg4Gif]
  @override
  InlineQueryResultType get type => InlineQueryResultType.mpeg4Gif;

  /// A valid file identifier for the MPEG4 file
  String mpeg4FileId;

  /// Optional. Title for the result
  String? title;

  /// Optional. Caption of the MPEG-4 file to be sent, 0-1024 characters after entities parsing
  String? caption;

  /// Optional. Mode for parsing entities in the caption. See formatting options for more details.
  ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  List<MessageEntity>? captionEntities;

  /// Optional. Inline keyboard attached to the message
  InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the video animation
  InputMessageContent? inputMessageContent;

  /// Constructs an [InlineQueryResultCachedMpeg4Gif] object
  InlineQueryResultCachedMpeg4Gif({
    required this.mpeg4FileId,
    required super.id,
    this.title,
    this.caption,
    this.parseMode,
    this.captionEntities,
    this.replyMarkup,
    this.inputMessageContent,
  });

  /// Converts an [InlineQueryResultCachedMpeg4Gif] object to a JSON map
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'mpeg4_file_id': mpeg4FileId,
      'title': title,
      'caption': caption,
      'parse_mode': parseMode?.value,
      'caption_entities': captionEntities?.map((e) => e.toJson()).toList(),
      'reply_markup': replyMarkup?.toJson(),
      'input_message_content': inputMessageContent?.toJson(),
    }..removeWhere((key, value) => value == null);
  }

  /// Constructs an [InlineQueryResultCachedMpeg4Gif] object from a JSON map
  factory InlineQueryResultCachedMpeg4Gif.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultCachedMpeg4Gif(
      mpeg4FileId: json['mpeg4_file_id'] as String,
      id: json['id'] as String,
      title: json['title'] as String?,
      caption: json['caption'] as String?,
      parseMode: json['parse_mode'] == null
          ? null
          : ParseMode.fromJson(json['parse_mode'] as String),
      captionEntities: (json['caption_entities'] as List<dynamic>?)
          ?.map((e) => MessageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      replyMarkup: json['reply_markup'] == null
          ? null
          : InlineKeyboardMarkup.fromJson(
              json['reply_markup'] as Map<String, dynamic>,
            ),
      inputMessageContent: json['input_message_content'] == null
          ? null
          : InputMessageContent.fromJson(
              json['input_message_content'] as Map<String, dynamic>,
            ),
    );
  }
}

/// Represents a link to a photo. By default, this photo will be sent by the user with optional caption. Alternatively, you can use input_message_content to send a message with the specified content instead of the photo.
class InlineQueryResultPhoto extends InlineQueryResult {
  /// Type of the result, always [InlineQueryResultType.photo]
  @override
  InlineQueryResultType get type => InlineQueryResultType.photo;

  /// A valid URL of the photo. Photo must be in JPEG format. Photo size must not exceed 5MB
  String photoUrl;

  /// URL of the thumbnail for the photo
  String thumbnailUrl;

  /// Optional. Width of the photo
  int? photoWidth;

  /// Optional. Height of the photo
  int? photoHeight;

  /// Optional. Title for the result
  String? title;

  /// Optional. Short description of the result
  String? description;

  /// Optional. Caption of the photo to be sent, 0-1024 characters after entities parsing
  String? caption;

  /// Optional. Mode for parsing entities in the photo caption. See formatting options for more details.
  ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  List<MessageEntity>? captionEntities;

  /// Optional. Inline keyboard attached to the message
  InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the photo
  InputMessageContent? inputMessageContent;

  /// Constructs an [InlineQueryResultPhoto] object
  InlineQueryResultPhoto({
    required this.photoUrl,
    required this.thumbnailUrl,
    required super.id,
    this.photoWidth,
    this.photoHeight,
    this.title,
    this.description,
    this.caption,
    this.parseMode,
    this.captionEntities,
    this.replyMarkup,
    this.inputMessageContent,
  });

  /// Converts an [InlineQueryResultPhoto] object to a JSON object
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'photo_url': photoUrl,
      'thumbnail_url': thumbnailUrl,
      'photo_width': photoWidth,
      'photo_height': photoHeight,
      'title': title,
      'description': description,
      'caption': caption,
      'parse_mode': parseMode?.value,
      'caption_entities': captionEntities?.map((e) => e.toJson()).toList(),
      'reply_markup': replyMarkup?.toJson(),
      'input_message_content': inputMessageContent?.toJson(),
    }..removeWhere((key, value) => value == null);
  }

  /// Constructs an [InlineQueryResultPhoto] object from a JSON object
  factory InlineQueryResultPhoto.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultPhoto(
      photoUrl: json['photo_url'] as String,
      thumbnailUrl: json['thumbnail_url'] as String,
      id: json['id'] as String,
      photoWidth: json['photo_width'] as int?,
      photoHeight: json['photo_height'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      caption: json['caption'] as String?,
      parseMode: json['parse_mode'] == null
          ? null
          : ParseMode.fromJson(json['parse_mode'] as String),
      captionEntities: (json['caption_entities'] as List<dynamic>?)
          ?.map((e) => MessageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      replyMarkup: json['reply_markup'] == null
          ? null
          : InlineKeyboardMarkup.fromJson(
              json['reply_markup'] as Map<String, dynamic>,
            ),
      inputMessageContent: json['input_message_content'] == null
          ? null
          : InputMessageContent.fromJson(
              json['input_message_content'] as Map<String, dynamic>,
            ),
    );
  }
}

/// Represents an issue in an unspecified place. The error is considered resolved when new data is added.
class PassportElementErrorUnspecified extends PassportElementError {
  /// Error message
  final String message;

  /// Base64-encoded element hash
  final String elementHash;

  /// Constructs a [PassportElementErrorUnspecified] object
  const PassportElementErrorUnspecified({
    required super.source,
    required super.type,
    required this.message,
    required this.elementHash,
  });

  /// Converts a [PassportElementErrorUnspecified] object to JSON object
  @override
  Map<String, dynamic> toJson() {
    return {
      'source': source,
      'type': type,
      'message': message,
      'element_hash': elementHash,
    }..removeWhere((key, value) => value == null);
  }

  /// Creates a [PassportElementErrorUnspecified] object from JSON object
  factory PassportElementErrorUnspecified.fromJson(Map<String, dynamic> json) {
    return PassportElementErrorUnspecified(
      source: json['source']!,
      type: PassportType.fromJson(json['type']!),
      message: json['message']!,
      elementHash: json['element_hash']!,
    );
  }
}

/// Represents a link to an article or web page.
class InlineQueryResultArticle extends InlineQueryResult {
  /// Type of the result, always [InlineQueryResultType.article]
  @override
  InlineQueryResultType get type => InlineQueryResultType.article;

  /// Title of the result
  String title;

  /// Content of the message to be sent
  InputMessageContent inputMessageContent;

  /// Optional. Inline keyboard attached to the message
  InlineKeyboardMarkup? replyMarkup;

  /// Optional. URL of the result
  String? url;

  /// Optional. Pass True if you don't want the URL to be shown in the message
  bool? hideUrl;

  /// Optional. Short description of the result
  String? description;

  /// Optional. Url of the thumbnail for the result
  String? thumbnailUrl;

  /// Optional. Thumbnail width
  int? thumbnailWidth;

  /// Optional. Thumbnail height
  int? thumbnailHeight;

  /// This object represents a link to an article or web page.A
  InlineQueryResultArticle({
    required this.title,
    required this.inputMessageContent,
    required super.id,
    this.replyMarkup,
    this.url,
    this.hideUrl,
    this.description,
    this.thumbnailUrl,
    this.thumbnailWidth,
    this.thumbnailHeight,
  });

  /// Converts an [InlineQueryResultArticle] object to a JSON map
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.toString(),
      'id': id,
      'title': title,
      'input_message_content': inputMessageContent.toJson(),
      'reply_markup': replyMarkup?.toJson(),
      'url': url,
      'hide_url': hideUrl,
      'description': description,
      'thumbnail_url': thumbnailUrl,
      'thumbnail_width': thumbnailWidth,
      'thumbnail_height': thumbnailHeight,
    }..removeWhere((key, value) => value == null);
  }

  /// De-serializes a [InlineQueryResultArticle] object from a JSON map
  factory InlineQueryResultArticle.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultArticle(
      title: json['title'] as String,
      inputMessageContent: InputMessageContent.fromJson(
        json['input_message_content'] as Map<String, dynamic>,
      ),
      id: json['id'] as String,
      replyMarkup: json['reply_markup'] == null
          ? null
          : InlineKeyboardMarkup.fromJson(
              json['reply_markup'] as Map<String, dynamic>,
            ),
      url: json['url'] as String?,
      hideUrl: json['hide_url'] as bool?,
      description: json['description'] as String?,
      thumbnailUrl: json['thumbnail_url'] as String?,
      thumbnailWidth: json['thumbnail_width'] as int?,
      thumbnailHeight: json['thumbnail_height'] as int?,
    );
  }
}

/// This object represents changes in the status of a chat member.
class ChatMemberUpdated {
  /// Chat the user belongs to
  final Chat chat;

  /// Performer of the action, which resulted in the change
  final User from;

  /// Date the change was done in Unix time
  ///
  /// You can use the [dateTime] getter to get a [DateTime] object
  final int date;

  /// Previous information about the chat member
  final ChatMember oldChatMember;

  /// New information about the chat member
  final ChatMember newChatMember;

  /// Optional. Chat invite link, which was used by the user to join the chat; for joining by invite link events only.
  final ChatInviteLink? inviteLink;

  /// Optional. True, if the user joined the chat via a chat folder invite link
  ///
  /// Since Bot API 6.7
  final bool? viaChatFolderInviteLink;

  /// Creates a new [ChatMemberUpdated] object.
  const ChatMemberUpdated({
    required this.chat,
    required this.from,
    required this.date,
    required this.oldChatMember,
    required this.newChatMember,
    this.inviteLink,
    this.viaChatFolderInviteLink,
  });

  /// Creates a new [ChatMemberUpdated] object from json.
  factory ChatMemberUpdated.fromJson(Map<String, dynamic> json) {
    return ChatMemberUpdated(
      chat: Chat.fromJson(json['chat'] as Map<String, dynamic>),
      from: User.fromJson(json['from'] as Map<String, dynamic>),
      date: json['date'] as int,
      oldChatMember:
          ChatMember.fromJson(json['old_chat_member'] as Map<String, dynamic>),
      newChatMember:
          ChatMember.fromJson(json['new_chat_member'] as Map<String, dynamic>),
      inviteLink: json['invite_link'] == null
          ? null
          : ChatInviteLink.fromJson(
              json['invite_link'] as Map<String, dynamic>,
            ),
      viaChatFolderInviteLink: json['via_chat_folder_invite_link'] as bool?,
    );
  }

  /// Converts a [ChatMemberUpdated] to a [Map] for JSON encoding.
  Map<String, dynamic> toJson() {
    return {
      'chat': chat.toJson(),
      'from': from.toJson(),
      'date': date,
      'old_chat_member': oldChatMember.toJson(),
      'new_chat_member': newChatMember.toJson(),
      'invite_link': inviteLink?.toJson(),
      'via_chat_folder_invite_link': viaChatFolderInviteLink,
    }..removeWhere((key, value) => value == null);
  }

  /// Returns a [DateTime] object representing the [date] field
  DateTime get dateTime => DateTime.fromMillisecondsSinceEpoch(date * 1000);
}

/// This object represents a service message about a video chat ended in the chat.
class VideoChatEnded {
  /// Video chat duration in seconds
  ///
  /// [Duration] object is available as [durationTime] getter
  int duration;

  /// Constructs a [VideoChatEnded] object
  VideoChatEnded({required this.duration});

  /// Creates a [VideoChatEnded] object from JSON object
  factory VideoChatEnded.fromJson(Map<String, dynamic> json) {
    return VideoChatEnded(
      duration: json['duration'],
    );
  }

  /// Converts a [VideoChatEnded] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'duration': duration,
    }..removeWhere((key, value) => value == null);
  }

  /// [Duration] object of [duration] field
  Duration get durationTime => Duration(seconds: duration);
}

/// Represents a result of an inline query that was chosen by the user and sent to their chat partner.
class ChosenInlineResult {
  /// The unique identifier for the result that was chosen
  String resultId;

  /// The user that chose the result
  User from;

  /// Optional. Sender location, only for bots that require user location
  Location? location;

  /// Optional. Identifier of the sent inline message. Available only if there is an inline keyboard attached to the message. Will be also received in callback queries and can be used to edit the message.
  String? inlineMessageId;

  /// The query that was used to obtain the result
  String query;

  /// Creates a new [ChosenInlineResult] object.
  ChosenInlineResult({
    required this.resultId,
    required this.from,
    this.location,
    this.inlineMessageId,
    required this.query,
  });

  /// Converts a [ChosenInlineResult] to a [Map] for JSON encoding.
  Map<String, dynamic> toJson() {
    return {
      'result_id': resultId,
      'from': from.toJson(),
      'location': location?.toJson(),
      'inline_message_id': inlineMessageId,
      'query': query,
    }..removeWhere((key, value) => value == null);
  }

  /// Creates a new [ChosenInlineResult] object from json.
  factory ChosenInlineResult.fromJson(Map<String, dynamic> json) {
    return ChosenInlineResult(
      resultId: json['result_id'] as String,
      from: User.fromJson(json['from'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      inlineMessageId: json['inline_message_id'] as String?,
      query: json['query'] as String,
    );
  }
}

/// Upon receiving a message with this object, Telegram clients will display a reply interface to the user (act as if the user has selected the bot's message and tapped 'Reply'). This can be extremely useful if you want to create user-friendly step-by-step interfaces without having to sacrifice privacy mode.
class ForceReply extends ReplyMarkup {
  /// Shows reply interface to the user, as if they manually selected the bot's message and tapped 'Reply'
  bool forceReply;

  /// Optional. The placeholder to be shown in the input field when the reply is active; 1-64 characters
  String? inputFieldPlaceholder;

  /// Optional. Use this parameter if you want to force reply from specific users only. Targets: 1) users that are @mentioned in the text of the Message object; 2) if the bot's message is a reply (has reply_to_message_id), sender of the original message.
  bool? selective;

  /// Constructs a [ForceReply] object.
  ForceReply({
    this.forceReply = true,
    this.selective,
    this.inputFieldPlaceholder,
  });

  /// Creates a [ForceReply] object from json.
  factory ForceReply.fromJson(Map<String, dynamic> json) {
    return ForceReply(
      forceReply: json['force_reply'],
      selective: json['selective'],
      inputFieldPlaceholder: json['input_field_placeholder'],
    );
  }

  /// Converts a [ForceReply] object to json.
  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['force_reply'] = forceReply;
    data['selective'] = selective;
    data['input_field_placeholder'] = inputFieldPlaceholder;
    data.removeWhere((key, value) => value == null);
    return data;
  }
}

/// This object represents a game. Use BotFather to create and edit games, their short names will act as unique identifiers.
class Game {
  /// Title of the game
  String title;

  /// Description of the game
  String description;

  /// Photo that will be displayed in the game message in chats.
  List<PhotoSize> photo;

  /// Optional. Brief description of the game or high scores included in the game message. Can be automatically edited to include current high scores for the game when the bot calls [setGameScore](https://core.telegram.org/bots/api#setgamescore), or manually edited using [editMessageText](https://core.telegram.org/bots/api#editmessagetext). 0-4096 characters.
  String? text;

  /// Optional. Special entities that appear in text, such as usernames, URLs, bot commands, etc.
  List<MessageEntity>? textEntities;

  /// Optional. Animation that will be displayed in the game message in chats. Upload via [BotFather](https://t.me/botfather).
  Animation? animation;

  /// Constructs a [Game] object
  Game({
    required this.title,
    required this.description,
    required this.photo,
    this.text,
    this.textEntities,
    this.animation,
  });

  /// De-serializes a [Game] object from a JSON map
  factory Game.fromJson(Map<String, dynamic> json) {
    return Game(
      title: json['title'] as String,
      description: json['description'] as String,
      photo: (json['photo'] as List<dynamic>)
          .map((e) => PhotoSize.fromJson(e as Map<String, dynamic>))
          .toList(),
      text: json['text'] as String?,
      textEntities: (json['text_entities'] as List<dynamic>?)
          ?.map((e) => MessageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      animation: json['animation'] == null
          ? null
          : Animation.fromJson(json['animation'] as Map<String, dynamic>),
    );
  }

  /// Serializes a [Game] object to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'photo': photo.map((e) => e.toJson()).toList(),
      'text': text,
      'text_entities': textEntities?.map((e) => e.toJson()).toList(),
      'animation': animation?.toJson(),
    }..removeWhere((key, value) => value == null);
  }
}

/// This object contains basic information about a successful payment.
class SuccessfulPayment {
  /// Three-letter ISO 4217 currency code
  String currency;

  /// Total price in the smallest units of the currency (integer, not float/double). For example, for a price of US$ 1.45 pass amount = 145. See the exp parameter in [currencies.json](https://core.telegram.org/bots/payments/currencies.json), it shows the number of digits past the decimal point for each currency (2 for the majority of currencies).
  int totalAmount;

  /// Bot specified invoice payload
  String invoicePayload;

  /// Optional. Identifier of the shipping option chosen by the user
  String? shippingOptionId;

  /// Optional. Order info provided by the user
  OrderInfo? orderInfo;

  /// Telegram payment identifier
  String telegramPaymentChargeId;

  /// Provider payment identifier
  String providerPaymentChargeId;

  /// Constructs a [SuccessfulPayment] object
  SuccessfulPayment({
    required this.currency,
    required this.totalAmount,
    required this.invoicePayload,
    this.shippingOptionId,
    this.orderInfo,
    required this.telegramPaymentChargeId,
    required this.providerPaymentChargeId,
  });

  /// Converts a [SuccessfulPayment] object to a JSON object
  Map<String, dynamic> toJson() {
    return {
      'currency': currency,
      'total_amount': totalAmount,
      'invoice_payload': invoicePayload,
      'shipping_option_id': shippingOptionId,
      'order_info': orderInfo?.toJson(),
      'telegram_payment_charge_id': telegramPaymentChargeId,
      'provider_payment_charge_id': providerPaymentChargeId,
    }..removeWhere((_, v) => v == null);
  }

  /// Creates a [SuccessfulPayment] object from a JSON object
  factory SuccessfulPayment.fromJson(Map<String, dynamic> json) {
    return SuccessfulPayment(
      currency: json['currency']!,
      totalAmount: json['total_amount']!,
      invoicePayload: json['invoice_payload']!,
      shippingOptionId: json['shipping_option_id'],
      orderInfo: json['order_info'] != null
          ? OrderInfo.fromJson(json['order_info']!)
          : null,
      telegramPaymentChargeId: json['telegram_payment_charge_id']!,
      providerPaymentChargeId: json['provider_payment_charge_id']!,
    );
  }
}

/// Represents the scope of bot commands, covering all group and supergroup chat administrators.
class BotCommandScopeAllChatAdministrators implements BotCommandScope {
  /// Scope type, always be [BotCommandScopeType.allChatAdministrators]
  @override
  BotCommandScopeType get type => BotCommandScopeType.allChatAdministrators;

  /// Creates a new [BotCommandScopeAllChatAdministrators] object.
  BotCommandScopeAllChatAdministrators();

  /// Creates a new [BotCommandScopeAllChatAdministrators] object from json.
  factory BotCommandScopeAllChatAdministrators.fromJson(
    Map<String, dynamic> json,
  ) {
    return BotCommandScopeAllChatAdministrators();
  }

  /// Converts a [BotCommandScopeAllChatAdministrators] to a [Map] for JSON encoding.
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.toJson(),
    }..removeWhere((key, value) => value == null);
  }
}

/// Represents a link to a file. By default, this file will be sent by the user with an optional caption. Alternatively, you can use input_message_content to send a message with the specified content instead of the file. Currently, only .PDF and .ZIP files can be sent using this method.
///
/// Note: This will only work in Telegram versions released after 9 April, 2016. Older clients will ignore them.
class InlineQueryResultDocument extends InlineQueryResult {
  /// Type of the result, always [InlineQueryResultType.document]
  @override
  InlineQueryResultType get type => InlineQueryResultType.document;

  /// Title for the result
  String title;

  /// Optional. Caption of the document to be sent, 0-1024 characters after entities parsing
  String? caption;

  /// Optional. Mode for parsing entities in the document caption. See formatting options for more details.
  ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  List<MessageEntity>? captionEntities;

  /// A valid URL for the file
  String documentUrl;

  /// MIME type of the content of the file, either “application/pdf” or “application/zip”
  String mimeType;

  /// Optional. Short description of the result
  String? description;

  /// Optional. Inline keyboard attached to the message
  InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the file
  InputMessageContent? inputMessageContent;

  /// Optional. URL of the thumbnail (JPEG only) for the file
  String? thumbnailUrl;

  /// Optional. Thumbnail width
  int? thumbnailWidth;

  /// Optional. Thumbnail height
  int? thumbnailHeight;

  /// Constructs an [InlineQueryResultDocument] object
  InlineQueryResultDocument({
    required this.title,
    required this.documentUrl,
    required this.mimeType,
    required super.id,
    this.caption,
    this.parseMode,
    this.captionEntities,
    this.description,
    this.replyMarkup,
    this.inputMessageContent,
    this.thumbnailUrl,
    this.thumbnailWidth,
    this.thumbnailHeight,
  });

  /// Converts an [InlineQueryResultDocument] object to a JSON map
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'title': title,
      'document_url': documentUrl,
      'mime_type': mimeType,
      'caption': caption,
      'parse_mode': parseMode?.value,
      'caption_entities': captionEntities?.map((e) => e.toJson()).toList(),
      'description': description,
      'reply_markup': replyMarkup?.toJson(),
      'input_message_content': inputMessageContent?.toJson(),
      'thumbnail_url': thumbnailUrl,
      'thumbnail_width': thumbnailWidth,
      'thumbnail_height': thumbnailHeight,
    }..removeWhere((key, value) => value == null);
  }

  /// Constructs an [InlineQueryResultDocument] object from a JSON map
  factory InlineQueryResultDocument.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultDocument(
      title: json['title'] as String,
      documentUrl: json['document_url'] as String,
      mimeType: json['mime_type'] as String,
      id: json['id'] as String,
      caption: json['caption'] as String?,
      parseMode: json['parse_mode'] == null
          ? null
          : ParseMode.fromJson(json['parse_mode'] as String),
      captionEntities: (json['caption_entities'] as List<dynamic>?)
          ?.map((e) => MessageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String?,
      replyMarkup: json['reply_markup'] == null
          ? null
          : InlineKeyboardMarkup.fromJson(
              json['reply_markup'] as Map<String, dynamic>,
            ),
      inputMessageContent: json['input_message_content'] == null
          ? null
          : InputMessageContent.fromJson(
              json['input_message_content'] as Map<String, dynamic>,
            ),
      thumbnailUrl: json['thumbnail_url'] as String?,
      thumbnailWidth: json['thumbnail_width'] as int?,
      thumbnailHeight: json['thumbnail_height'] as int?,
    );
  }
}

/// This object represents a file ready to be downloaded. The file can be downloaded via the link https://api.telegram.org/file/bot<token>/<file_path>. It is guaranteed that the link will be valid for at least 1 hour. When the link expires, a new one can be requested by calling getFile.
class File {
  /// Unique identifier for this file
  final String fileId;

  /// Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
  final String fileUniqueId;

  /// File size, if known
  final int? fileSize;

  /// File path. Use https://api.telegram.org/file/bot<token>/<file_path> to get the file.
  final String? filePath;

  /// Constructs the File object.
  const File({
    required this.fileId,
    required this.fileUniqueId,
    required this.fileSize,
    required this.filePath,
  });

  /// Creates the File object from the given JSON model.
  factory File.fromJson(Map<String, dynamic> json) {
    return File(
      fileId: json['file_id'],
      fileUniqueId: json['file_unique_id'],
      fileSize: json['file_size'],
      filePath: json['file_path'],
    );
  }

  /// Returns the JSON representation of the File object.
  Map<String, dynamic> toJson() {
    return {
      'file_id': fileId,
      'file_unique_id': fileUniqueId,
      'file_size': fileSize,
      'file_path': filePath,
    }..removeWhere((key, value) => value == null);
  }

  /// Returns the download URL for the particular file as [String]
  ///
  /// This method uses the latest Bot token used in your code. If you have multiple bots running with the same code, you might want to
  /// pass the [token] parameter that can be used to generate the download URL.
  String getDownloadUrl([String? token]) {
    return 'https://api.telegram.org/file/bot${token ?? Televerse.instance.token}/$filePath';
  }

  /// Returns the [Uri] object of the download URL. This is an shorthand method for:
  ///
  /// ```dart
  /// Uri.parse(file.getDownloadUrl())
  /// ```
  ///
  /// Pass [token] parameter if you want to get the download url for a specific bot.
  Uri getDownloadURI([String? token]) {
    return Uri.parse(getDownloadUrl(token));
  }

  /// This is an advanced method in Televerse. This returns `Uint8List?` representing the byte data of the file.
  ///
  /// This method basically gets the file and decodes it's byte data. This can be very useful if you want to download the file or save it.
  ///
  /// Use the [token] parameter to specify the bot token to be used - if you're running multiple bots with the same code.
  Future<Uint8List?> getBytes([String? token]) async {
    try {
      final dio = Dio();
      final r = await dio.getUri(
        getDownloadURI(token),
        options: Options(responseType: ResponseType.bytes),
      );
      if (r.statusCode == 200) {
        return r.data as Uint8List;
      } else {
        throw TeleverseException("Couldn't fetch the file data.");
      }
    } catch (err) {
      return null;
    }
  }

  /// This is an advanced method of Televerse. This method downloads the particular file and saves it to the
  /// specified [path].
  ///
  /// Specify the [token] parameter if you want to use a specific bot token.
  ///
  /// Note: Make sure the [path] is a valid path and the directory exists.
  Future<io.File?> download({String? path, String? token}) async {
    path ??= io.Directory.current.path;

    String fpath;
    final name = filePath?.split("/").last;
    final ext = name?.split(".").last;

    final bytes = await getBytes(token);
    if (bytes == null) return null;
    if (path.endsWith(".$ext")) {
      fpath = path;
    } else {
      fpath = "$path/$name";
    }

    final file = io.File(fpath);
    if (!file.existsSync()) {
      file.createSync();
    }
    return await file.writeAsBytes(bytes);
  }

  /// Returns the file name of the file.
  String? get fileName => filePath?.split("/").last;
}

/// Represents a general file to be sent.
class InputMediaDocument extends InputMedia {
  /// Type of the result, must be [InputMediaType.document]
  @override
  final InputMediaType type = InputMediaType.document;

  /// Optional. Thumbnail of the file sent; can be ignored if thumbnail generation for the file is supported server-side. The thumbnail should be in JPEG format and less than 200 kB in size. A thumbnail's width and height should not exceed 320. Ignored if the file is not uploaded using multipart/form-data. Thumbnails can't be reused and can be only uploaded as a new file, so you can pass “attach://<file_attach_name>” if the thumbnail was uploaded using multipart/form-data under <file_attach_name>. More information on Sending Files »
  final InputFile? thumbnail;

  /// Optional. Caption of the document to be sent, 0-1024 characters after entities parsing
  final String? caption;

  /// Optional. Mode for parsing entities in the document caption. See formatting options for more details.
  final ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  final List<MessageEntity>? captionEntities;

  /// Optional. Disables automatic server-side content type detection for files uploaded using multipart/form-data. Always True, if the document is sent as
  final bool? disableContentTypeDetection;

  /// Constructs an [InputMediaDocument] object
  const InputMediaDocument({
    required super.media,
    this.thumbnail,
    this.caption,
    this.parseMode,
    this.captionEntities,
    this.disableContentTypeDetection,
  });

  /// Converts an [InputMediaDocument] object to a JSON object
  @override
  Map<String, dynamic> getValue([String? field, String? thumb]) {
    return {
      'type': type.value,
      'media': media.getValue(field),
      'thumbnail': thumbnail?.getValue(thumb),
      'caption': caption,
      'parse_mode': parseMode?.value,
      'caption_entities': captionEntities,
      'disable_content_type_detection': disableContentTypeDetection,
    }..removeWhere((key, value) => value == null);
  }
}

/// Represents an issue in one of the data fields that was provided by the user. The error is considered resolved when the field's value changes.
class PassportElementErrorDataField extends PassportElementError {
  /// Error message
  final String message;

  /// Name of the data field which has the error
  final String fieldName;

  /// Base64-encoded data hash
  final String dataHash;

  /// Constructs a [PassportElementErrorDataField] object
  const PassportElementErrorDataField({
    required super.source,
    required super.type,
    required this.message,
    required this.fieldName,
    required this.dataHash,
  });

  /// Creates a [PassportElementErrorDataField] object from JSON object
  @override
  Map<String, dynamic> toJson() {
    return {
      'source': source,
      'type': type,
      'message': message,
      'field_name': fieldName,
      'data_hash': dataHash,
    }..removeWhere((key, value) => value == null);
  }

  /// Creates a [PassportElementErrorDataField] object from JSON object
  factory PassportElementErrorDataField.fromJson(Map<String, dynamic> json) {
    return PassportElementErrorDataField(
      source: json['source']!,
      type: PassportType.fromJson(json['type']!),
      message: json['message']!,
      fieldName: json['field_name']!,
      dataHash: json['data_hash']!,
    );
  }
}

/// Represents an issue with one of the files that constitute the translation of a document. The error is considered resolved when the file changes.
class PassportElementErrorTranslationFile extends PassportElementError {
  /// Error message
  final String message;

  /// Base64-encoded file hash
  final String fileHash;

  /// Constructs a [PassportElementErrorTranslationFile] object
  const PassportElementErrorTranslationFile({
    required super.source,
    required super.type,
    required this.message,
    required this.fileHash,
  });

  /// Converts a [PassportElementErrorTranslationFile] object to JSON object
  @override
  Map<String, dynamic> toJson() {
    return {
      'source': source,
      'type': type,
      'message': message,
      'file_hash': fileHash,
    }..removeWhere((key, value) => value == null);
  }

  /// Creates a [PassportElementErrorTranslationFile] object from a JSON object
  factory PassportElementErrorTranslationFile.fromJson(
    Map<String, dynamic> json,
  ) {
    return PassportElementErrorTranslationFile(
      source: json['source']!,
      type: PassportType.fromJson(json['type']!),
      message: json['message']!,
      fileHash: json['file_hash']!,
    );
  }
}

/// This object represents one result of an inline query. Telegram clients currently support results of the following 20 types:
abstract class InlineQueryResult {
  /// Type of the result
  InlineQueryResultType get type;

  /// Unique identifier for this result, 1-64 Bytes
  String id;

  /// Creates a new [InlineQueryResult] object.
  InlineQueryResult({
    required this.id,
  });

  /// Converts a [InlineQueryResult] to a [Map] for JSON encoding.
  Map<String, dynamic> toJson();
}

/// This object contains information about one member of a chat.
abstract class ChatMember {
  /// The member's status
  final ChatMemberStatus status;

  /// Information about the user
  final User user;

  /// Creates a new [ChatMember] object.
  ///
  /// [status] is the member's status.
  ///
  /// [user] is information about the user.
  const ChatMember({
    required this.status,
    required this.user,
  });

  /// Creates a new [ChatMember] object from a JSON object.
  /// This method decides which [ChatMember] subclass to use based on the [status] field.
  static ChatMember fromJson(Map<String, dynamic> json) {
    switch (json['status'] as String) {
      case 'creator':
        return ChatMemberOwner.fromJson(json);
      case 'administrator':
        return ChatMemberAdministrator.fromJson(json);
      case 'member':
        return ChatMemberMember.fromJson(json);
      case 'restricted':
        return ChatMemberRestricted.fromJson(json);
      case 'left':
        return ChatMemberLeft.fromJson(json);
      case 'kicked':
        return ChatMemberBanned.fromJson(json);
      default:
        throw TeleverseException(
          'Unknown ChatMember status: ${json['status']}',
        );
    }
  }

  /// Converts a [ChatMember] to a [Map] for JSON encoding.
  Map<String, dynamic> toJson() {
    return {
      'status': status.value,
      'user': user.toJson(),
    }..removeWhere((key, value) => value == null);
  }
}

/// This object represents the scope to which bot commands are applied.
abstract class BotCommandScope {
  /// The scope type.
  BotCommandScopeType get type;

  /// Converts a [BotCommandScope] to a [Map] for JSON encoding.
  Map<String, dynamic> toJson() {
    return {
      'type': type.toJson(),
    }..removeWhere((key, value) => value == null);
  }
}

/// This object represents the content of a message to be sent as a result of an inline query. Telegram clients currently support the following 5 types:
///
/// - [InputTextMessageContent]
/// - [InputLocationMessageContent]
/// - [InputVenueMessageContent]
/// - [InputContactMessageContent]
/// - [InputInvoiceMessageContent]
abstract class InputMessageContent {
  /// Converts a [InputMessageContent] to a [Map] for JSON encoding.
  Map<String, dynamic> toJson();

  /// Creates a new [InputMessageContent] object from a JSON object.
  /// This method decides which [InputMessageContent] subclass to use based on the fields.
  static InputMessageContent fromJson(Map<String, dynamic> json) {
    bool isText = json['message_text'] != null;
    bool isLocation = json['latitude'] != null && json['title'] == null;
    bool isVenue = json['latitude'] != null && json['title'] != null;
    bool isContact = json['phone_number'] != null;
    bool isInVoice = json['currency'] != null && json['provider_token'] != null;

    if (isText) {
      return InputTextMessageContent.fromJson(json);
    } else if (isLocation) {
      return InputLocationMessageContent.fromJson(json);
    } else if (isVenue) {
      return InputVenueMessageContent.fromJson(json);
    } else if (isContact) {
      return InputContactMessageContent.fromJson(json);
    } else if (isInVoice) {
      return InputInvoiceMessageContent.fromJson(json);
    } else {
      throw TeleverseException('Unknown InputMessageContent type');
    }
  }
}

/// Represents a [ReplyMarkup] that can be used to send a message with custom keyboard, instructions to hide keyboard or to force a reply from the user.
abstract class ReplyMarkup {
  /// Creates a new [ReplyMarkup] object.
  const ReplyMarkup();

  /// Converts a [ReplyMarkup] to a [Map] for JSON encoding.
  Map<String, dynamic> toJson();
}

/// This object represents the content of a media message to be sent. It should be one of
/// - [InputMediaAnimation]
/// - [InputMediaDocument]
/// - [InputMediaAudio]
/// - [InputMediaPhoto]
/// - [InputMediaVideo]
abstract class InputMedia {
  /// Type of the result.
  InputMediaType get type;

  /// File to send. Pass a file_id to send a file that exists on the Telegram servers (recommended),
  /// pass an HTTP URL for Telegram to get a file from the Internet, or pass "attach://<file_attach_name>"
  /// to upload a new one using multipart/form-data under <file_attach_name> name.
  ///
  /// [More info on Sending Files »](https://core.telegram.org/bots/api#sending-files).
  final InputFile media;

  /// Creates a new [InputMedia] object.
  const InputMedia({
    required this.media,
  });

  /// Converts a [InputMedia] to a [Map] for JSON encoding.
  Map<String, dynamic> getValue([String? field, String? thumb]);
}

/// This object represents an error in the Telegram Passport element which was submitted that should be resolved by the user.
abstract class PassportElementError {
  /// Error source
  final String source;

  /// The section of the user's Telegram Passport which has the error
  final PassportType type;

  /// Creates a new [PassportElementError] object.
  const PassportElementError({
    required this.source,
    required this.type,
  });

  /// Converts a [PassportElementError] to a [Map] for JSON encoding.
  Map<String, dynamic> toJson() {
    return {
      'source': source,
      'type': type,
    }..removeWhere((key, value) => value == null);
  }
}

/// This object describes the bot's menu button in a private chat. It should be one of [MenuButtonCommands] or [MenuButtonWebApp] or [MenuButtonDefault].
///
// If a menu button other than MenuButtonDefault is set for a private chat, then it is applied in the chat. Otherwise the default menu button is applied. By default, the menu button opens the list of bot commands.
abstract class MenuButton {
  /// Type of the MenuButton.
  MenuButtonType get type;

  /// Creates a new [MenuButton] object.
  /// This method decides which [MenuButton] subclass to use based on the [type] field.
  static MenuButton create(Map<String, dynamic> json) {
    switch (json['type']) {
      case 'commands':
        return MenuButtonCommands.fromJson(json);
      case 'web_app':
        return MenuButtonWebApp.fromJson(json);
      default:
        return MenuButtonDefault.fromJson(json);
    }
  }

  /// Creates a new [MenuButton] object.
  const MenuButton();

  /// Converts a [MenuButton] to a [Map] for JSON encoding.
  Map<String, dynamic> toJson();
}

/// Represents a location to which a chat is connected.
class ChatLocation {
  /// The location to which the supergroup is connected.
  final Location location;

  /// Location address; 1-64 characters, as defined by the chat owner
  final String address;

  /// Creates a new [ChatLocation] object.
  const ChatLocation({
    required this.location,
    required this.address,
  });

  /// Creates a new [ChatLocation] object from json.
  factory ChatLocation.fromJson(Map<String, dynamic> json) {
    return ChatLocation(
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
      address: json['address'] as String,
    );
  }

  /// Converts a [ChatLocation] to a [Map] for JSON encoding.
  Map<String, dynamic> toJson() {
    return {
      'location': location.toJson(),
      'address': address,
    };
  }
}

/// This object represents a point on the map.
class Location {
  /// Longitude as defined by sender
  double longitude;

  /// Latitude as defined by sender
  double latitude;

  /// The radius of uncertainty for the location, measured in meters; 0-1500
  double? horizontalAccuracy;

  /// Optional. Time relative to the message sending date, during which the location can be updated; in seconds. For active live locations only.
  int? livePeriod;

  /// Optional. The direction in which user is moving, in degrees; 1-360. For active live locations only.
  int? heading;

  /// Optional. The maximum distance for proximity alerts about approaching another chat member, in meters. For sent live locations only.
  int? proximityAlertRadius;

  /// Constructs a [Location] object
  Location({
    required this.longitude,
    required this.latitude,
    this.horizontalAccuracy,
    this.livePeriod,
    this.heading,
    this.proximityAlertRadius,
  });

  /// Constructs a [Location] object from a JSON map
  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      longitude: json['longitude']!,
      latitude: json['latitude']!,
      horizontalAccuracy: json['horizontal_accuracy'],
      livePeriod: json['live_period'],
      heading: json['heading'],
      proximityAlertRadius: json['proximity_alert_radius'],
    );
  }

  /// Converts a [Location] object to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'longitude': longitude,
      'latitude': latitude,
      'horizontal_accuracy': horizontalAccuracy,
      'live_period': livePeriod,
      'heading': heading,
      'proximity_alert_radius': proximityAlertRadius,
    }..removeWhere((key, value) => value == null);
  }
}

/// This object represents type of a poll, which is allowed to be created and sent when the corresponding button is pressed.
class KeyboardButtonPollType {
  /// Optional. If quiz is passed, the user will be allowed to create only polls in the quiz mode. If regular is passed, only regular polls will be allowed. Otherwise, the user will be allowed to create a poll of any type.
  PollType? type;

  /// Constructs a [KeyboardButtonPollType] object
  KeyboardButtonPollType({this.type});

  /// Creates a [KeyboardButtonPollType] object from JSON object
  factory KeyboardButtonPollType.fromJson(Map<String, dynamic> json) {
    return KeyboardButtonPollType(
      type: json['type'],
    );
  }

  /// Converts a [KeyboardButtonPollType] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'type': type?.type,
    }..removeWhere((key, value) => value == null);
  }
}

/// Represents an audio file to be treated as music to be sent.
class InputMediaAudio extends InputMedia {
  /// Type of the result, must be [InputMediaType.audio]
  @override
  InputMediaType get type => InputMediaType.audio;

  /// Optional. Thumbnail of the file sent; can be ignored if thumbnail generation for the file is supported server-side. The thumbnail should be in JPEG format and less than 200 kB in size. A thumbnail's width and height should not exceed 320. Ignored if the file is not uploaded using multipart/form-data. Thumbnails can't be reused and can be only uploaded as a new file, so you can pass “attach://<file_attach_name>” if the thumbnail was uploaded using multipart/form-data under <file_attach_name>. More information on Sending Files »
  final InputFile? thumbnail;

  /// Optional. Caption of the audio to be sent, 0-1024 characters after entities parsing
  final String? caption;

  /// Optional. Mode for parsing entities in the audio caption. See formatting options for more details.
  final ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  final List<MessageEntity>? captionEntities;

  /// Optional. Duration of the audio in seconds
  final int? duration;

  /// Optional. Performer of the audio
  final String? performer;

  /// Optional. Title of the audio
  final String? title;

  /// Constructs an [InputMediaAudio] object
  InputMediaAudio({
    required super.media,
    this.thumbnail,
    this.caption,
    this.parseMode,
    this.captionEntities,
    this.duration,
    this.performer,
    this.title,
  });

  /// Converts an [InputMediaAudio] object to a JSON object
  @override
  Map<String, dynamic> getValue([String? field, String? thumb]) {
    return {
      'type': type.value,
      'media': media.getValue(field),
      'thumbnail': thumbnail?.getValue(thumb),
      'caption': caption,
      'parse_mode': parseMode?.value,
      'caption_entities': captionEntities,
      'duration': duration,
      'performer': performer,
      'title': title,
    }..removeWhere((key, value) => value == null);
  }
}

/// Represents a chat member that is under certain restrictions in the chat. Supergroups only.
class ChatMemberRestricted implements ChatMember {
  /// The member's status in the chat, always “creator”
  @override
  final ChatMemberStatus status = ChatMemberStatus.restricted;

  /// Information about the user
  @override
  final User user;

  /// True, if the user is a member of the chat at the moment of the request
  final bool isMember;

  /// True, if the user is allowed to change the chat title, photo and other settings
  final bool canChangeInfo;

  /// True, if the user is allowed to invite new users to the chat
  final bool canInviteUsers;

  /// True, if the user is allowed to pin messages; groups and supergroups only
  final bool canPinMessages;

  /// True, if the user is allowed to create forum topics
  final bool canManageTopics;

  /// True, if the user is allowed to send text messages, contacts, locations and venues
  final bool canSendMessages;

  /// True, if the user is allowed to send polls, implies can_send_messages
  final bool canSendPolls;

  /// True, if the user is allowed to send animations, games, stickers and use inline bots, implies can_send_media_messages
  final bool canSendOtherMessages;

  /// True, if the user is allowed to add web page previews to their messages, implies can_send_media_messages
  final bool canAddWebPagePreviews;

  /// Date when restrictions will be lifted for this user; unix time. If 0, then the user is restricted forever
  ///
  /// You can also use [untilDateTime] to get the date as a [DateTime] object
  final int untilDate;

  /// True, if the user is allowed to send audios
  ///
  /// Since Bot API 6.5
  final bool canSendAudios;

  /// True, if the user is allowed to send documents
  final bool canSendDocuments;

  /// True, if the user is allowed to send photos
  final bool canSendPhotos;

  /// True, if the user is allowed to send videos
  final bool canSendVideos;

  /// True, if the user is allowed to send video notes
  final bool canSendVideoNotes;

  /// True, if the user is allowed to send voice notes
  final bool canSendVoiceNotes;

  /// Creates a new [ChatMemberRestricted] object.
  const ChatMemberRestricted({
    required this.user,
    required this.isMember,
    required this.canChangeInfo,
    required this.canInviteUsers,
    required this.canPinMessages,
    required this.canSendMessages,
    required this.canSendPolls,
    required this.canSendOtherMessages,
    required this.canAddWebPagePreviews,
    required this.untilDate,
    required this.canManageTopics,
    required this.canSendAudios,
    required this.canSendDocuments,
    required this.canSendPhotos,
    required this.canSendVideos,
    required this.canSendVideoNotes,
    required this.canSendVoiceNotes,
  });

  /// Date when restrictions will be lifted for this user; unix time. If 0, then the user is restricted forever
  ///
  /// You can also use [untilDate] to get the date as an [int] object
  ///
  /// Note: This returns null if the restriction is forever. You can check if the restriction is forever by [isForever]
  DateTime? get untilDateTime {
    if (isForever) return null;
    return DateTime.fromMillisecondsSinceEpoch(untilDate * 1000);
  }

  /// True if the restriction is forever
  bool get isForever => untilDate == 0;

  /// Converts a [ChatMemberRestricted] to a [Map] for JSON encoding.
  @override
  Map<String, dynamic> toJson() {
    return {
      'status': status.value,
      'user': user.toJson(),
      'is_member': isMember,
      'can_change_info': canChangeInfo,
      'can_invite_users': canInviteUsers,
      'can_pin_messages': canPinMessages,
      'can_manage_topics': canManageTopics,
      'can_send_messages': canSendMessages,
      'can_send_polls': canSendPolls,
      'can_send_other_messages': canSendOtherMessages,
      'can_add_web_page_previews': canAddWebPagePreviews,
      'until_date': untilDate,
      'can_send_audios': canSendAudios,
      'can_send_documents': canSendDocuments,
      'can_send_photos': canSendPhotos,
      'can_send_videos': canSendVideos,
      'can_send_video_notes': canSendVideoNotes,
      'can_send_voice_notes': canSendVoiceNotes,
    }..removeWhere((key, value) => value == null);
  }

  /// Creates a [ChatMemberRestricted] object from a [Map] of JSON data.
  factory ChatMemberRestricted.fromJson(Map<String, dynamic> json) {
    return ChatMemberRestricted(
      user: User.fromJson(json['user']),
      isMember: json['is_member'],
      canChangeInfo: json['can_change_info'],
      canInviteUsers: json['can_invite_users'],
      canPinMessages: json['can_pin_messages'],
      canManageTopics: json['can_manage_topics'],
      canSendMessages: json['can_send_messages'],
      canSendPolls: json['can_send_polls'],
      canSendOtherMessages: json['can_send_other_messages'],
      canAddWebPagePreviews: json['can_add_web_page_previews'],
      untilDate: json['until_date'],
      canSendAudios: json['can_send_audios'],
      canSendDocuments: json['can_send_documents'],
      canSendPhotos: json['can_send_photos'],
      canSendVideos: json['can_send_videos'],
      canSendVideoNotes: json['can_send_video_notes'],
      canSendVoiceNotes: json['can_send_voice_notes'],
    );
  }
}

/// This object represents the content of a service message, sent whenever a user in the chat triggers a proximity alert set by another user.
class ProximityAlertTriggered {
  /// User that triggered the alert
  User traveler;

  /// User that set the alert
  User watcher;

  /// The distance between the users
  int distance;

  /// Constructs a [ProximityAlertTriggered] object
  ProximityAlertTriggered({
    required this.traveler,
    required this.watcher,
    required this.distance,
  });

  /// Creates a [ProximityAlertTriggered] object from JSON object
  factory ProximityAlertTriggered.fromJson(Map<String, dynamic> json) {
    return ProximityAlertTriggered(
      traveler: User.fromJson(json['traveler']!),
      watcher: User.fromJson(json['watcher']!),
      distance: json['distance']!,
    );
  }

  /// Converts a [ProximityAlertTriggered] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'traveler': traveler.toJson(),
      'watcher': watcher.toJson(),
      'distance': distance,
    }..removeWhere((key, value) => value == null);
  }
}

/// This object represents a service message about General forum topic hidden in the chat. Currently holds no information.
class GeneralForumTopicHidden {
  /// Constructs a [GeneralForumTopicHidden] object
  GeneralForumTopicHidden();

  /// Converts a [GeneralForumTopicHidden] object to a JSON map
  Map<String, dynamic> toJson() {
    return {};
  }

  /// De-serializes a [GeneralForumTopicHidden] object from a JSON map
  factory GeneralForumTopicHidden.fromJson(Map<String, dynamic> json) {
    return GeneralForumTopicHidden();
  }
}

/// This object represents the bot's short description.
class BotShortDescription {
  /// Bot's short description.
  final String shortDescription;

  /// Creates the Bot Short Description object.
  BotShortDescription({
    required this.shortDescription,
  });

  /// Creates the Bot Short Description object from a JSON object.
  factory BotShortDescription.fromJson(Map<String, dynamic> json) {
    return BotShortDescription(
      shortDescription: json['short_description'] as String,
    );
  }

  /// Creates a JSON object from the Bot Short Description object.
  Map<String, dynamic> toJson() {
    return {
      'short_description': shortDescription,
    };
  }
}

/// Describes the current status of a webhook.
class WebhookInfo {
  /// Webhook URL, may be empty if webhook is not set up
  String url;

  /// True, if a custom certificate was provided for webhook certificate checks
  bool hasCustomCertificate;

  /// Number of updates awaiting delivery
  int pendingUpdateCount;

  /// Optional. Currently used webhook IP address
  String? ipAddress;

  /// Optional. Unix time for the most recent error that happened when trying to deliver an update via webhook
  int? lastErrorDate;

  /// Optional. Error message in human-readable format for the most recent error that happened when trying to deliver an update via webhook
  String? lastErrorMessage;

  /// Optional. Unix time of the most recent error that happened when trying to synchronize available updates with Telegram datacenters
  int? lastErrorNetworkDate;

  /// Optional. The maximum allowed number of simultaneous HTTPS connections to the webhook for update delivery
  int? maxConnections;

  /// Optional. A list of update types the bot is subscribed to. Defaults to all update types except chat_member
  List<String>? allowedUpdates;

  /// Constructs a WebhookInfo object.
  WebhookInfo({
    required this.url,
    required this.hasCustomCertificate,
    required this.pendingUpdateCount,
    this.ipAddress,
    this.lastErrorDate,
    this.lastErrorMessage,
    this.lastErrorNetworkDate,
    this.maxConnections,
    this.allowedUpdates,
  });

  /// Creates a WebhookInfo object from json [String].
  factory WebhookInfo.fromJson(Map<String, dynamic> json) {
    return WebhookInfo(
      url: json['url'] as String,
      hasCustomCertificate: json['has_custom_certificate'] as bool,
      pendingUpdateCount: json['pending_update_count'] as int,
      ipAddress: json['ip_address'] as String?,
      lastErrorDate: json['last_error_date'] as int?,
      lastErrorMessage: json['last_error_message'] as String?,
      lastErrorNetworkDate: json['last_error_network_date'] as int?,
      maxConnections: json['max_connections'] as int?,
      allowedUpdates: (json['allowed_updates'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );
  }

  /// Get the json representation of this object.
  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'has_custom_certificate': hasCustomCertificate,
      'pending_update_count': pendingUpdateCount,
      'ip_address': ipAddress,
      'last_error_date': lastErrorDate,
      'last_error_message': lastErrorMessage,
      'last_error_network_date': lastErrorNetworkDate,
      'max_connections': maxConnections,
      'allowed_updates': allowedUpdates,
    }..removeWhere((_, v) => v == null);
  }

  /// Get JSON string of this object.
  String jsonString() => jsonEncode(this);
}

/// Represents an issue with a document scan. The error is considered resolved when the file with the document scan changes.
class PassportElementErrorFile extends PassportElementError {
  /// Error message
  final String message;

  /// Base64-encoded file hash
  final String fileHash;

  /// Constructs a [PassportElementErrorFile] object
  const PassportElementErrorFile({
    required super.source,
    required super.type,
    required this.message,
    required this.fileHash,
  });

  /// Creates a [PassportElementErrorFile] object from JSON object
  @override
  Map<String, dynamic> toJson() {
    return {
      'source': source,
      'type': type,
      'message': message,
      'file_hash': fileHash,
    }..removeWhere((key, value) => value == null);
  }

  /// Creates a [PassportElementErrorFile] object from JSON object
  factory PassportElementErrorFile.fromJson(Map<String, dynamic> json) {
    return PassportElementErrorFile(
      source: json['source']!,
      type: PassportType.fromJson(json['type']!),
      message: json['message']!,
      fileHash: json['file_hash']!,
    );
  }
}

/// This object defines the criteria used to request a suitable chat. The identifier of the selected chat will be shared with the bot when the corresponding button is pressed.
///
/// https://core.telegram.org/bots/api#keyboardbuttonrequestchat
class KeyboardButtonRequestChat {
  /// Signed 32-bit identifier of the request
  int requestId;

  /// Pass True to request a channel chat, pass False to request a group or a supergroup chat.
  bool chatIsChannel;

  /// Optional. Pass True to request a forum supergroup, pass False to request a non-forum chat. If not specified, no additional restrictions are applied.
  bool? chatIsForum;

  /// Optional. Pass True to request a supergroup or a channel with a username, pass False to request a chat without a username. If not specified, no additional restrictions are applied.
  bool? chatHasUsername;

  /// Optional. Pass True to request a chat owned by the user. Otherwise, no additional restrictions are applied.
  bool? chatIsCreated;

  /// Optional. A JSON-serialized object listing the required administrator rights of the user in the chat. If not specified, no additional restrictions are applied.
  ChatAdministratorRights? userAdministratorRights;

  /// Optional. A JSON-serialized object listing the required administrator rights of the bot in the chat. The rights must be a subset of user_administrator_rights. If not specified, no additional restrictions are applied.
  ChatAdministratorRights? botAdministratorRights;

  /// Optional. Pass True to request a chat with the bot as a member. Otherwise, no additional restrictions are applied.
  bool? botIsMember;

  /// This object defines the criteria used to request a suitable chat. The identifier of the selected chat will be shared with the bot when the corresponding button is pressed.
  KeyboardButtonRequestChat({
    required this.requestId,
    required this.chatIsChannel,
    this.chatIsForum,
    this.chatHasUsername,
    this.chatIsCreated,
    this.userAdministratorRights,
    this.botAdministratorRights,
    this.botIsMember,
  });

  /// Creates a [KeyboardButtonRequestChat] from JSON object
  factory KeyboardButtonRequestChat.fromJson(Map<String, dynamic> json) {
    return KeyboardButtonRequestChat(
      requestId: json['request_id']!,
      chatIsChannel: json['chat_is_channel']!,
      chatIsForum: json['chat_is_forum'],
      chatHasUsername: json['chat_has_username'],
      chatIsCreated: json['chat_is_created'],
      userAdministratorRights: json['user_administrator_rights'] != null
          ? ChatAdministratorRights.fromJson(json['user_administrator_rights']!)
          : null,
      botAdministratorRights: json['bot_administrator_rights'] != null
          ? ChatAdministratorRights.fromJson(json['bot_administrator_rights']!)
          : null,
      botIsMember: json['bot_is_member'],
    );
  }

  /// Converts a [KeyboardButtonRequestChat] to JSON object
  Map<String, dynamic> toJson() {
    return {
      'request_id': requestId,
      'chat_is_channel': chatIsChannel,
      'chat_is_forum': chatIsForum,
      'chat_has_username': chatHasUsername,
      'chat_is_created': chatIsCreated,
      'user_administrator_rights': userAdministratorRights?.toJson(),
      'bot_administrator_rights': botAdministratorRights?.toJson(),
      'bot_is_member': botIsMember,
    }..removeWhere((key, value) => value == null);
  }
}

/// Represents a link to a file stored on the Telegram servers. By default, this file will be sent by the user with an optional caption. Alternatively, you can use input_message_content to send a message with the specified content instead of the file.
///
/// Note: This will only work in Telegram versions released after 9 April, 2016. Older clients will ignore them.
class InlineQueryResultCachedDocument extends InlineQueryResult {
  /// Type of the result, always [InlineQueryResultType.document]
  @override
  InlineQueryResultType get type => InlineQueryResultType.document;

  /// A valid file identifier for the file
  String documentFileId;

  /// Title for the result
  String title;

  /// Optional. Short description of the result
  String? description;

  /// Optional. Caption of the document to be sent, 0-1024 characters after entities parsing
  String? caption;

  /// Optional. Mode for parsing entities in the document caption. See formatting options for more details.
  ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  List<MessageEntity>? captionEntities;

  /// Optional. Inline keyboard attached to the message
  InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the file
  InputMessageContent? inputMessageContent;

  /// Constructs an [InlineQueryResultCachedDocument] object
  InlineQueryResultCachedDocument({
    required this.documentFileId,
    required this.title,
    required super.id,
    this.description,
    this.caption,
    this.parseMode,
    this.captionEntities,
    this.replyMarkup,
    this.inputMessageContent,
  });

  /// Converts an [InlineQueryResultCachedDocument] object to a JSON map
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'document_file_id': documentFileId,
      'title': title,
      'description': description,
      'caption': caption,
      'parse_mode': parseMode?.value,
      'caption_entities': captionEntities?.map((e) => e.toJson()).toList(),
      'reply_markup': replyMarkup?.toJson(),
      'input_message_content': inputMessageContent?.toJson(),
      'id': id,
    }..removeWhere((key, value) => value == null);
  }

  /// Constructs an [InlineQueryResultCachedDocument] object from a JSON map
  factory InlineQueryResultCachedDocument.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultCachedDocument(
      documentFileId: json['document_file_id'] as String,
      title: json['title'] as String,
      id: json['id'] as String,
      description: json['description'] as String?,
      caption: json['caption'] as String?,
      parseMode: json['parse_mode'] == null
          ? null
          : ParseMode.fromJson(json['parse_mode'] as String),
      captionEntities: (json['caption_entities'] as List<dynamic>?)
          ?.map((e) => MessageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      replyMarkup: json['reply_markup'] == null
          ? null
          : InlineKeyboardMarkup.fromJson(
              json['reply_markup'] as Map<String, dynamic>,
            ),
      inputMessageContent: json['input_message_content'] == null
          ? null
          : InputMessageContent.fromJson(
              json['input_message_content'] as Map<String, dynamic>,
            ),
    );
  }
}

/// Represents a photo to be sent.
class InputMediaPhoto extends InputMedia {
  /// Type of the result, must be photo
  @override
  final InputMediaType type = InputMediaType.photo;

  /// Optional. Caption of the photo to be sent, 0-1024 characters after entities parsing
  final String? caption;

  /// Optional. Mode for parsing entities in the photo caption. See formatting options for more details.
  ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  final List<MessageEntity>? captionEntities;

  /// Optional. Pass True if the photo needs to be covered with a spoiler animation
  final bool? hasSpoiler;

  /// Constructs an [InputMediaPhoto] object
  InputMediaPhoto({
    required super.media,
    this.caption,
    this.parseMode,
    this.captionEntities,
    this.hasSpoiler,
  });

  /// Converts an [InputMediaPhoto] object to a JSON object
  @override
  Map<String, dynamic> getValue([String? field, String? thumb]) {
    return {
      'type': type.value,
      'media': media.getValue(field),
      'caption': caption,
      'parse_mode': parseMode?.value,
      'caption_entities': captionEntities,
      'has_spoiler': hasSpoiler,
    }..removeWhere((key, value) => value == null);
  }
}

/// This object represents one special entity in a text message. For example, hashtags, usernames, URLs, etc.
class MessageEntity {
  /// Type of the entity. Currently, can be:
  /// - mention - (@username)
  /// - hashtag - (#hashtag),
  /// - cashtag - ($USD),
  /// - botC  ommand - (/start@jobs_bot),
  /// - url - (https://telegram.org),
  /// - email - (do-not-reply@telegram.org),
  /// - phoneNumber - (+1-212-555-0123),
  /// - bold - (bold text),
  /// - italic - (italic text),
  /// - underline - (underlined text),
  /// - strikethrough - (strikethrough text),
  /// - spoiler - (spoiler message),
  /// - code - (monowidth string),
  /// - pre - (monowidth block),
  /// - textLink - (for clickable text URLs),
  /// - textMention - (for users without usernames),
  /// - customEmoji - (for inline custom emoji stickers)
  MessageEntityType type;

  /// Offset in UTF-16 code units to the start of the entity
  int offset;

  /// Length of the entity in UTF-16 code units
  int length;

  /// Optional. For “text_link” only, URL that will be opened after user taps on the text
  String? url;

  /// Optional. For “text_mention” only, the mentioned user
  User? user;

  /// Optional. For “pre” only, the programming language of the entity text
  String? language;

  /// Optional. For “custom_emoji” only, unique identifier of the custom emoji. Use getCustomEmojiStickers to get full information about the sticker
  String? customEmojiId;

  /// Constructs a [MessageEntity] object
  MessageEntity({
    required this.type,
    required this.offset,
    required this.length,
    this.url,
    this.user,
    this.language,
    this.customEmojiId,
  });

  /// Converts a [MessageEntity] object to a JSON object
  factory MessageEntity.fromJson(Map<String, dynamic> json) {
    return MessageEntity(
      type: MessageEntityType.fromJson(json['type']),
      offset: json['offset'],
      length: json['length'],
      url: json['url'],
      user: json['user'] != null ? User.fromJson(json['user']) : null,
      language: json['language'],
      customEmojiId: json['custom_emoji_id'],
    );
  }

  /// Converts a [MessageEntity] object to a JSON object
  Map<String, dynamic> toJson() {
    return {
      'type': type.type,
      'offset': offset,
      'length': length,
      'url': url,
      'user': user?.toJson(),
      'language': language,
      'custom_emoji_id': customEmojiId,
    }..removeWhere((key, value) => value == null);
  }
}

/// This object represents an animation file (GIF or H.264/MPEG-4 AVC video without sound).
class Animation {
  /// Identifier for this file, which can be used to download or reuse the file
  String fileId;

  /// Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
  String fileUniqueId;

  /// Video width as defined by sender
  int width;

  /// Video height as defined by sender
  int height;

  /// Duration of the video in seconds as defined by sender
  ///
  /// A handy [Duration] getter is available as [durationTime]
  int duration;

  /// Optional. Animation thumbnail as defined by sender
  PhotoSize? thumbnail;

  /// Optional. Original animation filename as defined by sender
  String? fileName;

  /// Optional. MIME type of the file as defined by sender
  String? mimeType;

  /// Optional. File size in bytes. It can be bigger than 2^31 and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a signed 64-bit integer or double-precision float type are safe for storing this value.
  int? fileSize;

  /// Creates a new [Animation] object.
  Animation({
    required this.fileId,
    required this.fileUniqueId,
    required this.width,
    required this.height,
    required this.duration,
    this.thumbnail,
    this.fileName,
    this.mimeType,
    this.fileSize,
  });

  /// Creates a new [Animation] object from a JSON [Map].
  factory Animation.fromJson(Map<String, dynamic> json) {
    return Animation(
      fileId: json['file_id']!,
      fileUniqueId: json['file_unique_id']!,
      width: json['width']!,
      height: json['height']!,
      duration: json['duration']!,
      thumbnail: json['thumbnail'] != null
          ? PhotoSize.fromJson(json['thumbnail']!)
          : null,
      fileName: json['file_name'],
      mimeType: json['mime_type'],
      fileSize: json['file_size'],
    );
  }

  /// Converts a [Animation] to a JSON [Map].
  Map<String, dynamic> toJson() {
    return {
      'file_id': fileId,
      'file_unique_id': fileUniqueId,
      'width': width,
      'height': height,
      'duration': duration,
      'thumbnail': thumbnail?.toJson(),
      'file_name': fileName,
      'mime_type': mimeType,
      'file_size': fileSize,
    }..removeWhere((key, value) => value == null);
  }

  /// Duration of the video as [Duration] object.
  Duration get durationTime => Duration(seconds: duration);
}

/// Represents a menu button, which launches a Web App.
class MenuButtonWebApp extends MenuButton {
  /// Type of the button, always [MenuButtonType.webApp]
  @override
  MenuButtonType get type => MenuButtonType.webApp;

  /// Text on the button
  final String text;

  /// Description of the Web App that will be launched when the user presses the button. The Web App will be able to send an arbitrary message on behalf of the user using the method answerWebAppQuery.
  final WebAppInfo webApp;

  /// Constructs a [MenuButtonWebApp] object
  const MenuButtonWebApp({
    required this.text,
    required this.webApp,
  });

  /// Creates a [MenuButtonWebApp] object from JSON object
  factory MenuButtonWebApp.fromJson(Map<String, dynamic> json) {
    return MenuButtonWebApp(
      text: json['text'] as String,
      webApp: WebAppInfo.fromJson(json['web_app'] as Map<String, dynamic>),
    );
  }

  /// Converts a [MenuButtonWebApp] object to JSON object
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'text': text,
      'web_app': webApp.toJson(),
    };
  }
}

/// Describes data required for decrypting and authenticating EncryptedPassportElement. See the Telegram Passport Documentation for a complete description of the data decryption and authentication processes.
class EncryptedCredentials {
  /// Base64-encoded encrypted JSON-serialized data with unique user's payload, data hashes and secrets required for EncryptedPassportElement decryption and authentication
  String data;

  /// Base64-encoded data hash for data authentication
  String hash;

  /// Base64-encoded secret, encrypted with the bot's public RSA key, required for data decryption
  String secret;

  /// Creates a new [EncryptedCredentials] object.
  EncryptedCredentials({
    required this.data,
    required this.hash,
    required this.secret,
  });

  /// Creates a new [EncryptedCredentials] object from json.
  Map<String, dynamic> toJson() {
    return {
      'data': data,
      'hash': hash,
      'secret': secret,
    };
  }

  /// Creates a new [EncryptedCredentials] object from json.
  factory EncryptedCredentials.fromJson(Map<String, dynamic> json) {
    return EncryptedCredentials(
      data: json['data']!,
      hash: json['hash']!,
      secret: json['secret']!,
    );
  }
}

/// This object represents one row of the high scores table for a game.
class GameHighScore {
  /// Position in high score table for the game
  final int position;

  /// User
  final User user;

  /// Score
  final int score;

  /// Constructs a [GameHighScore] object
  const GameHighScore({
    required this.position,
    required this.user,
    required this.score,
  });

  /// De-serializes a [GameHighScore] object from a JSON map
  factory GameHighScore.fromJson(Map<String, dynamic> json) {
    return GameHighScore(
      position: json['position'] as int,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      score: json['score'] as int,
    );
  }

  /// Serializes a [GameHighScore] object to a JSON map
  /// Returns a [Map<String, dynamic>] containing the serialized object
  Map<String, dynamic> toJson() {
    return {
      'position': position,
      'user': user.toJson(),
      'score': score,
    };
  }
}

/// Represents a chat member that owns the chat and has all administrator privileges.
class ChatMemberAdministrator implements ChatMember {
  /// The member's status in the chat, always [ChatMemberStatus.administrator]
  @override
  final ChatMemberStatus status = ChatMemberStatus.administrator;

  /// Information about the user
  @override
  final User user;

  /// True, if the bot is allowed to edit administrator privileges of that user
  final bool canBeEdited;

  /// True, if the user's presence in the chat is hidden
  final bool isAnonymous;

  /// True, if the administrator can access the chat event log, chat statistics, message statistics in channels, see channel members, see anonymous administrators in supergroups and ignore slow mode. Implied by any other administrator privilege
  final bool canManageChat;

  /// True, if the administrator can delete messages of other users
  final bool canDeleteMessages;

  /// True, if the administrator can manage video chats
  final bool canManageVideoChats;

  /// True, if the administrator can restrict, ban or unban chat members
  final bool canRestrictMembers;

  /// True, if the administrator can add new administrators with a subset of their own privileges or demote administrators that he has promoted, directly or indirectly (promoted by administrators that were appointed by the user)
  final bool canPromoteMembers;

  /// True, if the user is allowed to change the chat title, photo and other settings
  final bool canChangeInfo;

  /// True, if the user is allowed to invite new users to the chat
  final bool canInviteUsers;

  /// Optional. True, if the administrator can post in the channel; channels only
  final bool? canPostMessages;

  /// Optional. True, if the administrator can edit messages of other users and can pin messages; channels only
  final bool? canEditMessages;

  /// Optional. True, if the user is allowed to pin messages; groups and supergroups only
  final bool? canPinMessages;

  /// Optional. True, if the user is allowed to create, rename, close, and reopen forum topics; supergroups only
  final bool? canManageTopics;

  /// Custom title for this user
  final String? customTitle;

  /// Optional. True, if the administrator can post stories in the channel; channels only
  final bool? canPostStories;

  /// Optional. True, if the administrator can edit stories posted by other users; channels only
  final bool? canEditStories;

  /// Optional. True, if the administrator can delete stories posted by other users
  final bool? canDeleteStories;

  /// Creates a new [ChatMemberAdministrator] object.
  const ChatMemberAdministrator({
    required this.user,
    required this.canBeEdited,
    required this.isAnonymous,
    required this.canManageChat,
    required this.canDeleteMessages,
    required this.canManageVideoChats,
    required this.canRestrictMembers,
    required this.canPromoteMembers,
    required this.canChangeInfo,
    required this.canInviteUsers,
    this.canPostMessages,
    this.canEditMessages,
    this.canPinMessages,
    this.canManageTopics,
    this.customTitle,
    this.canPostStories,
    this.canEditStories,
    this.canDeleteStories,
  });

  /// Converts this object to json.
  @override
  Map<String, dynamic> toJson() {
    return {
      'status': status.value,
      'user': user.toJson(),
      'can_be_edited': canBeEdited,
      'is_anonymous': isAnonymous,
      'can_manage_chat': canManageChat,
      'can_delete_messages': canDeleteMessages,
      'can_manage_video_chats': canManageVideoChats,
      'can_restrict_members': canRestrictMembers,
      'can_promote_members': canPromoteMembers,
      'can_change_info': canChangeInfo,
      'can_invite_users': canInviteUsers,
      'can_post_messages': canPostMessages,
      'can_edit_messages': canEditMessages,
      'can_pin_messages': canPinMessages,
      'can_manage_topics': canManageTopics,
      'custom_title': customTitle,
      'can_post_stories': canPostStories,
      'can_edit_stories': canEditStories,
      'can_delete_stories': canDeleteStories,
    }..removeWhere((key, value) => value == null);
  }

  /// Creates a new [ChatMemberAdministrator] object from json.
  factory ChatMemberAdministrator.fromJson(Map<String, dynamic> json) {
    return ChatMemberAdministrator(
      user: User.fromJson(json['user']),
      canBeEdited: json['can_be_edited'],
      isAnonymous: json['is_anonymous'],
      canManageChat: json['can_manage_chat'],
      canDeleteMessages: json['can_delete_messages'],
      canManageVideoChats: json['can_manage_video_chats'],
      canRestrictMembers: json['can_restrict_members'],
      canPromoteMembers: json['can_promote_members'],
      canChangeInfo: json['can_change_info'],
      canInviteUsers: json['can_invite_users'],
      canPostMessages: json['can_post_messages'],
      canEditMessages: json['can_edit_messages'],
      canPinMessages: json['can_pin_messages'],
      canManageTopics: json['can_manage_topics'],
      customTitle: json['custom_title'],
      canPostStories: json['can_post_stories'],
      canEditStories: json['can_edit_stories'],
      canDeleteStories: json['can_delete_stories'],
    );
  }
}

/// This object represents a bot command.
class BotCommand {
  /// Text of the command, 1-32 characters. Can contain only lowercase English letters, digits and underscores.
  final String command;

  /// Description of the command, 3-256 characters.
  final String description;

  /// Creates a new [BotCommand] object.
  BotCommand({
    required this.command,
    required this.description,
  });

  /// Creates a new [BotCommand] object from json.
  static BotCommand fromJson(Map<String, dynamic> json) {
    return BotCommand(
      command: json['command']!,
      description: json['description']!,
    );
  }

  /// Converts a [BotCommand] to a [Map] for JSON encoding.
  Map<String, dynamic> toJson() {
    return {
      'command': command,
      'description': description,
    };
  }

  /// Converts a [BotCommand] instance to a [String].
  @override
  String toString() => json.encode(this);
}

/// A placeholder, currently holds no information. Use BotFather to set up your game.
class CallbackGame {
  /// Creates a new [CallbackGame] object.
  CallbackGame();

  /// Creates a new [CallbackGame] object from json.
  factory CallbackGame.fromJson(Map<String, dynamic> json) {
    return CallbackGame();
  }

  /// Converts a [CallbackGame] to a [Map] for JSON encoding.
  Map<String, dynamic> toJson() {
    return {};
  }
}

/// This object represents an answer of a user in a non-anonymous poll.
class PollAnswer {
  /// Unique poll identifier
  final String pollId;

  /// The user, who changed the answer to the poll
  final User? user;

  /// 0-based identifiers of answer options, chosen by the user. May be empty if the user retracted their vote.
  final List<int> optionIds;

  /// Optional. The chat that changed the answer to the poll, if the voter is anonymous
  final Chat? voterChat;

  /// Constructs a [PollAnswer] object
  const PollAnswer({
    required this.pollId,
    required this.user,
    required this.optionIds,
    this.voterChat,
  });

  /// Creates a [PollAnswer] object from JSON object
  factory PollAnswer.fromJson(Map<String, dynamic> json) {
    return PollAnswer(
      pollId: json['poll_id']!,
      user: User.fromJson(json['user']!),
      optionIds: List<int>.from(json['option_ids']! as List<dynamic>),
      voterChat: json['voter_chat'] == null
          ? null
          : Chat.fromJson(json['voter_chat']!),
    );
  }

  /// Converts a [PollAnswer] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'poll_id': pollId,
      'user': user?.toJson(),
      'option_ids': optionIds,
      'voter_chat': voterChat?.toJson(),
    }..removeWhere((key, value) => value == null);
  }
}

/// This object represents a service message about a forum topic closed in the chat. Currently holds no information.
class ForumTopicClosed {
  /// Creates a new [ForumTopicClosed] object.
  ForumTopicClosed();

  /// Creates a new [ForumTopicClosed] object from json.
  factory ForumTopicClosed.fromJson(Map<String, dynamic> json) {
    return ForumTopicClosed();
  }

  /// Converts a [ForumTopicClosed] object to json.
  Map<String, dynamic> toJson() {
    return {};
  }
}

/// This object represents a service message about a new forum topic created in the chat.
class ForumTopicCreated {
  /// Name of the topic
  String name;

  /// Color of the topic icon in RGB format
  int color;

  /// Optional. Unique identifier of the custom emoji shown as the topic icon
  String? iconCustomEmojiId;

  /// Creates a new [ForumTopicCreated] object.
  ForumTopicCreated({
    required this.name,
    required this.color,
    this.iconCustomEmojiId,
  });

  /// Creates a new [ForumTopicCreated] object from json.
  factory ForumTopicCreated.fromJson(Map<String, dynamic> json) {
    return ForumTopicCreated(
      name: json['name'],
      color: json['icon_color'],
      iconCustomEmojiId: json['icon_custom_emoji_id'],
    );
  }

  /// Converts a [ForumTopicCreated] object to json.
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'color': color,
      'icon_custom_emoji_id': iconCustomEmojiId,
    }..removeWhere((key, value) => value == null);
  }
}

/// Represents a link to a sticker stored on the Telegram servers. By default, this sticker will be sent by the user. Alternatively, you can use input_message_content to send a message with the specified content instead of the sticker.
///
/// Note: This will only work in Telegram versions released after 9 April, 2016 for static stickers and after 06 July, 2019 for animated stickers. Older clients will ignore them.
class InlineQueryResultCachedSticker extends InlineQueryResult {
  /// Type of the result, always [InlineQueryResultType.sticker]
  @override
  InlineQueryResultType get type => InlineQueryResultType.sticker;

  /// A valid file identifier of the sticker
  String stickerFileId;

  /// Optional. Inline keyboard attached to the message
  InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the sticker
  InputMessageContent? inputMessageContent;

  /// Constructs an [InlineQueryResultCachedSticker] object
  InlineQueryResultCachedSticker({
    required this.stickerFileId,
    required super.id,
    this.replyMarkup,
    this.inputMessageContent,
  });

  /// Converts an [InlineQueryResultCachedSticker] object to a JSON map
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'id': id,
      'sticker_file_id': stickerFileId,
      'reply_markup': replyMarkup?.toJson(),
      'input_message_content': inputMessageContent?.toJson(),
    }..removeWhere((key, value) => value == null);
  }

  /// Constructs an [InlineQueryResultCachedSticker] object from a JSON map
  factory InlineQueryResultCachedSticker.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultCachedSticker(
      stickerFileId: json['sticker_file_id'] as String,
      id: json['id'] as String,
      replyMarkup: json['reply_markup'] == null
          ? null
          : InlineKeyboardMarkup.fromJson(
              json['reply_markup'] as Map<String, dynamic>,
            ),
      inputMessageContent: json['input_message_content'] == null
          ? null
          : InputMessageContent.fromJson(
              json['input_message_content'] as Map<String, dynamic>,
            ),
    );
  }
}

/// Represents the scope of bot commands, covering all group and supergroup chats.
class BotCommandScopeAllGroupChats extends BotCommandScope {
  /// Scope type, always be [BotCommandScopeType.allGroupChats]
  @override
  BotCommandScopeType get type => BotCommandScopeType.allGroupChats;

  /// Creates a new [BotCommandScopeAllGroupChats] object.
  BotCommandScopeAllGroupChats();

  /// Creates a new [BotCommandScopeAllGroupChats] object from json.
  factory BotCommandScopeAllGroupChats.fromJson(Map<String, dynamic> json) {
    return BotCommandScopeAllGroupChats();
  }

  /// Converts a [BotCommandScopeAllGroupChats] to a [Map] for JSON encoding.
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.toJson(),
    }..removeWhere((key, value) => value == null);
  }
}

/// This object represents an inline keyboard that appears right next to the message it belongs to.
class InlineKeyboardMarkup extends ReplyMarkup {
  /// Array of button rows, each represented by an Array of InlineKeyboardButton objects
  List<List<InlineKeyboardButton>> inlineKeyboard;

  /// Creates an [InlineKeyboardMarkup] object
  InlineKeyboardMarkup({
    required this.inlineKeyboard,
  });

  /// Creates an [InlineKeyboardMarkup] object from JSON object
  factory InlineKeyboardMarkup.fromJson(Map<String, dynamic> json) {
    return InlineKeyboardMarkup(
      inlineKeyboard: (json['inline_keyboard'] as List<dynamic>)
          .map(
            (e) => (e as List)
                .map((e) => InlineKeyboardButton.fromJson(e))
                .toList(),
          )
          .toList(),
    );
  }

  /// Converts an [InlineKeyboardMarkup] object to JSON object
  @override
  Map<String, dynamic> toJson() {
    return {
      'inline_keyboard': inlineKeyboard.map((row) {
        return row.map((button) {
          return button.toJson();
        }).toList();
      }).toList(),
    }..removeWhere((key, value) => value == null);
  }
}

/// This object describes a sticker to be added to a sticker set.
class InputSticker {
  /// The added sticker. Pass a file_id as a String to send a file that already exists on the Telegram servers, pass an HTTP URL as a String for Telegram to get a file from the Internet, or upload a new one using multipart/form-data. Animated and video stickers can't be uploaded via HTTP URL. More information on Sending Files »
  InputFile sticker;

  /// List of 1-20 emoji associated with the sticker
  List<String> emojiList;

  /// Optional. Position where the mask should be placed on faces. For “mask” stickers only.
  MaskPosition? maskPosition;

  /// Optional. List of 0-20 search keywords for the sticker with total length of up to 64 characters. For “regular” and “custom_emoji” stickers only.
  List<String>? keywords;

  /// Creates the Input Sticker object.
  InputSticker({
    required this.sticker,
    required this.emojiList,
    this.maskPosition,
    this.keywords,
  });

  /// Creates JSON object from the Input Sticker object.
  Map<String, dynamic> toJson([String? field]) {
    return {
      'sticker': sticker.getValue(field),
      'emoji_list': emojiList,
      'mask_position': maskPosition,
      'keywords': keywords,
    }..removeWhere((_, v) => v == null);
  }
}

/// Represents a [ChatMember] that was banned in the chat and can't return to the chat or view chat messages.
class ChatMemberBanned implements ChatMember {
  /// The member's status in the chat, always "kicked"
  @override
  final ChatMemberStatus status = ChatMemberStatus.kicked;

  /// Information about the user
  @override
  final User user;

  /// Date when restrictions will be lifted for this user; unix time. If 0, then the user is banned forever
  ///
  /// Notes:
  /// - You can use the [untilDateTime] getter to get a [DateTime] object
  /// - Check if the user is banned forever with the [isForever] getter
  final int untilDate;

  /// Creates a new [ChatMemberBanned] object.
  const ChatMemberBanned({
    required this.user,
    required this.untilDate,
  });

  /// Converts a [ChatMemberBanned] to a [Map] for JSON encoding.
  @override
  Map<String, dynamic> toJson() {
    return {
      'status': status.value,
      'user': user.toJson(),
      'until_date': untilDate,
    };
  }

  /// Returns true if the user is banned forever
  bool get isForever => untilDate == 0;

  /// Returns the [untilDate] as a [DateTime] object
  ///
  /// This will return null if the user is banned forever
  DateTime? get untilDateTime =>
      isForever ? null : DateTime.fromMillisecondsSinceEpoch(untilDate * 1000);

  /// Creates a new [ChatMemberBanned] object from json.
  factory ChatMemberBanned.fromJson(Map<String, dynamic> json) {
    return ChatMemberBanned(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      untilDate: json['until_date'] as int,
    );
  }
}

/// This object represents one size of a photo or a file / sticker thumbnail.
class PhotoSize {
  /// Identifier for this file, which can be used to download or reuse the file
  String fileId;

  /// Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
  String fileUniqueId;

  /// Photo width
  int width;

  /// Photo height
  int height;

  /// Optional. File size in bytes
  int? fileSize;

  /// Constructs a [PhotoSize] object
  PhotoSize({
    required this.fileId,
    required this.fileUniqueId,
    required this.width,
    required this.height,
    this.fileSize,
  });

  /// Creates a [PhotoSize] object from JSON object
  factory PhotoSize.fromJson(Map<String, dynamic> json) {
    return PhotoSize(
      fileId: json['file_id'],
      fileUniqueId: json['file_unique_id'],
      width: json['width'],
      height: json['height'],
      fileSize: json['file_size'],
    );
  }

  /// Converts a [PhotoSize] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'file_id': fileId,
      'file_unique_id': fileUniqueId,
      'width': width,
      'height': height,
      'file_size': fileSize,
    }..removeWhere((key, value) => value == null);
  }
}

/// This object represents one shipping option.
class ShippingOption {
  /// Shipping option identifier
  String id;

  /// Option title
  String title;

  /// List of price portions
  List<LabeledPrice> prices;

  /// Constructs a [ShippingOption] object
  ShippingOption({
    required this.id,
    required this.title,
    required this.prices,
  });

  /// Creates a [ShippingOption] object from JSON object
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'prices': prices.map((e) => e.toJson()).toList(),
    }..removeWhere((key, value) => value == null);
  }

  /// Converts a [ShippingOption] object to JSON object
  factory ShippingOption.fromJson(Map<String, dynamic> json) {
    return ShippingOption(
      id: json['id']!,
      title: json['title']!,
      prices: (json['prices'] as List<dynamic>)
          .map((e) => LabeledPrice.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}

/// This object represents a chat.
class Chat {
  /// Unique identifier for this chat. This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a signed 64-bit integer or double-precision float type are safe for storing this identifier.
  final int id;

  /// Type of chat, can be either “private”, “group”, “supergroup” or “channel”
  final ChatType type;

  /// Optional. Title, for supergroups, channels and group chats
  final String? title;

  /// Optional. Username, for private chats, supergroups and channels if available
  final String? username;

  /// Optional. First name of the other party in a private chat
  final String? firstName;

  /// Optional. Last name of the other party in a private chat
  final String? lastName;

  /// Optional. True, if the supergroup chat is a forum (has topics enabled)
  final bool? isForum;

  /// Optional. Chat photo. Returned only in getChat.
  final ChatPhoto? photo;

  /// Optional. If non-empty, the list of all active chat usernames; for private chats, supergroups and channels. Returned only in getChat.
  final List<String>? activeUsernames;

  /// Optional. Custom emoji identifier of emoji status of the other party in a private chat. Returned only in getChat.
  final String? emojiStatusSustomEmojiId;

  /// Optional. Bio of the other party in a private chat. Returned only in getChat.
  final String? bio;

  /// Optional. True, if privacy settings of the other party in the private chat allows to use tg://user?id=<user_id> links only in chats with the user. Returned only in getChat.
  final bool? hasPrivateForwards;

  /// Optional. True, if the privacy settings of the other party restrict sending voice and video note messages in the private chat. Returned only in getChat.
  final bool? hasRestrictedVoiceAndVideoMessages;

  /// Optional. True, if users need to join the supergroup before they can send messages. Returned only in getChat.
  final bool? joinToSendMessages;

  /// Optional. True, if all users directly joining the supergroup need to be approved by supergroup administrators. Returned only in getChat.
  final bool? joinByRequest;

  /// Optional. Description, for groups, supergroups and channel chats. Returned only in getChat.
  final String? description;

  /// Optional. Primary invite link, for groups, supergroups and channel chats. Returned only in getChat.
  final String? inviteLink;

  /// Optional. The most recent pinned message (by sending date). Returned only in getChat.
  final Message? pinnedMessage;

  /// Optional. Default chat member permissions, for groups and supergroups. Returned only in getChat.
  final ChatPermissions? permissions;

  /// Optional. For supergroups, the minimum allowed delay between consecutive messages sent by each unpriviledged user; in seconds. Returned only in getChat.
  final int? slowModeDelay;

  /// Optional. The time after which all messages sent to the chat will be automatically deleted; in seconds. Returned only in getChat.
  final int? messageAutoDeleteTime;

  /// Optional. True, if messages from the chat can't be forwarded to other chats. Returned only in getChat.
  final bool? hasProtectedContent;

  /// Optional. For supergroups, name of group sticker set. Returned only in getChat.
  final String? stickerSetName;

  /// Optional. True, if the bot can change the group sticker set. Returned only in getChat.
  final bool? canSetStickerSet;

  /// Optional. Unique identifier for the linked chat, i.e. the discussion group identifier for a channel and vice versa; for supergroups and channel chats. This identifier may be greater than 32 bits and some programming languages may have difficulty/silent defects in interpreting it. But it is smaller than 52 bits, so a signed 64 bit integer or double-precision float type are safe for storing this identifier. Returned only in getChat.
  final int? linkedChatId;

  /// Optional. For supergroups, the location to which the supergroup is connected. Returned only in getChat.
  final ChatLocation? location;

  /// Optional. True, if non-administrators can only get the list of bots and administrators in the chat. Returned only in getChat.
  final bool? hasHiddenMembers;

  /// Optional. True, if aggressive anti-spam checks are enabled in the supergroup. The field is only available to chat administrators. Returned only in getChat.
  final bool? hasAggressiveAntiSpamEnabled;

  /// Optional. Expiration date of the emoji status of the other party in a private chat, if any. Returned only in getChat.
  final int? emojiStatusExpirationDate;

  /// Constructs a [Chat] object.
  const Chat({
    required this.id,
    required this.type,
    this.title,
    this.username,
    this.firstName,
    this.lastName,
    this.isForum,
    this.photo,
    this.activeUsernames,
    this.emojiStatusSustomEmojiId,
    this.bio,
    this.hasPrivateForwards,
    this.hasRestrictedVoiceAndVideoMessages,
    this.joinToSendMessages,
    this.joinByRequest,
    this.description,
    this.inviteLink,
    this.pinnedMessage,
    this.permissions,
    this.slowModeDelay,
    this.messageAutoDeleteTime,
    this.hasProtectedContent,
    this.stickerSetName,
    this.canSetStickerSet,
    this.linkedChatId,
    this.location,
    this.hasHiddenMembers,
    this.hasAggressiveAntiSpamEnabled,
    this.emojiStatusExpirationDate,
  });

  /// Creates a [Chat] object from json.
  factory Chat.fromJson(Map<String, dynamic> json) {
    return Chat(
      id: json['id'] as int,
      type: ChatType.fromJson(json['type'] as String),
      title: json['title'],
      username: json['username'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      isForum: json['is_forum'],
      photo: json['photo'] == null ? null : ChatPhoto.fromJson(json['photo']),
      activeUsernames: (json['active_usernames'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      emojiStatusSustomEmojiId: json['emoji_status_custom_emoji_id'],
      bio: json['bio'],
      hasPrivateForwards: json['has_private_forwards'],
      hasRestrictedVoiceAndVideoMessages:
          json['has_restricted_voice_and_video_messages'],
      joinToSendMessages: json['join_to_send_messages'],
      joinByRequest: json['join_by_request'],
      description: json['description'],
      inviteLink: json['invite_link'],
      pinnedMessage: json['pinned_message'] == null
          ? null
          : Message.fromJson(json['pinned_message']),
      permissions: json['permissions'] == null
          ? null
          : ChatPermissions.fromJson(json['permissions']),
      slowModeDelay: json['slow_mode_delay'],
      messageAutoDeleteTime: json['message_auto_delete_time'],
      hasProtectedContent: json['has_protected_content'],
      stickerSetName: json['sticker_set_name'],
      canSetStickerSet: json['can_set_sticker_set'],
      linkedChatId: json['linked_chat_id'],
      location: json['location'] == null
          ? null
          : ChatLocation.fromJson(json['location']),
      hasHiddenMembers: json['has_hidden_members'],
      hasAggressiveAntiSpamEnabled: json['has_aggressive_anti_spam_enabled'],
      emojiStatusExpirationDate: json['emoji_status_expiration_date'],
    );
  }

  /// Converts a [Chat] object to json.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type.toJson(),
      'title': title,
      'username': username,
      'first_name': firstName,
      'last_name': lastName,
      'is_forum': isForum,
      'photo': photo?.toJson(),
      'active_usernames': activeUsernames,
      'emoji_status_custom_emoji_id': emojiStatusSustomEmojiId,
      'bio': bio,
      'has_private_forwards': hasPrivateForwards,
      'has_restricted_voice_and_video_messages':
          hasRestrictedVoiceAndVideoMessages,
      'join_to_send_messages': joinToSendMessages,
      'join_by_request': joinByRequest,
      'description': description,
      'invite_link': inviteLink,
      'pinned_message': pinnedMessage?.toJson(),
      'permissions': permissions?.toJson(),
      'slow_mode_delay': slowModeDelay,
      'message_auto_delete_time': messageAutoDeleteTime,
      'has_protected_content': hasProtectedContent,
      'sticker_set_name': stickerSetName,
      'can_set_sticker_set': canSetStickerSet,
      'linked_chat_id': linkedChatId,
      'location': location?.toJson(),
      'has_hidden_members': hasHiddenMembers,
      'has_aggressive_anti_spam_enabled': hasAggressiveAntiSpamEnabled,
      'emoji_status_expiration_date': emojiStatusExpirationDate,
    }..removeWhere((key, value) => value == null);
  }
}

/// Represents a Game.
class InlineQueryResultGame extends InlineQueryResult {
  /// Type of the result, must be [InlineQueryResultType.game]
  @override
  InlineQueryResultType get type => InlineQueryResultType.game;

  /// Short name of the game
  String gameShortName;

  /// Optional. Inline keyboard attached to the message
  InlineKeyboardMarkup? replyMarkup;

  /// Constructs an [InlineQueryResultGame] object
  InlineQueryResultGame({
    required this.gameShortName,
    required super.id,
    this.replyMarkup,
  });

  /// Converts an [InlineQueryResultGame] object to a JSON map
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'id': id,
      'game_short_name': gameShortName,
      'reply_markup': replyMarkup?.toJson(),
    }..removeWhere((key, value) => value == null);
  }

  /// Constructs an [InlineQueryResultGame] object from a JSON map
  factory InlineQueryResultGame.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultGame(
      gameShortName: json['game_short_name'] as String,
      id: json['id'] as String,
      replyMarkup: json['reply_markup'] == null
          ? null
          : InlineKeyboardMarkup.fromJson(
              json['reply_markup'] as Map<String, dynamic>,
            ),
    );
  }
}

/// This object represents a service message about a user allowing a bot added to the attachment menu to write messages.
class WriteAccessAllowed {
  /// Name of the connected website. Present only if the user allowed the bot to send them messages.
  final String? webAppName;

  /// Optional. True, if the access was granted after the user accepted an explicit request from a Web App sent by the method requestWriteAccess
  final bool? fromRequest;

  /// Optional. True, if the access was granted when the bot was added to the attachment or side menu
  final bool? fromAttachmentMenu;

  /// Constructs a [WriteAccessAllowed] object
  const WriteAccessAllowed({
    this.webAppName,
    this.fromAttachmentMenu,
    this.fromRequest,
  });

  /// Converts a [WriteAccessAllowed] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'web_app_name': webAppName,
      'from_request': fromRequest,
      'from_attachment_menu': fromAttachmentMenu,
    }..removeWhere((key, value) => value == null);
  }

  /// Creates a [WriteAccessAllowed] object from JSON object
  factory WriteAccessAllowed.fromJson(Map<String, dynamic> json) {
    return WriteAccessAllowed(
      webAppName: json['web_app_name'],
      fromRequest: json['from_request'],
      fromAttachmentMenu: json['from_attachment_menu'],
    );
  }
}

/// This object represent a user's profile pictures.
class UserProfilePhotos {
  /// Total number of profile pictures the target user has
  int totalCount;

  /// Requested profile pictures (in up to 4 sizes each)
  List<List<PhotoSize>> photos;

  /// Constructs a [UserProfilePhotos] object
  UserProfilePhotos({required this.totalCount, required this.photos});

  /// Creates a [UserProfilePhotos] object from JSON object
  factory UserProfilePhotos.fromJson(Map<String, dynamic> json) {
    return UserProfilePhotos(
      totalCount: json['total_count'],
      photos: List<List<PhotoSize>>.from(
        json['photos'].map(
          (x) => List<PhotoSize>.from(x.map((x) => PhotoSize.fromJson(x))),
        ),
      ),
    );
  }

  /// Converts a [UserProfilePhotos] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'total_count': totalCount,
      'photos': List<dynamic>.from(
        photos.map(
          (x) => List<dynamic>.from(
            x.map(
              (x) => x.toJson(),
            ),
          ),
        ),
      ),
    }..removeWhere((key, value) => value == null);
  }
}

/// This object contains information about an incoming shipping query.
class ShippingQuery {
  /// Unique query identifier
  String id;

  /// User who sent the query
  User from;

  /// Bot specified invoice payload
  String invoicePayload;

  /// User specified shipping address
  ShippingAddress shippingAddress;

  /// Constructs a [ShippingQuery] object
  ShippingQuery({
    required this.id,
    required this.from,
    required this.invoicePayload,
    required this.shippingAddress,
  });

  /// Converts a [ShippingQuery] object to a JSON object
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'from': from.toJson(),
      'invoice_payload': invoicePayload,
      'shipping_address': shippingAddress.toJson(),
    }..removeWhere((key, value) => value == null);
  }

  /// Creates a [ShippingQuery] object from a JSON object
  factory ShippingQuery.fromJson(Map<String, dynamic> json) {
    return ShippingQuery(
      id: json['id']!,
      from: User.fromJson(json['from']!),
      invoicePayload: json['invoice_payload']!,
      shippingAddress: ShippingAddress.fromJson(json['shipping_address']!),
    );
  }
}

/// This object represents a service message about General forum topic unhidden in the chat. Currently holds no information.
class GeneralForumTopicUnhidden {
  /// Constructs a [GeneralForumTopicUnhidden] object
  GeneralForumTopicUnhidden();

  /// Converts a [GeneralForumTopicUnhidden] object to a JSON map
  Map<String, dynamic> toJson() {
    return {};
  }

  /// Creates a [GeneralForumTopicUnhidden] object from a JSON map
  factory GeneralForumTopicUnhidden.fromJson(Map<String, dynamic> json) {
    return GeneralForumTopicUnhidden();
  }
}

/// Represents a join request sent to a chat.
class ChatJoinRequest {
  /// Chat to which the request was sent
  final Chat chat;

  /// User that sent the join request
  final User from;

  /// Date the request was sent in Unix time
  ///
  /// You can use the [dateTime] getter to get a [DateTime] object
  final int date;

  /// Optional. Bio of the user.
  final String? bio;

  /// Optional. Chat invite link that was used by the user to send the join request
  final ChatInviteLink? inviteLink;

  /// Since Bot API 6.5
  ///
  /// Identifier of a private chat with the user who sent the join request. This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a 64-bit integer or double-precision float type are safe for storing this identifier. The bot can use this identifier for 24 hours to send messages until the join request is processed, assuming no other administrator contacted the user.
  final int userChatId;

  /// Creates a new [ChatJoinRequest] object.
  const ChatJoinRequest({
    required this.chat,
    required this.from,
    required this.date,
    this.bio,
    this.inviteLink,
    required this.userChatId,
  });

  /// Creates a new [ChatJoinRequest] object from json.
  factory ChatJoinRequest.fromJson(Map<String, dynamic> json) {
    return ChatJoinRequest(
      chat: Chat.fromJson(json['chat']),
      from: User.fromJson(json['from']),
      date: json['date'],
      bio: json['bio'],
      inviteLink: json['invite_link'] == null
          ? null
          : ChatInviteLink.fromJson(json['invite_link']),
      userChatId: json['user_chat_id'],
    );
  }

  /// Converts a [ChatJoinRequest] to a [Map] for JSON encoding.
  Map<String, dynamic> toJson() {
    return {
      'chat': chat.toJson(),
      'from': from.toJson(),
      'date': date,
      'bio': bio,
      'invite_link': inviteLink?.toJson(),
      'user_chat_id': userChatId,
    }..removeWhere((key, value) => value == null);
  }

  /// Returns a [DateTime] object representing the [date] field
  DateTime get dateTime => DateTime.fromMillisecondsSinceEpoch(date * 1000);

  /// User that sent the join request (alias for [from])
  User get user => from;
}

/// Represents an invite link for a chat.
class ChatInviteLink {
  /// The invite link. If the link was created by another chat administrator, then the second
  String inviteLink;

  /// Creator of the link
  User? creator;

  /// True, if users joining the chat via the link need to be approved by chat administrators
  bool? createsJoinRequest;

  /// True, if the link is primary
  bool? isPrimary;

  /// True, if the link is revoked
  bool? isRevoked;

  /// Optional. Invite link name
  String? name;

  /// Optional. Point in time (Unix timestamp) when the link will expire or has been expired
  ///
  /// The expiry date is available as [DateTime] object in [expireDateTime] getter.
  int? expireDate;

  /// Optional. The maximum number of users that can be members of the chat simultaneously after joining the chat via this invite link; 1-99999
  int? memberLimit;

  /// Optional. Number of pending join requests created using this link
  int? pendingMemberCount;

  /// Creates a new [ChatInviteLink] object.
  ChatInviteLink({
    required this.inviteLink,
    this.creator,
    this.createsJoinRequest,
    this.isPrimary,
    this.isRevoked,
    this.name,
    this.expireDate,
    this.memberLimit,
    this.pendingMemberCount,
  });

  /// Creates a new [ChatInviteLink] object from json.
  factory ChatInviteLink.fromJson(Map<String, dynamic> json) {
    return ChatInviteLink(
      inviteLink: json['invite_link'],
      creator: json['creator'] != null ? User.fromJson(json['creator']) : null,
      createsJoinRequest: json['creates_join_request'],
      isPrimary: json['is_primary'],
      isRevoked: json['is_revoked'],
      name: json['name'],
      expireDate: json['expire_date'],
      memberLimit: json['member_limit'],
      pendingMemberCount: json['pending_member_count'],
    );
  }

  /// Creates a new [ChatInviteLink] object from json.
  Map<String, dynamic> toJson() {
    return {
      'invite_link': inviteLink,
      'creator': creator?.toJson(),
      'creates_join_request': createsJoinRequest,
      'is_primary': isPrimary,
      'is_revoked': isRevoked,
      'name': name,
      'expire_date': expireDate,
      'member_limit': memberLimit,
      'pending_member_count': pendingMemberCount,
    }..removeWhere((key, value) => value == null);
  }

  /// Returns the expiry date as [DateTime] object.
  /// Returns `null` if the link doesn't expire.
  DateTime? get expireDateTime {
    if (expireDate == null) return null;
    return DateTime.fromMillisecondsSinceEpoch(expireDate! * 1000);
  }
}

/// This object represents an inline button that switches the current user to inline mode in a chosen chat, with an optional default inline query.
class SwitchInlineQueryChosenChat {
  /// Optional. The default inline query to be inserted in the input field. If left empty, only the bot's username will be inserted
  final String? query;

  /// Optional. True, if private chats with users can be chosen
  final bool? allowUserChats;

  /// Optional. True, if private chats with bots can be chosen
  final bool? allowBotChats;

  /// Optional. True, if group and supergroup chats can be chosen
  final bool? allowGroupChats;

  /// Optional. True, if channel chats can be chosen
  final bool? allowChannelChats;

  /// Constructs a [SwitchInlineQueryChosenChat]
  const SwitchInlineQueryChosenChat({
    this.query,
    this.allowUserChats,
    this.allowBotChats,
    this.allowGroupChats,
    this.allowChannelChats,
  });

  /// Creates a [SwitchInlineQueryChosenChat] object from JSON object
  factory SwitchInlineQueryChosenChat.fromJson(Map<String, dynamic> json) {
    return SwitchInlineQueryChosenChat(
      query: json['query'],
      allowUserChats: json['allow_user_chats'],
      allowBotChats: json['allow_bot_chats'],
      allowGroupChats: json['allow_group_chats'],
      allowChannelChats: json['allow_channel_chats'],
    );
  }

  /// Converts a [SwitchInlineQueryChosenChat] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'query': query,
      'allow_user_chats': allowUserChats,
      'allow_bot_chats': allowBotChats,
      'allow_group_chats': allowGroupChats,
      'allow_channel_chats': allowChannelChats,
    }..removeWhere((_, value) => value == null);
  }
}

/// Represents the scope of bot commands, covering a specific chat.
class BotCommandScopeChat implements BotCommandScope {
  /// Scope type, always be [BotCommandScopeType.chat]
  @override
  BotCommandScopeType get type => BotCommandScopeType.chat;

  /// Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
  ID chatId;

  /// Creates a new [BotCommandScopeChat] object.
  BotCommandScopeChat({
    required this.chatId,
  });

  /// Creates a new [BotCommandScopeChat] object from json.
  factory BotCommandScopeChat.fromJson(Map<String, dynamic> json) {
    return BotCommandScopeChat(
      chatId: ID.create(json['chat_id']),
    );
  }

  /// Converts a [BotCommandScopeChat] to a [Map] for JSON encoding.
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.toJson(),
      'chat_id': chatId.toJson(),
    }..removeWhere((key, value) => value == null);
  }
}

/// Represents a video to be sent.
class InputMediaVideo extends InputMedia {
  /// Type of the result, must be video
  @override
  InputMediaType get type => InputMediaType.video;

  /// Optional. Thumbnail of the file sent; can be ignored if thumbnail generation for the file is supported server-side. The thumbnail should be in JPEG format and less than 200 kB in size. A thumbnail's width and height should not exceed 320. Ignored if the file is not uploaded using multipart/form-data. Thumbnails can't be reused and can be only uploaded as a new file, so you can pass “attach://<file_attach_name>” if the thumbnail was uploaded using multipart/form-data under <file_attach_name>. More information on Sending Files »
  final InputFile? thumbnail;

  /// Optional. Caption of the video to be sent, 0-1024 characters after entities parsing
  final String? caption;

  /// Optional. Mode for parsing entities in the video caption. See formatting options for more details.
  final ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  final List<MessageEntity>? captionEntities;

  /// Optional. Video width
  final int? width;

  /// Optional. Video height
  final int? height;

  /// Optional. Video duration in seconds
  final int? duration;

  /// Optional. Pass True if the uploaded video is suitable for streaming
  final bool? supportsStreaming;

  /// Optional. Pass True if the video needs to be covered with a spoiler animation
  final bool? hasSpoiler;

  /// Constructs an [InputMediaVideo] object
  InputMediaVideo({
    required super.media,
    this.thumbnail,
    this.caption,
    this.parseMode,
    this.captionEntities,
    this.width,
    this.height,
    this.duration,
    this.supportsStreaming,
    this.hasSpoiler,
  });

  /// Converts an [InputMediaVideo] object to a JSON object
  @override
  Map<String, dynamic> getValue([String? field, String? thumb]) {
    return {
      'type': type.value,
      'media': media.getValue(field),
      'thumbnail': thumbnail?.getValue(thumb),
      'caption': caption,
      'parse_mode': parseMode?.value,
      'caption_entities': captionEntities,
      'width': width,
      'height': height,
      'duration': duration,
      'supports_streaming': supportsStreaming,
      'has_spoiler': hasSpoiler,
    }..removeWhere((key, value) => value == null);
  }
}

/// Represents a contact with a phone number. By default, this contact will be sent by the user. Alternatively, you can use input_message_content to send a message with the specified content instead of the contact.
///
/// Note: This will only work in Telegram versions released after 9 April, 2016. Older clients will ignore them.
class InlineQueryResultContact extends InlineQueryResult {
  /// Type of the result, always [InlineQueryResultType.contact]
  @override
  InlineQueryResultType get type => InlineQueryResultType.contact;

  /// Contact's phone number
  String phoneNumber;

  /// Contact's first name
  String firstName;

  /// Optional. Contact's last name
  String? lastName;

  /// Optional. Additional data about the contact in the form of a vCard, 0-2048 bytes
  String? vcard;

  /// Optional. Inline keyboard attached to the message
  InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the contact
  InputMessageContent? inputMessageContent;

  /// Optional. Url of the thumbnail for the result
  String? thumbnailUrl;

  /// Optional. Thumbnail width
  int? thumbnailWidth;

  /// Optional. Thumbnail height
  int? thumbnailHeight;

  /// Constructs an [InlineQueryResultContact] object
  InlineQueryResultContact({
    required this.phoneNumber,
    required this.firstName,
    required super.id,
    this.lastName,
    this.vcard,
    this.replyMarkup,
    this.inputMessageContent,
    this.thumbnailUrl,
    this.thumbnailWidth,
    this.thumbnailHeight,
  });

  /// Converts an [InlineQueryResultContact] object to a JSON map
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'phone_number': phoneNumber,
      'first_name': firstName,
      'last_name': lastName,
      'vcard': vcard,
      'reply_markup': replyMarkup?.toJson(),
      'input_message_content': inputMessageContent?.toJson(),
      'thumbnail_url': thumbnailUrl,
      'thumbnail_width': thumbnailWidth,
      'thumbnail_height': thumbnailHeight,
    }..removeWhere((key, value) => value == null);
  }

  /// Constructs an [InlineQueryResultContact] object from a JSON map
  factory InlineQueryResultContact.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultContact(
      phoneNumber: json['phone_number'] as String,
      firstName: json['first_name'] as String,
      id: json['id'] as String,
      lastName: json['last_name'] as String?,
      vcard: json['vcard'] as String?,
      replyMarkup: json['reply_markup'] == null
          ? null
          : InlineKeyboardMarkup.fromJson(
              json['reply_markup'] as Map<String, dynamic>,
            ),
      inputMessageContent: json['input_message_content'] == null
          ? null
          : InputMessageContent.fromJson(
              json['input_message_content'] as Map<String, dynamic>,
            ),
      thumbnailUrl: json['thumbnail_url'] as String?,
      thumbnailWidth: json['thumbnail_width'] as int?,
      thumbnailHeight: json['thumbnail_height'] as int?,
    );
  }
}

/// This object contains information about one answer option in a poll.
class PollOption {
  /// Option text, 1-100 characters
  String text;

  /// Number of users that voted for this option
  int voterCount;

  /// Constructs a [PollOption] object
  PollOption({
    required this.text,
    required this.voterCount,
  });

  /// Creates a [PollOption] object from JSON object
  factory PollOption.fromJson(Map<String, dynamic> json) {
    return PollOption(
      text: json['text']!,
      voterCount: json['voter_count']!,
    );
  }

  /// Converts a [PollOption] object to a JSON object
  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'voter_count': voterCount,
    }..removeWhere((key, value) => value == null);
  }
}

/// Represents an animation file (GIF or H.264/MPEG-4 AVC video without sound) to be sent.
class InputMediaAnimation extends InputMedia {
  /// Type of the result, must be [InputMediaType.animation]
  @override
  InputMediaType get type => InputMediaType.animation;

  /// Optional. Thumbnail of the file sent; can be ignored if thumbnail generation for the file is supported server-side. The thumbnail should be in JPEG format and less than 200 kB in size. A thumbnail's width and height should not exceed 320. Ignored if the file is not uploaded using multipart/form-data. Thumbnails can't be reused and can be only uploaded as a new file, so you can pass “attach://<file_attach_name>” if the thumbnail was uploaded using multipart/form-data under <file_attach_name>. More information on Sending Files »
  final InputFile? thumbnail;

  /// Optional. Caption of the video to be sent, 0-1024 characters after entities parsing
  final String? caption;

  /// Optional. Mode for parsing entities in the video caption. See formatting options for more details.
  final ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  final List<MessageEntity>? captionEntities;

  /// Optional. Animation width
  final int? width;

  /// Optional. Animation height
  final int? height;

  /// Optional. Animation duration in seconds
  final int? duration;

  /// Optional. Pass True if the animation needs to be covered with a spoiler animation
  final bool? hasSpoiler;

  /// Constructs an [InputMediaAnimation] object
  InputMediaAnimation({
    required super.media,
    this.thumbnail,
    this.caption,
    this.parseMode,
    this.captionEntities,
    this.width,
    this.height,
    this.duration,
    this.hasSpoiler,
  });

  /// Converts an [InputMediaAnimation] object to a JSON object
  @override
  Map<String, dynamic> getValue([String? field, String? thumb]) {
    return {
      'type': type.value,
      'media': media.getValue(field),
      'thumbnail': thumbnail?.getValue(thumb),
      'caption': caption,
      'parse_mode': parseMode?.value,
      'caption_entities': captionEntities,
      'width': width,
      'height': height,
      'duration': duration,
      'has_spoiler': hasSpoiler,
    }..removeWhere((key, value) => value == null);
  }
}

/// Upon receiving a message with this object, Telegram clients will remove the current custom keyboard and display the default letter-keyboard. By default, custom keyboards are displayed until a new keyboard is sent by a bot. An exception is made for one-time keyboards that are hidden immediately after the user presses a button (see ReplyKeyboardMarkup).
class ReplyKeyboardRemove extends ReplyMarkup {
  /// Requests clients to remove the custom keyboard (user will not be able to summon this keyboard; if you want to hide the keyboard from sight but keep it accessible, use one_time_keyboard in ReplyKeyboardMarkup)
  bool removeKeyboard;

  /// Optional. Use this parameter if you want to remove the keyboard for specific users only.
  /// Targets:
  ///   1) users that are @mentioned in the text of the Message object;
  ///   2) if the bot's message is a reply (has reply_to_message_id), sender of the original message.
  ///
  /// Example: A user votes in a poll, bot returns confirmation message in reply to the vote and removes the keyboard for that user, while still showing the keyboard with poll options to users who haven't voted yet.
  bool selective;

  /// Constructs a [ReplyKeyboardRemove] object
  ReplyKeyboardRemove({
    this.removeKeyboard = true,
    this.selective = false,
  });

  /// Creates a [ReplyKeyboardRemove] object from JSON object
  factory ReplyKeyboardRemove.fromJson(Map<String, dynamic> json) {
    return ReplyKeyboardRemove(
      removeKeyboard: json['remove_keyboard'],
      selective: json['selective'] ?? false,
    );
  }

  /// Converts a [ReplyKeyboardRemove] object to a json object
  @override
  Map<String, dynamic> toJson() {
    return {
      'remove_keyboard': removeKeyboard,
      'selective': selective,
    }..removeWhere((key, value) => value == null);
  }
}

/// Represents an issue with the translated version of a document. The error is considered resolved when a file with the document translation change.
class PassportElementErrorTranslationFiles extends PassportElementError {
  /// Error message
  final String message;

  /// List of base64-encoded file hashes
  final List<String> fileHashes;

  /// Constructs a [PassportElementErrorTranslationFiles] object
  const PassportElementErrorTranslationFiles({
    required super.source,
    required super.type,
    required this.message,
    required this.fileHashes,
  });

  /// Converts a [PassportElementErrorTranslationFiles] object to JSON object
  @override
  Map<String, dynamic> toJson() {
    return {
      'source': source,
      'type': type,
      'message': message,
      'file_hashes': fileHashes,
    }..removeWhere((key, value) => value == null);
  }

  /// Creates a [PassportElementErrorTranslationFiles] object from JSON object
  factory PassportElementErrorTranslationFiles.fromJson(
    Map<String, dynamic> json,
  ) {
    return PassportElementErrorTranslationFiles(
      source: json['source']!,
      type: PassportType.fromJson(json['type']!),
      message: json['message']!,
      fileHashes: List<String>.from(json['file_hashes']! as List<dynamic>),
    );
  }
}

/// This object represents a parameter of the inline keyboard button used to automatically authorize a user. Serves as a great replacement for the Telegram Login Widget when the user is coming from Telegram. All the user needs to do is tap/click a button and confirm that they want to log in:
///
/// Telegram apps support these buttons as of version 5.7.
///
/// Sample bot: @discussbot
class LoginURL {
  /// An HTTP URL to be opened with user authorization data added to the query string when the button is pressed. If the user refuses to provide authorization data, the original URL without information about the user will be opened. The data added is the same as described in Receiving authorization data.
  ///
  /// NOTE: You must always check the hash of the received data to verify the authentication and the integrity of the data as described in Checking authorization.
  String url;

  /// Optional. New text of the button in forwarded messages.
  String? forwardText;

  /// Optional. Username of a bot, which will be used for user authorization. See Setting up a bot for more details. If not specified, the current bot's username will be assumed. The url's domain must be the same as the domain linked with the bot. See Linking your domain to the bot for more details.
  String? botUsername;

  /// Optional. Pass True to request the permission for your bot to send messages to the user.
  bool? requestWriteAccess;

  /// Constructs a [LoginURL] object
  LoginURL({
    required this.url,
    this.forwardText,
    this.botUsername,
    this.requestWriteAccess,
  });

  /// Creates a [LoginURL] object from JSON object
  factory LoginURL.fromJson(Map<String, dynamic> json) {
    return LoginURL(
      url: json['url'],
      forwardText: json['forward_text'],
      botUsername: json['bot_username'],
      requestWriteAccess: json['request_write_access'],
    );
  }

  /// Converts a [LoginURL] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'forward_text': forwardText,
      'bot_username': botUsername,
      'request_write_access': requestWriteAccess,
    }..removeWhere((key, value) => value == null);
  }
}

/// Describes Telegram Passport data shared with the bot by the user.
class PassportData {
  /// Array with information about documents and other Telegram Passport elements that was shared with the bot
  List<EncryptedPassportElement> data;

  /// Encrypted credentials required to decrypt the data
  EncryptedCredentials credentials;

  /// Constructs a [PassportData] object
  PassportData({
    required this.data,
    required this.credentials,
  });

  /// Converts a [PassportData] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'data': data.map((e) => e.toJson()).toList(),
      'credentials': credentials.toJson(),
    };
  }

  /// Creates a [PassportData] object from JSON object
  factory PassportData.fromJson(Map<String, dynamic> json) {
    return PassportData(
      data: (json['data'] as List<dynamic>)
          .map((e) => EncryptedPassportElement.fromJson(e))
          .toList(),
      credentials: EncryptedCredentials.fromJson(json['credentials']!),
    );
  }
}

/// This object represents a service message about new members invited to a video chat.
class VideoChatParticipantsInvited {
  /// New members that were invited to the video chat
  List<User> users;

  /// Constructs a [VideoChatParticipantsInvited] object
  VideoChatParticipantsInvited({required this.users});

  /// Creates a [VideoChatParticipantsInvited] object from JSON object
  factory VideoChatParticipantsInvited.fromJson(Map<String, dynamic> json) {
    return VideoChatParticipantsInvited(
      users: List<User>.from(
        (json['users'] as List<dynamic>).map(
          (x) => User.fromJson(x),
        ),
      ),
    );
  }

  /// Converts a [VideoChatParticipantsInvited] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'users': List<dynamic>.from(users.map((x) => x.toJson())),
    }..removeWhere((key, value) => value == null);
  }
}

/// Represents an issue with the reverse side of a document. The error is considered resolved when the file with reverse side of the document changes.
class PassportElementErrorReverseSide extends PassportElementError {
  /// Error message
  final String message;

  /// Base64-encoded hash of the file with the reverse side of the document
  final String fileHash;

  /// Constructs a [PassportElementErrorReverseSide] object
  const PassportElementErrorReverseSide({
    required super.source,
    required super.type,
    required this.message,
    required this.fileHash,
  });

  /// Converts a [PassportElementErrorReverseSide] object to JSON object
  @override
  Map<String, dynamic> toJson() {
    return {
      'source': source,
      'type': type,
      'message': message,
      'file_hash': fileHash,
    }..removeWhere((key, value) => value == null);
  }

  /// Creates a [PassportElementErrorReverseSide] object from JSON object
  factory PassportElementErrorReverseSide.fromJson(Map<String, dynamic> json) {
    return PassportElementErrorReverseSide(
      source: json['source']!,
      type: PassportType.fromJson(json['type']!),
      message: json['message']!,
      fileHash: json['file_hash']!,
    );
  }
}
