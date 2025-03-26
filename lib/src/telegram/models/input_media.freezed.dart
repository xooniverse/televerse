// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InputMedia {
  /// Type of input media.
  @JsonKey(name: 'type')
  InputMediaType get type;

  /// The file to send
  @JsonKey(name: 'media')
  @InputFileConverter()
  InputFile get media;

  /// Optional. Caption of the photo to be sent, 0-1024 characters after
  /// entities parsing
  @JsonKey(name: 'caption')
  String? get caption;

  /// Optional. Mode for parsing entities in the photo caption. See formatting
  /// options for more details.
  @JsonKey(name: 'parse_mode')
  ParseMode? get parseMode;

  /// Optional. List of special entities that appear in the caption, which can
  /// be specified instead of parse_mode
  @JsonKey(name: 'caption_entities')
  List<MessageEntity>? get captionEntities;

  /// Create a copy of InputMedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InputMediaCopyWith<InputMedia> get copyWith =>
      _$InputMediaCopyWithImpl<InputMedia>(this as InputMedia, _$identity);

  /// Serializes this InputMedia to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'InputMedia(type: $type, media: $media, caption: $caption, parseMode: $parseMode, captionEntities: $captionEntities)';
  }
}

/// @nodoc
abstract mixin class $InputMediaCopyWith<$Res> {
  factory $InputMediaCopyWith(
          InputMedia value, $Res Function(InputMedia) _then) =
      _$InputMediaCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') InputMediaType type,
      @JsonKey(name: 'media') @InputFileConverter() InputFile media,
      @JsonKey(name: 'caption') String? caption,
      @JsonKey(name: 'parse_mode') ParseMode? parseMode,
      @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities});
}

/// @nodoc
class _$InputMediaCopyWithImpl<$Res> implements $InputMediaCopyWith<$Res> {
  _$InputMediaCopyWithImpl(this._self, this._then);

  final InputMedia _self;
  final $Res Function(InputMedia) _then;

  /// Create a copy of InputMedia
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? media = null,
    Object? caption = freezed,
    Object? parseMode = freezed,
    Object? captionEntities = freezed,
  }) {
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as InputMediaType,
      media: null == media
          ? _self.media
          : media // ignore: cast_nullable_to_non_nullable
              as InputFile,
      caption: freezed == caption
          ? _self.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      parseMode: freezed == parseMode
          ? _self.parseMode
          : parseMode // ignore: cast_nullable_to_non_nullable
              as ParseMode?,
      captionEntities: freezed == captionEntities
          ? _self.captionEntities
          : captionEntities // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class InputMediaPhoto implements InputMedia {
  const InputMediaPhoto(
      {@JsonKey(name: 'type') this.type = InputMediaType.photo,
      @JsonKey(name: 'media') @InputFileConverter() required this.media,
      @JsonKey(name: 'caption') this.caption,
      @JsonKey(name: 'parse_mode') this.parseMode,
      @JsonKey(name: 'caption_entities')
      final List<MessageEntity>? captionEntities,
      @JsonKey(name: 'has_spoiler') this.hasSpoiler,
      @JsonKey(name: 'show_caption_above_media') this.showCaptionAboveMedia,
      final String? $type})
      : _captionEntities = captionEntities,
        $type = $type ?? 'photo';

  /// Type of input media.
  @override
  @JsonKey(name: 'type')
  final InputMediaType type;

  /// The file to send
  @override
  @JsonKey(name: 'media')
  @InputFileConverter()
  final InputFile media;

  /// Optional. Caption of the photo to be sent, 0-1024 characters after
  /// entities parsing
  @override
  @JsonKey(name: 'caption')
  final String? caption;

  /// Optional. Mode for parsing entities in the photo caption. See formatting
  /// options for more details.
  @override
  @JsonKey(name: 'parse_mode')
  final ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can
  /// be specified instead of parse_mode
  final List<MessageEntity>? _captionEntities;

  /// Optional. List of special entities that appear in the caption, which can
  /// be specified instead of parse_mode
  @override
  @JsonKey(name: 'caption_entities')
  List<MessageEntity>? get captionEntities {
    final value = _captionEntities;
    if (value == null) return null;
    if (_captionEntities is EqualUnmodifiableListView) return _captionEntities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Optional. Pass True if the photo needs to be covered with a spoiler
  /// animation
  @JsonKey(name: 'has_spoiler')
  final bool? hasSpoiler;

  /// Optional. True, if the caption must be shown above the message media
  @JsonKey(name: 'show_caption_above_media')
  final bool? showCaptionAboveMedia;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of InputMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InputMediaPhotoCopyWith<InputMediaPhoto> get copyWith =>
      _$InputMediaPhotoCopyWithImpl<InputMediaPhoto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InputMediaPhotoToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'InputMedia.photo(type: $type, media: $media, caption: $caption, parseMode: $parseMode, captionEntities: $captionEntities, hasSpoiler: $hasSpoiler, showCaptionAboveMedia: $showCaptionAboveMedia)';
  }
}

/// @nodoc
abstract mixin class $InputMediaPhotoCopyWith<$Res>
    implements $InputMediaCopyWith<$Res> {
  factory $InputMediaPhotoCopyWith(
          InputMediaPhoto value, $Res Function(InputMediaPhoto) _then) =
      _$InputMediaPhotoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') InputMediaType type,
      @JsonKey(name: 'media') @InputFileConverter() InputFile media,
      @JsonKey(name: 'caption') String? caption,
      @JsonKey(name: 'parse_mode') ParseMode? parseMode,
      @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,
      @JsonKey(name: 'has_spoiler') bool? hasSpoiler,
      @JsonKey(name: 'show_caption_above_media') bool? showCaptionAboveMedia});
}

/// @nodoc
class _$InputMediaPhotoCopyWithImpl<$Res>
    implements $InputMediaPhotoCopyWith<$Res> {
  _$InputMediaPhotoCopyWithImpl(this._self, this._then);

  final InputMediaPhoto _self;
  final $Res Function(InputMediaPhoto) _then;

  /// Create a copy of InputMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? media = null,
    Object? caption = freezed,
    Object? parseMode = freezed,
    Object? captionEntities = freezed,
    Object? hasSpoiler = freezed,
    Object? showCaptionAboveMedia = freezed,
  }) {
    return _then(InputMediaPhoto(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as InputMediaType,
      media: null == media
          ? _self.media
          : media // ignore: cast_nullable_to_non_nullable
              as InputFile,
      caption: freezed == caption
          ? _self.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      parseMode: freezed == parseMode
          ? _self.parseMode
          : parseMode // ignore: cast_nullable_to_non_nullable
              as ParseMode?,
      captionEntities: freezed == captionEntities
          ? _self._captionEntities
          : captionEntities // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
      hasSpoiler: freezed == hasSpoiler
          ? _self.hasSpoiler
          : hasSpoiler // ignore: cast_nullable_to_non_nullable
              as bool?,
      showCaptionAboveMedia: freezed == showCaptionAboveMedia
          ? _self.showCaptionAboveMedia
          : showCaptionAboveMedia // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class InputMediaDocument implements InputMedia {
  const InputMediaDocument(
      {@JsonKey(name: 'type') this.type = InputMediaType.document,
      @JsonKey(name: 'media') @InputFileConverter() required this.media,
      @JsonKey(name: 'thumbnail') @InputFileConverter() this.thumbnail,
      @JsonKey(name: 'caption') this.caption,
      @JsonKey(name: 'parse_mode') this.parseMode,
      @JsonKey(name: 'caption_entities')
      final List<MessageEntity>? captionEntities,
      @JsonKey(name: 'disable_content_type_detection')
      this.disableContentTypeDetection,
      final String? $type})
      : _captionEntities = captionEntities,
        $type = $type ?? 'document';

  /// Type of input media.
  @override
  @JsonKey(name: 'type')
  final InputMediaType type;

  /// The file to send
  @override
  @JsonKey(name: 'media')
  @InputFileConverter()
  final InputFile media;

  /// Optional. Thumbnail of the file sent; can be ignored if thumbnail
  /// generation for the file is supported server-side.
  @JsonKey(name: 'thumbnail')
  @InputFileConverter()
  final InputFile? thumbnail;

  /// Optional. Caption of the document to be sent, 0-1024 characters after
  /// entities parsing
  @override
  @JsonKey(name: 'caption')
  final String? caption;

  /// Optional. Mode for parsing entities in the document caption. See
  /// formatting options for more details.
  @override
  @JsonKey(name: 'parse_mode')
  final ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can
  /// be specified instead of parse_mode
  final List<MessageEntity>? _captionEntities;

  /// Optional. List of special entities that appear in the caption, which can
  /// be specified instead of parse_mode
  @override
  @JsonKey(name: 'caption_entities')
  List<MessageEntity>? get captionEntities {
    final value = _captionEntities;
    if (value == null) return null;
    if (_captionEntities is EqualUnmodifiableListView) return _captionEntities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Optional. Disables automatic server-side content type detection for
  /// files uploaded using multipart/form-data. Always True, if the document
  /// is sent as part of an album.
  @JsonKey(name: 'disable_content_type_detection')
  final bool? disableContentTypeDetection;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of InputMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InputMediaDocumentCopyWith<InputMediaDocument> get copyWith =>
      _$InputMediaDocumentCopyWithImpl<InputMediaDocument>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InputMediaDocumentToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'InputMedia.document(type: $type, media: $media, thumbnail: $thumbnail, caption: $caption, parseMode: $parseMode, captionEntities: $captionEntities, disableContentTypeDetection: $disableContentTypeDetection)';
  }
}

/// @nodoc
abstract mixin class $InputMediaDocumentCopyWith<$Res>
    implements $InputMediaCopyWith<$Res> {
  factory $InputMediaDocumentCopyWith(
          InputMediaDocument value, $Res Function(InputMediaDocument) _then) =
      _$InputMediaDocumentCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') InputMediaType type,
      @JsonKey(name: 'media') @InputFileConverter() InputFile media,
      @JsonKey(name: 'thumbnail') @InputFileConverter() InputFile? thumbnail,
      @JsonKey(name: 'caption') String? caption,
      @JsonKey(name: 'parse_mode') ParseMode? parseMode,
      @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,
      @JsonKey(name: 'disable_content_type_detection')
      bool? disableContentTypeDetection});
}

/// @nodoc
class _$InputMediaDocumentCopyWithImpl<$Res>
    implements $InputMediaDocumentCopyWith<$Res> {
  _$InputMediaDocumentCopyWithImpl(this._self, this._then);

  final InputMediaDocument _self;
  final $Res Function(InputMediaDocument) _then;

  /// Create a copy of InputMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? media = null,
    Object? thumbnail = freezed,
    Object? caption = freezed,
    Object? parseMode = freezed,
    Object? captionEntities = freezed,
    Object? disableContentTypeDetection = freezed,
  }) {
    return _then(InputMediaDocument(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as InputMediaType,
      media: null == media
          ? _self.media
          : media // ignore: cast_nullable_to_non_nullable
              as InputFile,
      thumbnail: freezed == thumbnail
          ? _self.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as InputFile?,
      caption: freezed == caption
          ? _self.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      parseMode: freezed == parseMode
          ? _self.parseMode
          : parseMode // ignore: cast_nullable_to_non_nullable
              as ParseMode?,
      captionEntities: freezed == captionEntities
          ? _self._captionEntities
          : captionEntities // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
      disableContentTypeDetection: freezed == disableContentTypeDetection
          ? _self.disableContentTypeDetection
          : disableContentTypeDetection // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class InputMediaAnimation implements InputMedia {
  const InputMediaAnimation(
      {@JsonKey(name: 'type') this.type = InputMediaType.animation,
      @JsonKey(name: 'media') @InputFileConverter() required this.media,
      @JsonKey(name: 'thumbnail') @InputFileConverter() this.thumbnail,
      @JsonKey(name: 'caption') this.caption,
      @JsonKey(name: 'parse_mode') this.parseMode,
      @JsonKey(name: 'caption_entities')
      final List<MessageEntity>? captionEntities,
      @JsonKey(name: 'width') this.width,
      @JsonKey(name: 'height') this.height,
      @JsonKey(name: 'duration') this.duration,
      @JsonKey(name: 'has_spoiler') this.hasSpoiler,
      @JsonKey(name: 'show_caption_above_media') this.showCaptionAboveMedia,
      final String? $type})
      : _captionEntities = captionEntities,
        $type = $type ?? 'animation';

  /// Type of input media.
  @override
  @JsonKey(name: 'type')
  final InputMediaType type;

  /// The file to send
  @override
  @JsonKey(name: 'media')
  @InputFileConverter()
  final InputFile media;

  /// Optional. Thumbnail of the file sent.
  @JsonKey(name: 'thumbnail')
  @InputFileConverter()
  final InputFile? thumbnail;

  /// Optional. Caption of the video to be sent, 0-1024 characters after
  /// entities parsing
  @override
  @JsonKey(name: 'caption')
  final String? caption;

  /// Optional. Mode for parsing entities in the video caption. See formatting
  /// options for more details.
  @override
  @JsonKey(name: 'parse_mode')
  final ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can
  /// be specified instead of parse_mode
  final List<MessageEntity>? _captionEntities;

  /// Optional. List of special entities that appear in the caption, which can
  /// be specified instead of parse_mode
  @override
  @JsonKey(name: 'caption_entities')
  List<MessageEntity>? get captionEntities {
    final value = _captionEntities;
    if (value == null) return null;
    if (_captionEntities is EqualUnmodifiableListView) return _captionEntities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Optional. Animation width
  @JsonKey(name: 'width')
  final int? width;

  /// Optional. Animation height
  @JsonKey(name: 'height')
  final int? height;

  /// Optional. Animation duration in seconds
  @JsonKey(name: 'duration')
  final int? duration;

  /// Optional. Pass True if the animation needs to be covered with a spoiler
  /// animation
  @JsonKey(name: 'has_spoiler')
  final bool? hasSpoiler;

  /// Optional. True, if the caption must be shown above the message media
  @JsonKey(name: 'show_caption_above_media')
  final bool? showCaptionAboveMedia;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of InputMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InputMediaAnimationCopyWith<InputMediaAnimation> get copyWith =>
      _$InputMediaAnimationCopyWithImpl<InputMediaAnimation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InputMediaAnimationToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'InputMedia.animation(type: $type, media: $media, thumbnail: $thumbnail, caption: $caption, parseMode: $parseMode, captionEntities: $captionEntities, width: $width, height: $height, duration: $duration, hasSpoiler: $hasSpoiler, showCaptionAboveMedia: $showCaptionAboveMedia)';
  }
}

/// @nodoc
abstract mixin class $InputMediaAnimationCopyWith<$Res>
    implements $InputMediaCopyWith<$Res> {
  factory $InputMediaAnimationCopyWith(
          InputMediaAnimation value, $Res Function(InputMediaAnimation) _then) =
      _$InputMediaAnimationCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') InputMediaType type,
      @JsonKey(name: 'media') @InputFileConverter() InputFile media,
      @JsonKey(name: 'thumbnail') @InputFileConverter() InputFile? thumbnail,
      @JsonKey(name: 'caption') String? caption,
      @JsonKey(name: 'parse_mode') ParseMode? parseMode,
      @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,
      @JsonKey(name: 'width') int? width,
      @JsonKey(name: 'height') int? height,
      @JsonKey(name: 'duration') int? duration,
      @JsonKey(name: 'has_spoiler') bool? hasSpoiler,
      @JsonKey(name: 'show_caption_above_media') bool? showCaptionAboveMedia});
}

/// @nodoc
class _$InputMediaAnimationCopyWithImpl<$Res>
    implements $InputMediaAnimationCopyWith<$Res> {
  _$InputMediaAnimationCopyWithImpl(this._self, this._then);

  final InputMediaAnimation _self;
  final $Res Function(InputMediaAnimation) _then;

  /// Create a copy of InputMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? media = null,
    Object? thumbnail = freezed,
    Object? caption = freezed,
    Object? parseMode = freezed,
    Object? captionEntities = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? duration = freezed,
    Object? hasSpoiler = freezed,
    Object? showCaptionAboveMedia = freezed,
  }) {
    return _then(InputMediaAnimation(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as InputMediaType,
      media: null == media
          ? _self.media
          : media // ignore: cast_nullable_to_non_nullable
              as InputFile,
      thumbnail: freezed == thumbnail
          ? _self.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as InputFile?,
      caption: freezed == caption
          ? _self.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      parseMode: freezed == parseMode
          ? _self.parseMode
          : parseMode // ignore: cast_nullable_to_non_nullable
              as ParseMode?,
      captionEntities: freezed == captionEntities
          ? _self._captionEntities
          : captionEntities // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      hasSpoiler: freezed == hasSpoiler
          ? _self.hasSpoiler
          : hasSpoiler // ignore: cast_nullable_to_non_nullable
              as bool?,
      showCaptionAboveMedia: freezed == showCaptionAboveMedia
          ? _self.showCaptionAboveMedia
          : showCaptionAboveMedia // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class InputMediaAudio implements InputMedia {
  const InputMediaAudio(
      {@JsonKey(name: 'type') this.type = InputMediaType.audio,
      @JsonKey(name: 'media') @InputFileConverter() required this.media,
      @JsonKey(name: 'thumbnail') @InputFileConverter() this.thumbnail,
      @JsonKey(name: 'caption') this.caption,
      @JsonKey(name: 'parse_mode') this.parseMode,
      @JsonKey(name: 'caption_entities')
      final List<MessageEntity>? captionEntities,
      @JsonKey(name: 'duration') this.duration,
      @JsonKey(name: 'performer') this.performer,
      @JsonKey(name: 'title') this.title,
      final String? $type})
      : _captionEntities = captionEntities,
        $type = $type ?? 'audio';

  /// Type of input media.
  @override
  @JsonKey(name: 'type')
  final InputMediaType type;

  /// The file to send
  @override
  @JsonKey(name: 'media')
  @InputFileConverter()
  final InputFile media;

  /// Optional. Thumbnail of the file sent.
  @JsonKey(name: 'thumbnail')
  @InputFileConverter()
  final InputFile? thumbnail;

  /// Optional. Caption of the audio to be sent, 0-1024 characters after
  /// entities parsing
  @override
  @JsonKey(name: 'caption')
  final String? caption;

  /// Optional. Mode for parsing entities in the audio caption. See formatting
  /// options for more details.
  @override
  @JsonKey(name: 'parse_mode')
  final ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can
  /// be specified instead of parse_mode
  final List<MessageEntity>? _captionEntities;

  /// Optional. List of special entities that appear in the caption, which can
  /// be specified instead of parse_mode
  @override
  @JsonKey(name: 'caption_entities')
  List<MessageEntity>? get captionEntities {
    final value = _captionEntities;
    if (value == null) return null;
    if (_captionEntities is EqualUnmodifiableListView) return _captionEntities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Optional. Duration of the audio in seconds
  @JsonKey(name: 'duration')
  final int? duration;

  /// Optional. Performer of the audio
  @JsonKey(name: 'performer')
  final String? performer;

  /// Optional. Title of the audio
  @JsonKey(name: 'title')
  final String? title;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of InputMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InputMediaAudioCopyWith<InputMediaAudio> get copyWith =>
      _$InputMediaAudioCopyWithImpl<InputMediaAudio>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InputMediaAudioToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'InputMedia.audio(type: $type, media: $media, thumbnail: $thumbnail, caption: $caption, parseMode: $parseMode, captionEntities: $captionEntities, duration: $duration, performer: $performer, title: $title)';
  }
}

/// @nodoc
abstract mixin class $InputMediaAudioCopyWith<$Res>
    implements $InputMediaCopyWith<$Res> {
  factory $InputMediaAudioCopyWith(
          InputMediaAudio value, $Res Function(InputMediaAudio) _then) =
      _$InputMediaAudioCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') InputMediaType type,
      @JsonKey(name: 'media') @InputFileConverter() InputFile media,
      @JsonKey(name: 'thumbnail') @InputFileConverter() InputFile? thumbnail,
      @JsonKey(name: 'caption') String? caption,
      @JsonKey(name: 'parse_mode') ParseMode? parseMode,
      @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,
      @JsonKey(name: 'duration') int? duration,
      @JsonKey(name: 'performer') String? performer,
      @JsonKey(name: 'title') String? title});
}

/// @nodoc
class _$InputMediaAudioCopyWithImpl<$Res>
    implements $InputMediaAudioCopyWith<$Res> {
  _$InputMediaAudioCopyWithImpl(this._self, this._then);

  final InputMediaAudio _self;
  final $Res Function(InputMediaAudio) _then;

  /// Create a copy of InputMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? media = null,
    Object? thumbnail = freezed,
    Object? caption = freezed,
    Object? parseMode = freezed,
    Object? captionEntities = freezed,
    Object? duration = freezed,
    Object? performer = freezed,
    Object? title = freezed,
  }) {
    return _then(InputMediaAudio(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as InputMediaType,
      media: null == media
          ? _self.media
          : media // ignore: cast_nullable_to_non_nullable
              as InputFile,
      thumbnail: freezed == thumbnail
          ? _self.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as InputFile?,
      caption: freezed == caption
          ? _self.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      parseMode: freezed == parseMode
          ? _self.parseMode
          : parseMode // ignore: cast_nullable_to_non_nullable
              as ParseMode?,
      captionEntities: freezed == captionEntities
          ? _self._captionEntities
          : captionEntities // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
      duration: freezed == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      performer: freezed == performer
          ? _self.performer
          : performer // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class InputMediaVideo implements InputMedia {
  const InputMediaVideo(
      {@JsonKey(name: 'type') this.type = InputMediaType.video,
      @JsonKey(name: 'media') @InputFileConverter() required this.media,
      @JsonKey(name: 'thumbnail') @InputFileConverter() this.thumbnail,
      @JsonKey(name: 'caption') this.caption,
      @JsonKey(name: 'parse_mode') this.parseMode,
      @JsonKey(name: 'caption_entities')
      final List<MessageEntity>? captionEntities,
      @JsonKey(name: 'width') this.width,
      @JsonKey(name: 'height') this.height,
      @JsonKey(name: 'duration') this.duration,
      @JsonKey(name: 'supports_streaming') this.supportsStreaming,
      @JsonKey(name: 'has_spoiler') this.hasSpoiler,
      @JsonKey(name: 'show_caption_above_media') this.showCaptionAboveMedia,
      @JsonKey(name: 'start_timestamp') this.startTimestamp,
      @JsonKey(name: 'cover') @InputFileConverter() this.cover,
      final String? $type})
      : _captionEntities = captionEntities,
        $type = $type ?? 'video';

  /// Type of input media.
  @override
  @JsonKey(name: 'type')
  final InputMediaType type;

  /// The file to send
  @override
  @JsonKey(name: 'media')
  @InputFileConverter()
  final InputFile media;

  /// Optional. Thumbnail of the file sent.
  @JsonKey(name: 'thumbnail')
  @InputFileConverter()
  final InputFile? thumbnail;

  /// Optional. Caption of the video to be sent, 0-1024 characters after
  /// entities parsing
  @override
  @JsonKey(name: 'caption')
  final String? caption;

  /// Optional. Mode for parsing entities in the video caption. See formatting
  /// options for more details.
  @override
  @JsonKey(name: 'parse_mode')
  final ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can
  /// be specified instead of parse_mode
  final List<MessageEntity>? _captionEntities;

  /// Optional. List of special entities that appear in the caption, which can
  /// be specified instead of parse_mode
  @override
  @JsonKey(name: 'caption_entities')
  List<MessageEntity>? get captionEntities {
    final value = _captionEntities;
    if (value == null) return null;
    if (_captionEntities is EqualUnmodifiableListView) return _captionEntities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Optional. Video width
  @JsonKey(name: 'width')
  final int? width;

  /// Optional. Video height
  @JsonKey(name: 'height')
  final int? height;

  /// Optional. Video duration in seconds
  @JsonKey(name: 'duration')
  final int? duration;

  /// Optional. Pass True if the uploaded video is suitable for streaming
  @JsonKey(name: 'supports_streaming')
  final bool? supportsStreaming;

  /// Optional. Pass True if the video needs to be covered with a spoiler
  /// animation
  @JsonKey(name: 'has_spoiler')
  final bool? hasSpoiler;

  /// Optional. True, if the caption must be shown above the message media
  @JsonKey(name: 'show_caption_above_media')
  final bool? showCaptionAboveMedia;

  /// Optional. Timestamp in seconds from which the video will play in the
  /// message
  @JsonKey(name: 'start_timestamp')
  final int? startTimestamp;

  /// Optional. Cover for the video in the message.
  @JsonKey(name: 'cover')
  @InputFileConverter()
  final InputFile? cover;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of InputMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InputMediaVideoCopyWith<InputMediaVideo> get copyWith =>
      _$InputMediaVideoCopyWithImpl<InputMediaVideo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InputMediaVideoToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'InputMedia.video(type: $type, media: $media, thumbnail: $thumbnail, caption: $caption, parseMode: $parseMode, captionEntities: $captionEntities, width: $width, height: $height, duration: $duration, supportsStreaming: $supportsStreaming, hasSpoiler: $hasSpoiler, showCaptionAboveMedia: $showCaptionAboveMedia, startTimestamp: $startTimestamp, cover: $cover)';
  }
}

/// @nodoc
abstract mixin class $InputMediaVideoCopyWith<$Res>
    implements $InputMediaCopyWith<$Res> {
  factory $InputMediaVideoCopyWith(
          InputMediaVideo value, $Res Function(InputMediaVideo) _then) =
      _$InputMediaVideoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') InputMediaType type,
      @JsonKey(name: 'media') @InputFileConverter() InputFile media,
      @JsonKey(name: 'thumbnail') @InputFileConverter() InputFile? thumbnail,
      @JsonKey(name: 'caption') String? caption,
      @JsonKey(name: 'parse_mode') ParseMode? parseMode,
      @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,
      @JsonKey(name: 'width') int? width,
      @JsonKey(name: 'height') int? height,
      @JsonKey(name: 'duration') int? duration,
      @JsonKey(name: 'supports_streaming') bool? supportsStreaming,
      @JsonKey(name: 'has_spoiler') bool? hasSpoiler,
      @JsonKey(name: 'show_caption_above_media') bool? showCaptionAboveMedia,
      @JsonKey(name: 'start_timestamp') int? startTimestamp,
      @JsonKey(name: 'cover') @InputFileConverter() InputFile? cover});
}

/// @nodoc
class _$InputMediaVideoCopyWithImpl<$Res>
    implements $InputMediaVideoCopyWith<$Res> {
  _$InputMediaVideoCopyWithImpl(this._self, this._then);

  final InputMediaVideo _self;
  final $Res Function(InputMediaVideo) _then;

  /// Create a copy of InputMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? media = null,
    Object? thumbnail = freezed,
    Object? caption = freezed,
    Object? parseMode = freezed,
    Object? captionEntities = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? duration = freezed,
    Object? supportsStreaming = freezed,
    Object? hasSpoiler = freezed,
    Object? showCaptionAboveMedia = freezed,
    Object? startTimestamp = freezed,
    Object? cover = freezed,
  }) {
    return _then(InputMediaVideo(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as InputMediaType,
      media: null == media
          ? _self.media
          : media // ignore: cast_nullable_to_non_nullable
              as InputFile,
      thumbnail: freezed == thumbnail
          ? _self.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as InputFile?,
      caption: freezed == caption
          ? _self.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      parseMode: freezed == parseMode
          ? _self.parseMode
          : parseMode // ignore: cast_nullable_to_non_nullable
              as ParseMode?,
      captionEntities: freezed == captionEntities
          ? _self._captionEntities
          : captionEntities // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      supportsStreaming: freezed == supportsStreaming
          ? _self.supportsStreaming
          : supportsStreaming // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasSpoiler: freezed == hasSpoiler
          ? _self.hasSpoiler
          : hasSpoiler // ignore: cast_nullable_to_non_nullable
              as bool?,
      showCaptionAboveMedia: freezed == showCaptionAboveMedia
          ? _self.showCaptionAboveMedia
          : showCaptionAboveMedia // ignore: cast_nullable_to_non_nullable
              as bool?,
      startTimestamp: freezed == startTimestamp
          ? _self.startTimestamp
          : startTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      cover: freezed == cover
          ? _self.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as InputFile?,
    ));
  }
}
