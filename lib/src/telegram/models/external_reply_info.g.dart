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
              json['link_preview_options'] as Map<String, dynamic>),
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
              json['giveaway_winners'] as Map<String, dynamic>),
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
      if (instance.chat case final value?) 'chat': value,
      if (instance.messageId case final value?) 'message_id': value,
      if (instance.linkPreviewOptions case final value?)
        'link_preview_options': value,
      if (instance.animation case final value?) 'animation': value,
      if (instance.audio case final value?) 'audio': value,
      if (instance.document case final value?) 'document': value,
      if (instance.photo case final value?) 'photo': value,
      if (instance.sticker case final value?) 'sticker': value,
      if (instance.story case final value?) 'story': value,
      if (instance.video case final value?) 'video': value,
      if (instance.videoNote case final value?) 'video_note': value,
      if (instance.voice case final value?) 'voice': value,
      if (instance.hasMediaSpoiler case final value?)
        'has_media_spoiler': value,
      if (instance.contact case final value?) 'contact': value,
      if (instance.dice case final value?) 'dice': value,
      if (instance.game case final value?) 'game': value,
      if (instance.giveaway case final value?) 'giveaway': value,
      if (instance.giveawayWinners case final value?) 'giveaway_winners': value,
      if (instance.invoice case final value?) 'invoice': value,
      if (instance.location case final value?) 'location': value,
      if (instance.poll case final value?) 'poll': value,
      if (instance.venue case final value?) 'venue': value,
      if (instance.paidMedia case final value?) 'paid_media': value,
      if (instance.checklist case final value?) 'checklist': value,
    };
