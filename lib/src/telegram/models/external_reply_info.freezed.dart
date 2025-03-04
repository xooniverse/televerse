// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'external_reply_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExternalReplyInfo _$ExternalReplyInfoFromJson(Map<String, dynamic> json) {
  return _ExternalReplyInfo.fromJson(json);
}

/// @nodoc
mixin _$ExternalReplyInfo {
  /// Origin of the message replied to by the given message
  @JsonKey(name: 'origin')
  MessageOrigin get origin => throw _privateConstructorUsedError;

  /// Optional. Chat the original message belongs to. Available only if the chat is a supergroup or a channel.
  @JsonKey(name: 'chat')
  Chat? get chat => throw _privateConstructorUsedError;

  /// Optional. Unique message identifier inside the original chat. Available only if the original chat is a supergroup or a channel.
  @JsonKey(name: 'message_id')
  int? get messageId => throw _privateConstructorUsedError;

  /// Optional. Options used for link preview generation for the original message, if it is a text message
  @JsonKey(name: 'link_preview_options')
  LinkPreviewOptions? get linkPreviewOptions =>
      throw _privateConstructorUsedError;

  /// Optional. Message is an animation, information about the animation
  @JsonKey(name: 'animation')
  Animation? get animation => throw _privateConstructorUsedError;

  /// Optional. Message is an audio file, information about the file
  @JsonKey(name: 'audio')
  Audio? get audio => throw _privateConstructorUsedError;

  /// Optional. Message is a general file, information about the file
  @JsonKey(name: 'document')
  Document? get document => throw _privateConstructorUsedError;

  /// Optional. Message is a photo, available sizes of the photo
  @JsonKey(name: 'photo')
  List<PhotoSize>? get photo => throw _privateConstructorUsedError;

  /// Optional. Message is a sticker, information about the sticker
  @JsonKey(name: 'sticker')
  Sticker? get sticker => throw _privateConstructorUsedError;

  /// Optional. Message is a forwarded story
  @JsonKey(name: 'story')
  Story? get story => throw _privateConstructorUsedError;

  /// Optional. Message is a video, information about the video
  @JsonKey(name: 'video')
  Video? get video => throw _privateConstructorUsedError;

  /// Optional. Message is a video note, information about the video message
  @JsonKey(name: 'video_note')
  VideoNote? get videoNote => throw _privateConstructorUsedError;

  /// Optional. Message is a voice message, information about the file
  @JsonKey(name: 'voice')
  Voice? get voice => throw _privateConstructorUsedError;

  /// Optional. True, if the message media is covered by a spoiler animation
  @JsonKey(name: 'has_media_spoiler')
  bool? get hasMediaSpoiler => throw _privateConstructorUsedError;

  /// Optional. Message is a shared contact, information about the contact
  @JsonKey(name: 'contact')
  Contact? get contact => throw _privateConstructorUsedError;

  /// Optional. Message is a dice with random value
  @JsonKey(name: 'dice')
  Dice? get dice => throw _privateConstructorUsedError;

  /// Optional. Message is a game, information about the game
  @JsonKey(name: 'game')
  Game? get game => throw _privateConstructorUsedError;

  /// Optional. Message is a scheduled giveaway, information about the giveaway
  @JsonKey(name: 'giveaway')
  Giveaway? get giveaway => throw _privateConstructorUsedError;

  /// Optional. A giveaway with public winners was completed
  @JsonKey(name: 'giveaway_winners')
  GiveawayWinners? get giveawayWinners => throw _privateConstructorUsedError;

  /// Optional. Message is an invoice for a payment, information about the invoice
  @JsonKey(name: 'invoice')
  Invoice? get invoice => throw _privateConstructorUsedError;

  /// Optional. Message is a shared location, information about the location
  @JsonKey(name: 'location')
  Location? get location => throw _privateConstructorUsedError;

  /// Optional. Message is a native poll, information about the poll
  @JsonKey(name: 'poll')
  Poll? get poll => throw _privateConstructorUsedError;

  /// Optional. Message is a venue, information about the venue
  @JsonKey(name: 'venue')
  Venue? get venue => throw _privateConstructorUsedError;

  /// Optional. Message contains paid media; information about the paid media
  @JsonKey(name: 'paid_media')
  PaidMediaInfo? get paidMedia => throw _privateConstructorUsedError;

  /// Serializes this ExternalReplyInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExternalReplyInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExternalReplyInfoCopyWith<ExternalReplyInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExternalReplyInfoCopyWith<$Res> {
  factory $ExternalReplyInfoCopyWith(
          ExternalReplyInfo value, $Res Function(ExternalReplyInfo) then) =
      _$ExternalReplyInfoCopyWithImpl<$Res, ExternalReplyInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'origin') MessageOrigin origin,
      @JsonKey(name: 'chat') Chat? chat,
      @JsonKey(name: 'message_id') int? messageId,
      @JsonKey(name: 'link_preview_options')
      LinkPreviewOptions? linkPreviewOptions,
      @JsonKey(name: 'animation') Animation? animation,
      @JsonKey(name: 'audio') Audio? audio,
      @JsonKey(name: 'document') Document? document,
      @JsonKey(name: 'photo') List<PhotoSize>? photo,
      @JsonKey(name: 'sticker') Sticker? sticker,
      @JsonKey(name: 'story') Story? story,
      @JsonKey(name: 'video') Video? video,
      @JsonKey(name: 'video_note') VideoNote? videoNote,
      @JsonKey(name: 'voice') Voice? voice,
      @JsonKey(name: 'has_media_spoiler') bool? hasMediaSpoiler,
      @JsonKey(name: 'contact') Contact? contact,
      @JsonKey(name: 'dice') Dice? dice,
      @JsonKey(name: 'game') Game? game,
      @JsonKey(name: 'giveaway') Giveaway? giveaway,
      @JsonKey(name: 'giveaway_winners') GiveawayWinners? giveawayWinners,
      @JsonKey(name: 'invoice') Invoice? invoice,
      @JsonKey(name: 'location') Location? location,
      @JsonKey(name: 'poll') Poll? poll,
      @JsonKey(name: 'venue') Venue? venue,
      @JsonKey(name: 'paid_media') PaidMediaInfo? paidMedia});

  $MessageOriginCopyWith<$Res> get origin;
  $ChatCopyWith<$Res>? get chat;
  $LinkPreviewOptionsCopyWith<$Res>? get linkPreviewOptions;
  $AnimationCopyWith<$Res>? get animation;
  $AudioCopyWith<$Res>? get audio;
  $DocumentCopyWith<$Res>? get document;
  $StickerCopyWith<$Res>? get sticker;
  $StoryCopyWith<$Res>? get story;
  $VideoCopyWith<$Res>? get video;
  $VideoNoteCopyWith<$Res>? get videoNote;
  $VoiceCopyWith<$Res>? get voice;
  $ContactCopyWith<$Res>? get contact;
  $DiceCopyWith<$Res>? get dice;
  $GameCopyWith<$Res>? get game;
  $GiveawayCopyWith<$Res>? get giveaway;
  $GiveawayWinnersCopyWith<$Res>? get giveawayWinners;
  $InvoiceCopyWith<$Res>? get invoice;
  $LocationCopyWith<$Res>? get location;
  $PollCopyWith<$Res>? get poll;
  $VenueCopyWith<$Res>? get venue;
  $PaidMediaInfoCopyWith<$Res>? get paidMedia;
}

/// @nodoc
class _$ExternalReplyInfoCopyWithImpl<$Res, $Val extends ExternalReplyInfo>
    implements $ExternalReplyInfoCopyWith<$Res> {
  _$ExternalReplyInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExternalReplyInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? origin = null,
    Object? chat = freezed,
    Object? messageId = freezed,
    Object? linkPreviewOptions = freezed,
    Object? animation = freezed,
    Object? audio = freezed,
    Object? document = freezed,
    Object? photo = freezed,
    Object? sticker = freezed,
    Object? story = freezed,
    Object? video = freezed,
    Object? videoNote = freezed,
    Object? voice = freezed,
    Object? hasMediaSpoiler = freezed,
    Object? contact = freezed,
    Object? dice = freezed,
    Object? game = freezed,
    Object? giveaway = freezed,
    Object? giveawayWinners = freezed,
    Object? invoice = freezed,
    Object? location = freezed,
    Object? poll = freezed,
    Object? venue = freezed,
    Object? paidMedia = freezed,
  }) {
    return _then(_value.copyWith(
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as MessageOrigin,
      chat: freezed == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat?,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as int?,
      linkPreviewOptions: freezed == linkPreviewOptions
          ? _value.linkPreviewOptions
          : linkPreviewOptions // ignore: cast_nullable_to_non_nullable
              as LinkPreviewOptions?,
      animation: freezed == animation
          ? _value.animation
          : animation // ignore: cast_nullable_to_non_nullable
              as Animation?,
      audio: freezed == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as Audio?,
      document: freezed == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as Document?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as List<PhotoSize>?,
      sticker: freezed == sticker
          ? _value.sticker
          : sticker // ignore: cast_nullable_to_non_nullable
              as Sticker?,
      story: freezed == story
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
              as Story?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as Video?,
      videoNote: freezed == videoNote
          ? _value.videoNote
          : videoNote // ignore: cast_nullable_to_non_nullable
              as VideoNote?,
      voice: freezed == voice
          ? _value.voice
          : voice // ignore: cast_nullable_to_non_nullable
              as Voice?,
      hasMediaSpoiler: freezed == hasMediaSpoiler
          ? _value.hasMediaSpoiler
          : hasMediaSpoiler // ignore: cast_nullable_to_non_nullable
              as bool?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact?,
      dice: freezed == dice
          ? _value.dice
          : dice // ignore: cast_nullable_to_non_nullable
              as Dice?,
      game: freezed == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as Game?,
      giveaway: freezed == giveaway
          ? _value.giveaway
          : giveaway // ignore: cast_nullable_to_non_nullable
              as Giveaway?,
      giveawayWinners: freezed == giveawayWinners
          ? _value.giveawayWinners
          : giveawayWinners // ignore: cast_nullable_to_non_nullable
              as GiveawayWinners?,
      invoice: freezed == invoice
          ? _value.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as Invoice?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      poll: freezed == poll
          ? _value.poll
          : poll // ignore: cast_nullable_to_non_nullable
              as Poll?,
      venue: freezed == venue
          ? _value.venue
          : venue // ignore: cast_nullable_to_non_nullable
              as Venue?,
      paidMedia: freezed == paidMedia
          ? _value.paidMedia
          : paidMedia // ignore: cast_nullable_to_non_nullable
              as PaidMediaInfo?,
    ) as $Val);
  }

  /// Create a copy of ExternalReplyInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageOriginCopyWith<$Res> get origin {
    return $MessageOriginCopyWith<$Res>(_value.origin, (value) {
      return _then(_value.copyWith(origin: value) as $Val);
    });
  }

  /// Create a copy of ExternalReplyInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res>? get chat {
    if (_value.chat == null) {
      return null;
    }

    return $ChatCopyWith<$Res>(_value.chat!, (value) {
      return _then(_value.copyWith(chat: value) as $Val);
    });
  }

  /// Create a copy of ExternalReplyInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LinkPreviewOptionsCopyWith<$Res>? get linkPreviewOptions {
    if (_value.linkPreviewOptions == null) {
      return null;
    }

    return $LinkPreviewOptionsCopyWith<$Res>(_value.linkPreviewOptions!,
        (value) {
      return _then(_value.copyWith(linkPreviewOptions: value) as $Val);
    });
  }

  /// Create a copy of ExternalReplyInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnimationCopyWith<$Res>? get animation {
    if (_value.animation == null) {
      return null;
    }

    return $AnimationCopyWith<$Res>(_value.animation!, (value) {
      return _then(_value.copyWith(animation: value) as $Val);
    });
  }

  /// Create a copy of ExternalReplyInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AudioCopyWith<$Res>? get audio {
    if (_value.audio == null) {
      return null;
    }

    return $AudioCopyWith<$Res>(_value.audio!, (value) {
      return _then(_value.copyWith(audio: value) as $Val);
    });
  }

  /// Create a copy of ExternalReplyInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DocumentCopyWith<$Res>? get document {
    if (_value.document == null) {
      return null;
    }

    return $DocumentCopyWith<$Res>(_value.document!, (value) {
      return _then(_value.copyWith(document: value) as $Val);
    });
  }

  /// Create a copy of ExternalReplyInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StickerCopyWith<$Res>? get sticker {
    if (_value.sticker == null) {
      return null;
    }

    return $StickerCopyWith<$Res>(_value.sticker!, (value) {
      return _then(_value.copyWith(sticker: value) as $Val);
    });
  }

  /// Create a copy of ExternalReplyInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoryCopyWith<$Res>? get story {
    if (_value.story == null) {
      return null;
    }

    return $StoryCopyWith<$Res>(_value.story!, (value) {
      return _then(_value.copyWith(story: value) as $Val);
    });
  }

  /// Create a copy of ExternalReplyInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VideoCopyWith<$Res>? get video {
    if (_value.video == null) {
      return null;
    }

    return $VideoCopyWith<$Res>(_value.video!, (value) {
      return _then(_value.copyWith(video: value) as $Val);
    });
  }

  /// Create a copy of ExternalReplyInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VideoNoteCopyWith<$Res>? get videoNote {
    if (_value.videoNote == null) {
      return null;
    }

    return $VideoNoteCopyWith<$Res>(_value.videoNote!, (value) {
      return _then(_value.copyWith(videoNote: value) as $Val);
    });
  }

  /// Create a copy of ExternalReplyInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VoiceCopyWith<$Res>? get voice {
    if (_value.voice == null) {
      return null;
    }

    return $VoiceCopyWith<$Res>(_value.voice!, (value) {
      return _then(_value.copyWith(voice: value) as $Val);
    });
  }

  /// Create a copy of ExternalReplyInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactCopyWith<$Res>? get contact {
    if (_value.contact == null) {
      return null;
    }

    return $ContactCopyWith<$Res>(_value.contact!, (value) {
      return _then(_value.copyWith(contact: value) as $Val);
    });
  }

  /// Create a copy of ExternalReplyInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DiceCopyWith<$Res>? get dice {
    if (_value.dice == null) {
      return null;
    }

    return $DiceCopyWith<$Res>(_value.dice!, (value) {
      return _then(_value.copyWith(dice: value) as $Val);
    });
  }

  /// Create a copy of ExternalReplyInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameCopyWith<$Res>? get game {
    if (_value.game == null) {
      return null;
    }

    return $GameCopyWith<$Res>(_value.game!, (value) {
      return _then(_value.copyWith(game: value) as $Val);
    });
  }

  /// Create a copy of ExternalReplyInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GiveawayCopyWith<$Res>? get giveaway {
    if (_value.giveaway == null) {
      return null;
    }

    return $GiveawayCopyWith<$Res>(_value.giveaway!, (value) {
      return _then(_value.copyWith(giveaway: value) as $Val);
    });
  }

  /// Create a copy of ExternalReplyInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GiveawayWinnersCopyWith<$Res>? get giveawayWinners {
    if (_value.giveawayWinners == null) {
      return null;
    }

    return $GiveawayWinnersCopyWith<$Res>(_value.giveawayWinners!, (value) {
      return _then(_value.copyWith(giveawayWinners: value) as $Val);
    });
  }

  /// Create a copy of ExternalReplyInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InvoiceCopyWith<$Res>? get invoice {
    if (_value.invoice == null) {
      return null;
    }

    return $InvoiceCopyWith<$Res>(_value.invoice!, (value) {
      return _then(_value.copyWith(invoice: value) as $Val);
    });
  }

  /// Create a copy of ExternalReplyInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  /// Create a copy of ExternalReplyInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PollCopyWith<$Res>? get poll {
    if (_value.poll == null) {
      return null;
    }

    return $PollCopyWith<$Res>(_value.poll!, (value) {
      return _then(_value.copyWith(poll: value) as $Val);
    });
  }

  /// Create a copy of ExternalReplyInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VenueCopyWith<$Res>? get venue {
    if (_value.venue == null) {
      return null;
    }

    return $VenueCopyWith<$Res>(_value.venue!, (value) {
      return _then(_value.copyWith(venue: value) as $Val);
    });
  }

  /// Create a copy of ExternalReplyInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaidMediaInfoCopyWith<$Res>? get paidMedia {
    if (_value.paidMedia == null) {
      return null;
    }

    return $PaidMediaInfoCopyWith<$Res>(_value.paidMedia!, (value) {
      return _then(_value.copyWith(paidMedia: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExternalReplyInfoImplCopyWith<$Res>
    implements $ExternalReplyInfoCopyWith<$Res> {
  factory _$$ExternalReplyInfoImplCopyWith(_$ExternalReplyInfoImpl value,
          $Res Function(_$ExternalReplyInfoImpl) then) =
      __$$ExternalReplyInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'origin') MessageOrigin origin,
      @JsonKey(name: 'chat') Chat? chat,
      @JsonKey(name: 'message_id') int? messageId,
      @JsonKey(name: 'link_preview_options')
      LinkPreviewOptions? linkPreviewOptions,
      @JsonKey(name: 'animation') Animation? animation,
      @JsonKey(name: 'audio') Audio? audio,
      @JsonKey(name: 'document') Document? document,
      @JsonKey(name: 'photo') List<PhotoSize>? photo,
      @JsonKey(name: 'sticker') Sticker? sticker,
      @JsonKey(name: 'story') Story? story,
      @JsonKey(name: 'video') Video? video,
      @JsonKey(name: 'video_note') VideoNote? videoNote,
      @JsonKey(name: 'voice') Voice? voice,
      @JsonKey(name: 'has_media_spoiler') bool? hasMediaSpoiler,
      @JsonKey(name: 'contact') Contact? contact,
      @JsonKey(name: 'dice') Dice? dice,
      @JsonKey(name: 'game') Game? game,
      @JsonKey(name: 'giveaway') Giveaway? giveaway,
      @JsonKey(name: 'giveaway_winners') GiveawayWinners? giveawayWinners,
      @JsonKey(name: 'invoice') Invoice? invoice,
      @JsonKey(name: 'location') Location? location,
      @JsonKey(name: 'poll') Poll? poll,
      @JsonKey(name: 'venue') Venue? venue,
      @JsonKey(name: 'paid_media') PaidMediaInfo? paidMedia});

  @override
  $MessageOriginCopyWith<$Res> get origin;
  @override
  $ChatCopyWith<$Res>? get chat;
  @override
  $LinkPreviewOptionsCopyWith<$Res>? get linkPreviewOptions;
  @override
  $AnimationCopyWith<$Res>? get animation;
  @override
  $AudioCopyWith<$Res>? get audio;
  @override
  $DocumentCopyWith<$Res>? get document;
  @override
  $StickerCopyWith<$Res>? get sticker;
  @override
  $StoryCopyWith<$Res>? get story;
  @override
  $VideoCopyWith<$Res>? get video;
  @override
  $VideoNoteCopyWith<$Res>? get videoNote;
  @override
  $VoiceCopyWith<$Res>? get voice;
  @override
  $ContactCopyWith<$Res>? get contact;
  @override
  $DiceCopyWith<$Res>? get dice;
  @override
  $GameCopyWith<$Res>? get game;
  @override
  $GiveawayCopyWith<$Res>? get giveaway;
  @override
  $GiveawayWinnersCopyWith<$Res>? get giveawayWinners;
  @override
  $InvoiceCopyWith<$Res>? get invoice;
  @override
  $LocationCopyWith<$Res>? get location;
  @override
  $PollCopyWith<$Res>? get poll;
  @override
  $VenueCopyWith<$Res>? get venue;
  @override
  $PaidMediaInfoCopyWith<$Res>? get paidMedia;
}

/// @nodoc
class __$$ExternalReplyInfoImplCopyWithImpl<$Res>
    extends _$ExternalReplyInfoCopyWithImpl<$Res, _$ExternalReplyInfoImpl>
    implements _$$ExternalReplyInfoImplCopyWith<$Res> {
  __$$ExternalReplyInfoImplCopyWithImpl(_$ExternalReplyInfoImpl _value,
      $Res Function(_$ExternalReplyInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExternalReplyInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? origin = null,
    Object? chat = freezed,
    Object? messageId = freezed,
    Object? linkPreviewOptions = freezed,
    Object? animation = freezed,
    Object? audio = freezed,
    Object? document = freezed,
    Object? photo = freezed,
    Object? sticker = freezed,
    Object? story = freezed,
    Object? video = freezed,
    Object? videoNote = freezed,
    Object? voice = freezed,
    Object? hasMediaSpoiler = freezed,
    Object? contact = freezed,
    Object? dice = freezed,
    Object? game = freezed,
    Object? giveaway = freezed,
    Object? giveawayWinners = freezed,
    Object? invoice = freezed,
    Object? location = freezed,
    Object? poll = freezed,
    Object? venue = freezed,
    Object? paidMedia = freezed,
  }) {
    return _then(_$ExternalReplyInfoImpl(
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as MessageOrigin,
      chat: freezed == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat?,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as int?,
      linkPreviewOptions: freezed == linkPreviewOptions
          ? _value.linkPreviewOptions
          : linkPreviewOptions // ignore: cast_nullable_to_non_nullable
              as LinkPreviewOptions?,
      animation: freezed == animation
          ? _value.animation
          : animation // ignore: cast_nullable_to_non_nullable
              as Animation?,
      audio: freezed == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as Audio?,
      document: freezed == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as Document?,
      photo: freezed == photo
          ? _value._photo
          : photo // ignore: cast_nullable_to_non_nullable
              as List<PhotoSize>?,
      sticker: freezed == sticker
          ? _value.sticker
          : sticker // ignore: cast_nullable_to_non_nullable
              as Sticker?,
      story: freezed == story
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
              as Story?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as Video?,
      videoNote: freezed == videoNote
          ? _value.videoNote
          : videoNote // ignore: cast_nullable_to_non_nullable
              as VideoNote?,
      voice: freezed == voice
          ? _value.voice
          : voice // ignore: cast_nullable_to_non_nullable
              as Voice?,
      hasMediaSpoiler: freezed == hasMediaSpoiler
          ? _value.hasMediaSpoiler
          : hasMediaSpoiler // ignore: cast_nullable_to_non_nullable
              as bool?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact?,
      dice: freezed == dice
          ? _value.dice
          : dice // ignore: cast_nullable_to_non_nullable
              as Dice?,
      game: freezed == game
          ? _value.game
          : game // ignore: cast_nullable_to_non_nullable
              as Game?,
      giveaway: freezed == giveaway
          ? _value.giveaway
          : giveaway // ignore: cast_nullable_to_non_nullable
              as Giveaway?,
      giveawayWinners: freezed == giveawayWinners
          ? _value.giveawayWinners
          : giveawayWinners // ignore: cast_nullable_to_non_nullable
              as GiveawayWinners?,
      invoice: freezed == invoice
          ? _value.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as Invoice?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      poll: freezed == poll
          ? _value.poll
          : poll // ignore: cast_nullable_to_non_nullable
              as Poll?,
      venue: freezed == venue
          ? _value.venue
          : venue // ignore: cast_nullable_to_non_nullable
              as Venue?,
      paidMedia: freezed == paidMedia
          ? _value.paidMedia
          : paidMedia // ignore: cast_nullable_to_non_nullable
              as PaidMediaInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExternalReplyInfoImpl implements _ExternalReplyInfo {
  const _$ExternalReplyInfoImpl(
      {@JsonKey(name: 'origin') required this.origin,
      @JsonKey(name: 'chat') this.chat,
      @JsonKey(name: 'message_id') this.messageId,
      @JsonKey(name: 'link_preview_options') this.linkPreviewOptions,
      @JsonKey(name: 'animation') this.animation,
      @JsonKey(name: 'audio') this.audio,
      @JsonKey(name: 'document') this.document,
      @JsonKey(name: 'photo') final List<PhotoSize>? photo,
      @JsonKey(name: 'sticker') this.sticker,
      @JsonKey(name: 'story') this.story,
      @JsonKey(name: 'video') this.video,
      @JsonKey(name: 'video_note') this.videoNote,
      @JsonKey(name: 'voice') this.voice,
      @JsonKey(name: 'has_media_spoiler') this.hasMediaSpoiler,
      @JsonKey(name: 'contact') this.contact,
      @JsonKey(name: 'dice') this.dice,
      @JsonKey(name: 'game') this.game,
      @JsonKey(name: 'giveaway') this.giveaway,
      @JsonKey(name: 'giveaway_winners') this.giveawayWinners,
      @JsonKey(name: 'invoice') this.invoice,
      @JsonKey(name: 'location') this.location,
      @JsonKey(name: 'poll') this.poll,
      @JsonKey(name: 'venue') this.venue,
      @JsonKey(name: 'paid_media') this.paidMedia})
      : _photo = photo;

  factory _$ExternalReplyInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExternalReplyInfoImplFromJson(json);

  /// Origin of the message replied to by the given message
  @override
  @JsonKey(name: 'origin')
  final MessageOrigin origin;

  /// Optional. Chat the original message belongs to. Available only if the chat is a supergroup or a channel.
  @override
  @JsonKey(name: 'chat')
  final Chat? chat;

  /// Optional. Unique message identifier inside the original chat. Available only if the original chat is a supergroup or a channel.
  @override
  @JsonKey(name: 'message_id')
  final int? messageId;

  /// Optional. Options used for link preview generation for the original message, if it is a text message
  @override
  @JsonKey(name: 'link_preview_options')
  final LinkPreviewOptions? linkPreviewOptions;

  /// Optional. Message is an animation, information about the animation
  @override
  @JsonKey(name: 'animation')
  final Animation? animation;

  /// Optional. Message is an audio file, information about the file
  @override
  @JsonKey(name: 'audio')
  final Audio? audio;

  /// Optional. Message is a general file, information about the file
  @override
  @JsonKey(name: 'document')
  final Document? document;

  /// Optional. Message is a photo, available sizes of the photo
  final List<PhotoSize>? _photo;

  /// Optional. Message is a photo, available sizes of the photo
  @override
  @JsonKey(name: 'photo')
  List<PhotoSize>? get photo {
    final value = _photo;
    if (value == null) return null;
    if (_photo is EqualUnmodifiableListView) return _photo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Optional. Message is a sticker, information about the sticker
  @override
  @JsonKey(name: 'sticker')
  final Sticker? sticker;

  /// Optional. Message is a forwarded story
  @override
  @JsonKey(name: 'story')
  final Story? story;

  /// Optional. Message is a video, information about the video
  @override
  @JsonKey(name: 'video')
  final Video? video;

  /// Optional. Message is a video note, information about the video message
  @override
  @JsonKey(name: 'video_note')
  final VideoNote? videoNote;

  /// Optional. Message is a voice message, information about the file
  @override
  @JsonKey(name: 'voice')
  final Voice? voice;

  /// Optional. True, if the message media is covered by a spoiler animation
  @override
  @JsonKey(name: 'has_media_spoiler')
  final bool? hasMediaSpoiler;

  /// Optional. Message is a shared contact, information about the contact
  @override
  @JsonKey(name: 'contact')
  final Contact? contact;

  /// Optional. Message is a dice with random value
  @override
  @JsonKey(name: 'dice')
  final Dice? dice;

  /// Optional. Message is a game, information about the game
  @override
  @JsonKey(name: 'game')
  final Game? game;

  /// Optional. Message is a scheduled giveaway, information about the giveaway
  @override
  @JsonKey(name: 'giveaway')
  final Giveaway? giveaway;

  /// Optional. A giveaway with public winners was completed
  @override
  @JsonKey(name: 'giveaway_winners')
  final GiveawayWinners? giveawayWinners;

  /// Optional. Message is an invoice for a payment, information about the invoice
  @override
  @JsonKey(name: 'invoice')
  final Invoice? invoice;

  /// Optional. Message is a shared location, information about the location
  @override
  @JsonKey(name: 'location')
  final Location? location;

  /// Optional. Message is a native poll, information about the poll
  @override
  @JsonKey(name: 'poll')
  final Poll? poll;

  /// Optional. Message is a venue, information about the venue
  @override
  @JsonKey(name: 'venue')
  final Venue? venue;

  /// Optional. Message contains paid media; information about the paid media
  @override
  @JsonKey(name: 'paid_media')
  final PaidMediaInfo? paidMedia;

  @override
  String toString() {
    return 'ExternalReplyInfo(origin: $origin, chat: $chat, messageId: $messageId, linkPreviewOptions: $linkPreviewOptions, animation: $animation, audio: $audio, document: $document, photo: $photo, sticker: $sticker, story: $story, video: $video, videoNote: $videoNote, voice: $voice, hasMediaSpoiler: $hasMediaSpoiler, contact: $contact, dice: $dice, game: $game, giveaway: $giveaway, giveawayWinners: $giveawayWinners, invoice: $invoice, location: $location, poll: $poll, venue: $venue, paidMedia: $paidMedia)';
  }

  /// Create a copy of ExternalReplyInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExternalReplyInfoImplCopyWith<_$ExternalReplyInfoImpl> get copyWith =>
      __$$ExternalReplyInfoImplCopyWithImpl<_$ExternalReplyInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExternalReplyInfoImplToJson(
      this,
    );
  }
}

abstract class _ExternalReplyInfo implements ExternalReplyInfo {
  const factory _ExternalReplyInfo(
      {@JsonKey(name: 'origin') required final MessageOrigin origin,
      @JsonKey(name: 'chat') final Chat? chat,
      @JsonKey(name: 'message_id') final int? messageId,
      @JsonKey(name: 'link_preview_options')
      final LinkPreviewOptions? linkPreviewOptions,
      @JsonKey(name: 'animation') final Animation? animation,
      @JsonKey(name: 'audio') final Audio? audio,
      @JsonKey(name: 'document') final Document? document,
      @JsonKey(name: 'photo') final List<PhotoSize>? photo,
      @JsonKey(name: 'sticker') final Sticker? sticker,
      @JsonKey(name: 'story') final Story? story,
      @JsonKey(name: 'video') final Video? video,
      @JsonKey(name: 'video_note') final VideoNote? videoNote,
      @JsonKey(name: 'voice') final Voice? voice,
      @JsonKey(name: 'has_media_spoiler') final bool? hasMediaSpoiler,
      @JsonKey(name: 'contact') final Contact? contact,
      @JsonKey(name: 'dice') final Dice? dice,
      @JsonKey(name: 'game') final Game? game,
      @JsonKey(name: 'giveaway') final Giveaway? giveaway,
      @JsonKey(name: 'giveaway_winners') final GiveawayWinners? giveawayWinners,
      @JsonKey(name: 'invoice') final Invoice? invoice,
      @JsonKey(name: 'location') final Location? location,
      @JsonKey(name: 'poll') final Poll? poll,
      @JsonKey(name: 'venue') final Venue? venue,
      @JsonKey(name: 'paid_media')
      final PaidMediaInfo? paidMedia}) = _$ExternalReplyInfoImpl;

  factory _ExternalReplyInfo.fromJson(Map<String, dynamic> json) =
      _$ExternalReplyInfoImpl.fromJson;

  /// Origin of the message replied to by the given message
  @override
  @JsonKey(name: 'origin')
  MessageOrigin get origin;

  /// Optional. Chat the original message belongs to. Available only if the chat is a supergroup or a channel.
  @override
  @JsonKey(name: 'chat')
  Chat? get chat;

  /// Optional. Unique message identifier inside the original chat. Available only if the original chat is a supergroup or a channel.
  @override
  @JsonKey(name: 'message_id')
  int? get messageId;

  /// Optional. Options used for link preview generation for the original message, if it is a text message
  @override
  @JsonKey(name: 'link_preview_options')
  LinkPreviewOptions? get linkPreviewOptions;

  /// Optional. Message is an animation, information about the animation
  @override
  @JsonKey(name: 'animation')
  Animation? get animation;

  /// Optional. Message is an audio file, information about the file
  @override
  @JsonKey(name: 'audio')
  Audio? get audio;

  /// Optional. Message is a general file, information about the file
  @override
  @JsonKey(name: 'document')
  Document? get document;

  /// Optional. Message is a photo, available sizes of the photo
  @override
  @JsonKey(name: 'photo')
  List<PhotoSize>? get photo;

  /// Optional. Message is a sticker, information about the sticker
  @override
  @JsonKey(name: 'sticker')
  Sticker? get sticker;

  /// Optional. Message is a forwarded story
  @override
  @JsonKey(name: 'story')
  Story? get story;

  /// Optional. Message is a video, information about the video
  @override
  @JsonKey(name: 'video')
  Video? get video;

  /// Optional. Message is a video note, information about the video message
  @override
  @JsonKey(name: 'video_note')
  VideoNote? get videoNote;

  /// Optional. Message is a voice message, information about the file
  @override
  @JsonKey(name: 'voice')
  Voice? get voice;

  /// Optional. True, if the message media is covered by a spoiler animation
  @override
  @JsonKey(name: 'has_media_spoiler')
  bool? get hasMediaSpoiler;

  /// Optional. Message is a shared contact, information about the contact
  @override
  @JsonKey(name: 'contact')
  Contact? get contact;

  /// Optional. Message is a dice with random value
  @override
  @JsonKey(name: 'dice')
  Dice? get dice;

  /// Optional. Message is a game, information about the game
  @override
  @JsonKey(name: 'game')
  Game? get game;

  /// Optional. Message is a scheduled giveaway, information about the giveaway
  @override
  @JsonKey(name: 'giveaway')
  Giveaway? get giveaway;

  /// Optional. A giveaway with public winners was completed
  @override
  @JsonKey(name: 'giveaway_winners')
  GiveawayWinners? get giveawayWinners;

  /// Optional. Message is an invoice for a payment, information about the invoice
  @override
  @JsonKey(name: 'invoice')
  Invoice? get invoice;

  /// Optional. Message is a shared location, information about the location
  @override
  @JsonKey(name: 'location')
  Location? get location;

  /// Optional. Message is a native poll, information about the poll
  @override
  @JsonKey(name: 'poll')
  Poll? get poll;

  /// Optional. Message is a venue, information about the venue
  @override
  @JsonKey(name: 'venue')
  Venue? get venue;

  /// Optional. Message contains paid media; information about the paid media
  @override
  @JsonKey(name: 'paid_media')
  PaidMediaInfo? get paidMedia;

  /// Create a copy of ExternalReplyInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExternalReplyInfoImplCopyWith<_$ExternalReplyInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
