// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'message_origin.dart';
import 'chat.dart';
import 'link_preview_options.dart';
import 'animation.dart';
import 'audio.dart';
import 'document.dart';
import 'photo_size.dart';
import 'sticker.dart';
import 'story.dart';
import 'video.dart';
import 'video_note.dart';
import 'voice.dart';
import 'contact.dart';
import 'dice.dart';
import 'game.dart';
import 'giveaway.dart';
import 'giveaway_winners.dart';
import 'invoice.dart';
import 'location.dart';
import 'poll.dart';
import 'venue.dart';
import 'paid_media_info.dart';

part 'external_reply_info.freezed.dart';
part 'external_reply_info.g.dart';

/// Contains information about a message that is being replied to,
/// which may come from another chat or forum topic.
@freezed
abstract class ExternalReplyInfo with _$ExternalReplyInfo {
  /// Constructs the [ExternalReplyInfo]
  const factory ExternalReplyInfo({
    /// Origin of the message replied to by the given message
    @JsonKey(name: 'origin') required MessageOrigin origin,

    /// Optional. Chat the original message belongs to. Available only if the chat is a supergroup or a channel.
    @JsonKey(name: 'chat') Chat? chat,

    /// Optional. Unique message identifier inside the original chat. Available only if the original chat is a supergroup or a channel.
    @JsonKey(name: 'message_id') int? messageId,

    /// Optional. Options used for link preview generation for the original message, if it is a text message
    @JsonKey(name: 'link_preview_options')
    LinkPreviewOptions? linkPreviewOptions,

    /// Optional. Message is an animation, information about the animation
    @JsonKey(name: 'animation') Animation? animation,

    /// Optional. Message is an audio file, information about the file
    @JsonKey(name: 'audio') Audio? audio,

    /// Optional. Message is a general file, information about the file
    @JsonKey(name: 'document') Document? document,

    /// Optional. Message is a photo, available sizes of the photo
    @JsonKey(name: 'photo') List<PhotoSize>? photo,

    /// Optional. Message is a sticker, information about the sticker
    @JsonKey(name: 'sticker') Sticker? sticker,

    /// Optional. Message is a forwarded story
    @JsonKey(name: 'story') Story? story,

    /// Optional. Message is a video, information about the video
    @JsonKey(name: 'video') Video? video,

    /// Optional. Message is a video note, information about the video message
    @JsonKey(name: 'video_note') VideoNote? videoNote,

    /// Optional. Message is a voice message, information about the file
    @JsonKey(name: 'voice') Voice? voice,

    /// Optional. True, if the message media is covered by a spoiler animation
    @JsonKey(name: 'has_media_spoiler') bool? hasMediaSpoiler,

    /// Optional. Message is a shared contact, information about the contact
    @JsonKey(name: 'contact') Contact? contact,

    /// Optional. Message is a dice with random value
    @JsonKey(name: 'dice') Dice? dice,

    /// Optional. Message is a game, information about the game
    @JsonKey(name: 'game') Game? game,

    /// Optional. Message is a scheduled giveaway, information about the giveaway
    @JsonKey(name: 'giveaway') Giveaway? giveaway,

    /// Optional. A giveaway with public winners was completed
    @JsonKey(name: 'giveaway_winners') GiveawayWinners? giveawayWinners,

    /// Optional. Message is an invoice for a payment, information about the invoice
    @JsonKey(name: 'invoice') Invoice? invoice,

    /// Optional. Message is a shared location, information about the location
    @JsonKey(name: 'location') Location? location,

    /// Optional. Message is a native poll, information about the poll
    @JsonKey(name: 'poll') Poll? poll,

    /// Optional. Message is a venue, information about the venue
    @JsonKey(name: 'venue') Venue? venue,

    /// Optional. Message contains paid media; information about the paid media
    @JsonKey(name: 'paid_media') PaidMediaInfo? paidMedia,
  }) = _ExternalReplyInfo;

  /// Creates instance of [ExternalReplyInfo] from JSON data.
  factory ExternalReplyInfo.fromJson(Map<String, dynamic> json) =>
      _$ExternalReplyInfoFromJson(json);
}
