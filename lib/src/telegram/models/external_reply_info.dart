part of 'models.dart';

/// Contains information about a message that is being replied to, which may come from another chat or forum topic.
class ExternalReplyInfo {
  /// Origin of the message replied to by the given message
  final MessageOrigin origin;

  /// Optional. Chat the original message belongs to. Available only if the chat is a supergroup or a channel.
  final Chat? chat;

  /// Optional. Unique message identifier inside the original chat. Available only if the original chat is a supergroup or a channel.
  final int? messageId;

  /// Optional. Options used for link preview generation for the original message, if it is a text message
  final LinkPreviewOptions? linkPreviewOptions;

  /// Optional. Message is an animation, information about the animation
  final Animation? animation;

  /// Optional. Message is an audio file, information about the file
  final Audio? audio;

  /// Optional. Message is a general file, information about the file
  final Document? document;

  /// Optional. Message is a photo, available sizes of the photo
  final List<PhotoSize>? photo;

  /// Optional. Message is a sticker, information about the sticker
  final Sticker? sticker;

  /// Optional. Message is a forwarded story
  final Story? story;

  /// Optional. Message is a video, information about the video
  final Video? video;

  /// Optional. Message is a video note, information about the video message
  final VideoNote? videoNote;

  /// Optional. Message is a voice message, information about the file
  final Voice? voice;

  /// Optional. True, if the message media is covered by a spoiler animation
  final bool? hasMediaSpoiler;

  /// Optional. Message is a shared contact, information about the contact
  final Contact? contact;

  /// Optional. Message is a dice with random value
  final Dice? dice;

  /// Optional. Message is a game, information about the game. [More about games »](https://core.telegram.org/bots/api#games)
  final Game? game;

  /// Optional. Message is a scheduled giveaway, information about the giveaway
  final Giveaway? giveaway;

  /// Optional. A giveaway with public winners was completed
  final GiveawayWinners? giveawayWinners;

  /// Optional. Message is an invoice for a payment, information about the invoice. More about payments »
  final Invoice? invoice;

  /// Optional. Message is a shared location, information about the location
  final Location? location;

  /// Optional. Message is a native poll, information about the poll
  final Poll? poll;

  /// Optional. Message is a venue, information about the venue
  final Venue? venue;

  /// Constructs the [ExternalReplyInfo]
  const ExternalReplyInfo({
    required this.origin,
    this.chat,
    this.messageId,
    this.linkPreviewOptions,
    this.animation,
    this.audio,
    this.document,
    this.photo,
    this.sticker,
    this.story,
    this.video,
    this.videoNote,
    this.voice,
    this.hasMediaSpoiler,
    this.contact,
    this.dice,
    this.game,
    this.giveaway,
    this.giveawayWinners,
    this.invoice,
    this.location,
    this.poll,
    this.venue,
  });

  /// Converts instance of [ExternalReplyInfo] into JSON encodable [Map].
  Map<String, dynamic> toJson() {
    return {
      'origin': origin.toJson(),
      'chat': chat?.toJson(),
      'message_id': messageId,
      'link_preview_options': linkPreviewOptions?.toJson(),
      'animation': animation?.toJson(),
      'audio': audio?.toJson(),
      'document': document?.toJson(),
      'photo': photo?.map((e) => e.toJson()).toList(),
      'sticker': sticker?.toJson(),
      'story': story?.toJson(),
      'video': video?.toJson(),
      'video_note': videoNote?.toJson(),
      'voice': voice?.toJson(),
      'has_media_spoiler': hasMediaSpoiler,
      'contact': contact?.toJson(),
      'dice': dice?.toJson(),
      'game': game?.toJson(),
      'giveaway': giveaway?.toJson(),
      'giveaway_winners': giveawayWinners?.toJson(),
      'invoice': invoice?.toJson(),
      'location': location?.toJson(),
      'poll': poll?.toJson(),
      'venue': venue?.toJson(),
    }..removeWhere((_, v) => v == null);
  }

  /// Creates instance of [ExternalReplyInfo] from JSON data.
  factory ExternalReplyInfo.fromJson(Map<String, dynamic> json) {
    return ExternalReplyInfo(
      origin: MessageOrigin.fromJson(json['origin']),
      chat: json['chat'] != null ? Chat.fromJson(json['chat']) : null,
      messageId: json['message_id'],
      linkPreviewOptions: json['link_preview_options'] != null
          ? LinkPreviewOptions.fromJson(json['link_preview_options'])
          : null,
      animation: json['animation'] != null
          ? Animation.fromJson(json['animation'])
          : null,
      audio: json['audio'] != null ? Audio.fromJson(json['audio']) : null,
      document:
          json['document'] != null ? Document.fromJson(json['document']) : null,
      photo: json['photo'] != null
          ? (json['photo'] as List).map((e) => PhotoSize.fromJson(e)).toList()
          : null,
      sticker:
          json['sticker'] != null ? Sticker.fromJson(json['sticker']) : null,
      story: json['story'] != null ? Story.fromJson(json['story']) : null,
      video: json['video'] != null ? Video.fromJson(json['video']) : null,
      videoNote: json['video_note'] != null
          ? VideoNote.fromJson(json['video_note'])
          : null,
      voice: json['voice'] != null ? Voice.fromJson(json['voice']) : null,
      hasMediaSpoiler: json['has_media_spoiler'],
      contact:
          json['contact'] != null ? Contact.fromJson(json['contact']) : null,
      dice: json['dice'] != null ? Dice.fromJson(json['dice']) : null,
      game: json['game'] != null ? Game.fromJson(json['game']) : null,
      giveaway:
          json['giveaway'] != null ? Giveaway.fromJson(json['giveaway']) : null,
      giveawayWinners: json['giveaway_winners'] != null
          ? GiveawayWinners.fromJson(json['giveaway_winners'])
          : null,
      invoice:
          json['invoice'] != null ? Invoice.fromJson(json['invoice']) : null,
      location:
          json['location'] != null ? Location.fromJson(json['location']) : null,
      poll: json['poll'] != null ? Poll.fromJson(json['poll']) : null,
      venue: json['venue'] != null ? Venue.fromJson(json['venue']) : null,
    );
  }
}
