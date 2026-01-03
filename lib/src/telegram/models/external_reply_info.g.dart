// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_reply_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExternalReplyInfo _$ExternalReplyInfoFromJson(Map<String, dynamic> json) =>
    _ExternalReplyInfo(
      origin: MessageOrigin.fromJson(json['origin'] as Map<String, dynamic>),
      chat: json['chat'] == null
          ? null
          : Chat.fromJson(json['chat'] as Map<String, dynamic>),
      messageId: (json['message_id'] as num?)?.toInt(),
      linkPreviewOptions: json['link_preview_options'] == null
          ? null
          : LinkPreviewOptions.fromJson(
              json['link_preview_options'] as Map<String, dynamic>,
            ),
      animation: json['animation'] == null
          ? null
          : Animation.fromJson(json['animation'] as Map<String, dynamic>),
      audio: json['audio'] == null
          ? null
          : Audio.fromJson(json['audio'] as Map<String, dynamic>),
      document: json['document'] == null
          ? null
          : Document.fromJson(json['document'] as Map<String, dynamic>),
      photo: (json['photo'] as List<dynamic>?)
          ?.map((e) => PhotoSize.fromJson(e as Map<String, dynamic>))
          .toList(),
      sticker: json['sticker'] == null
          ? null
          : Sticker.fromJson(json['sticker'] as Map<String, dynamic>),
      story: json['story'] == null
          ? null
          : Story.fromJson(json['story'] as Map<String, dynamic>),
      video: json['video'] == null
          ? null
          : Video.fromJson(json['video'] as Map<String, dynamic>),
      videoNote: json['video_note'] == null
          ? null
          : VideoNote.fromJson(json['video_note'] as Map<String, dynamic>),
      voice: json['voice'] == null
          ? null
          : Voice.fromJson(json['voice'] as Map<String, dynamic>),
      hasMediaSpoiler: json['has_media_spoiler'] as bool?,
      contact: json['contact'] == null
          ? null
          : Contact.fromJson(json['contact'] as Map<String, dynamic>),
      dice: json['dice'] == null
          ? null
          : Dice.fromJson(json['dice'] as Map<String, dynamic>),
      game: json['game'] == null
          ? null
          : Game.fromJson(json['game'] as Map<String, dynamic>),
      giveaway: json['giveaway'] == null
          ? null
          : Giveaway.fromJson(json['giveaway'] as Map<String, dynamic>),
      giveawayWinners: json['giveaway_winners'] == null
          ? null
          : GiveawayWinners.fromJson(
              json['giveaway_winners'] as Map<String, dynamic>,
            ),
      invoice: json['invoice'] == null
          ? null
          : Invoice.fromJson(json['invoice'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      poll: json['poll'] == null
          ? null
          : Poll.fromJson(json['poll'] as Map<String, dynamic>),
      venue: json['venue'] == null
          ? null
          : Venue.fromJson(json['venue'] as Map<String, dynamic>),
      paidMedia: json['paid_media'] == null
          ? null
          : PaidMediaInfo.fromJson(json['paid_media'] as Map<String, dynamic>),
      checklist: json['checklist'] == null
          ? null
          : Checklist.fromJson(json['checklist'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ExternalReplyInfoToJson(_ExternalReplyInfo instance) =>
    <String, dynamic>{
      'origin': instance.origin,
      'chat': ?instance.chat,
      'message_id': ?instance.messageId,
      'link_preview_options': ?instance.linkPreviewOptions,
      'animation': ?instance.animation,
      'audio': ?instance.audio,
      'document': ?instance.document,
      'photo': ?instance.photo,
      'sticker': ?instance.sticker,
      'story': ?instance.story,
      'video': ?instance.video,
      'video_note': ?instance.videoNote,
      'voice': ?instance.voice,
      'has_media_spoiler': ?instance.hasMediaSpoiler,
      'contact': ?instance.contact,
      'dice': ?instance.dice,
      'game': ?instance.game,
      'giveaway': ?instance.giveaway,
      'giveaway_winners': ?instance.giveawayWinners,
      'invoice': ?instance.invoice,
      'location': ?instance.location,
      'poll': ?instance.poll,
      'venue': ?instance.venue,
      'paid_media': ?instance.paidMedia,
      'checklist': ?instance.checklist,
    };
