// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InputMedia {
  /// Type of input media.
  InputMediaType get type => throw _privateConstructorUsedError;

  /// The file to send
  @InputFileConverter()
  InputFile get media => throw _privateConstructorUsedError;

  /// Optional. Caption of the photo to be sent, 0-1024 characters after entities parsing
  String? get caption => throw _privateConstructorUsedError;

  /// Optional. Mode for parsing entities in the photo caption. See formatting options for more details.
  @JsonKey(name: 'parse_mode')
  ParseMode? get parseMode => throw _privateConstructorUsedError;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  @JsonKey(name: 'caption_entities')
  List<MessageEntity>? get captionEntities =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputMediaPhoto value) photo,
    required TResult Function(InputMediaDocument value) document,
    required TResult Function(InputMediaAnimation value) animation,
    required TResult Function(InputMediaAudio value) audio,
    required TResult Function(InputMediaVideo value) video,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputMediaPhoto value)? photo,
    TResult? Function(InputMediaDocument value)? document,
    TResult? Function(InputMediaAnimation value)? animation,
    TResult? Function(InputMediaAudio value)? audio,
    TResult? Function(InputMediaVideo value)? video,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputMediaPhoto value)? photo,
    TResult Function(InputMediaDocument value)? document,
    TResult Function(InputMediaAnimation value)? animation,
    TResult Function(InputMediaAudio value)? audio,
    TResult Function(InputMediaVideo value)? video,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this InputMedia to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InputMedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InputMediaCopyWith<InputMedia> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputMediaCopyWith<$Res> {
  factory $InputMediaCopyWith(
          InputMedia value, $Res Function(InputMedia) then) =
      _$InputMediaCopyWithImpl<$Res, InputMedia>;
  @useResult
  $Res call(
      {InputMediaType type,
      @InputFileConverter() InputFile media,
      String? caption,
      @JsonKey(name: 'parse_mode') ParseMode? parseMode,
      @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities});
}

/// @nodoc
class _$InputMediaCopyWithImpl<$Res, $Val extends InputMedia>
    implements $InputMediaCopyWith<$Res> {
  _$InputMediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InputMediaType,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as InputFile,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      parseMode: freezed == parseMode
          ? _value.parseMode
          : parseMode // ignore: cast_nullable_to_non_nullable
              as ParseMode?,
      captionEntities: freezed == captionEntities
          ? _value.captionEntities
          : captionEntities // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InputMediaPhotoImplCopyWith<$Res>
    implements $InputMediaCopyWith<$Res> {
  factory _$$InputMediaPhotoImplCopyWith(_$InputMediaPhotoImpl value,
          $Res Function(_$InputMediaPhotoImpl) then) =
      __$$InputMediaPhotoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {InputMediaType type,
      @InputFileConverter() InputFile media,
      String? caption,
      @JsonKey(name: 'parse_mode') ParseMode? parseMode,
      @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,
      @JsonKey(name: 'has_spoiler') bool? hasSpoiler,
      @JsonKey(name: 'show_caption_above_media') bool? showCaptionAboveMedia});
}

/// @nodoc
class __$$InputMediaPhotoImplCopyWithImpl<$Res>
    extends _$InputMediaCopyWithImpl<$Res, _$InputMediaPhotoImpl>
    implements _$$InputMediaPhotoImplCopyWith<$Res> {
  __$$InputMediaPhotoImplCopyWithImpl(
      _$InputMediaPhotoImpl _value, $Res Function(_$InputMediaPhotoImpl) _then)
      : super(_value, _then);

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
    Object? hasSpoiler = freezed,
    Object? showCaptionAboveMedia = freezed,
  }) {
    return _then(_$InputMediaPhotoImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InputMediaType,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as InputFile,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      parseMode: freezed == parseMode
          ? _value.parseMode
          : parseMode // ignore: cast_nullable_to_non_nullable
              as ParseMode?,
      captionEntities: freezed == captionEntities
          ? _value._captionEntities
          : captionEntities // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
      hasSpoiler: freezed == hasSpoiler
          ? _value.hasSpoiler
          : hasSpoiler // ignore: cast_nullable_to_non_nullable
              as bool?,
      showCaptionAboveMedia: freezed == showCaptionAboveMedia
          ? _value.showCaptionAboveMedia
          : showCaptionAboveMedia // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$InputMediaPhotoImpl implements InputMediaPhoto {
  const _$InputMediaPhotoImpl(
      {this.type = InputMediaType.photo,
      @InputFileConverter() required this.media,
      this.caption,
      @JsonKey(name: 'parse_mode') this.parseMode,
      @JsonKey(name: 'caption_entities')
      final List<MessageEntity>? captionEntities,
      @JsonKey(name: 'has_spoiler') this.hasSpoiler,
      @JsonKey(name: 'show_caption_above_media') this.showCaptionAboveMedia,
      final String? $type})
      : assert(type == InputMediaType.photo, '`type` must be InputMedia.photo'),
        _captionEntities = captionEntities,
        $type = $type ?? 'photo';

  /// Type of input media.
  @override
  @JsonKey()
  final InputMediaType type;

  /// The file to send
  @override
  @InputFileConverter()
  final InputFile media;

  /// Optional. Caption of the photo to be sent, 0-1024 characters after entities parsing
  @override
  final String? caption;

  /// Optional. Mode for parsing entities in the photo caption. See formatting options for more details.
  @override
  @JsonKey(name: 'parse_mode')
  final ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  final List<MessageEntity>? _captionEntities;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  @override
  @JsonKey(name: 'caption_entities')
  List<MessageEntity>? get captionEntities {
    final value = _captionEntities;
    if (value == null) return null;
    if (_captionEntities is EqualUnmodifiableListView) return _captionEntities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Optional. Pass True if the photo needs to be covered with a spoiler animation
  @override
  @JsonKey(name: 'has_spoiler')
  final bool? hasSpoiler;

  /// Optional. True, if the caption must be shown above the message media
  @override
  @JsonKey(name: 'show_caption_above_media')
  final bool? showCaptionAboveMedia;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'InputMedia.photo(type: $type, media: $media, caption: $caption, parseMode: $parseMode, captionEntities: $captionEntities, hasSpoiler: $hasSpoiler, showCaptionAboveMedia: $showCaptionAboveMedia)';
  }

  /// Create a copy of InputMedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InputMediaPhotoImplCopyWith<_$InputMediaPhotoImpl> get copyWith =>
      __$$InputMediaPhotoImplCopyWithImpl<_$InputMediaPhotoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputMediaPhoto value) photo,
    required TResult Function(InputMediaDocument value) document,
    required TResult Function(InputMediaAnimation value) animation,
    required TResult Function(InputMediaAudio value) audio,
    required TResult Function(InputMediaVideo value) video,
  }) {
    return photo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputMediaPhoto value)? photo,
    TResult? Function(InputMediaDocument value)? document,
    TResult? Function(InputMediaAnimation value)? animation,
    TResult? Function(InputMediaAudio value)? audio,
    TResult? Function(InputMediaVideo value)? video,
  }) {
    return photo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputMediaPhoto value)? photo,
    TResult Function(InputMediaDocument value)? document,
    TResult Function(InputMediaAnimation value)? animation,
    TResult Function(InputMediaAudio value)? audio,
    TResult Function(InputMediaVideo value)? video,
    required TResult orElse(),
  }) {
    if (photo != null) {
      return photo(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InputMediaPhotoImplToJson(
      this,
    );
  }
}

abstract class InputMediaPhoto implements InputMedia {
  const factory InputMediaPhoto(
      {final InputMediaType type,
      @InputFileConverter() required final InputFile media,
      final String? caption,
      @JsonKey(name: 'parse_mode') final ParseMode? parseMode,
      @JsonKey(name: 'caption_entities')
      final List<MessageEntity>? captionEntities,
      @JsonKey(name: 'has_spoiler') final bool? hasSpoiler,
      @JsonKey(name: 'show_caption_above_media')
      final bool? showCaptionAboveMedia}) = _$InputMediaPhotoImpl;

  /// Type of input media.
  @override
  InputMediaType get type;

  /// The file to send
  @override
  @InputFileConverter()
  InputFile get media;

  /// Optional. Caption of the photo to be sent, 0-1024 characters after entities parsing
  @override
  String? get caption;

  /// Optional. Mode for parsing entities in the photo caption. See formatting options for more details.
  @override
  @JsonKey(name: 'parse_mode')
  ParseMode? get parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  @override
  @JsonKey(name: 'caption_entities')
  List<MessageEntity>? get captionEntities;

  /// Optional. Pass True if the photo needs to be covered with a spoiler animation
  @JsonKey(name: 'has_spoiler')
  bool? get hasSpoiler;

  /// Optional. True, if the caption must be shown above the message media
  @JsonKey(name: 'show_caption_above_media')
  bool? get showCaptionAboveMedia;

  /// Create a copy of InputMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InputMediaPhotoImplCopyWith<_$InputMediaPhotoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InputMediaDocumentImplCopyWith<$Res>
    implements $InputMediaCopyWith<$Res> {
  factory _$$InputMediaDocumentImplCopyWith(_$InputMediaDocumentImpl value,
          $Res Function(_$InputMediaDocumentImpl) then) =
      __$$InputMediaDocumentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {InputMediaType type,
      @InputFileConverter() InputFile media,
      @InputFileConverter() InputFile? thumbnail,
      String? caption,
      @JsonKey(name: 'parse_mode') ParseMode? parseMode,
      @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,
      @JsonKey(name: 'disable_content_type_detection')
      bool? disableContentTypeDetection});
}

/// @nodoc
class __$$InputMediaDocumentImplCopyWithImpl<$Res>
    extends _$InputMediaCopyWithImpl<$Res, _$InputMediaDocumentImpl>
    implements _$$InputMediaDocumentImplCopyWith<$Res> {
  __$$InputMediaDocumentImplCopyWithImpl(_$InputMediaDocumentImpl _value,
      $Res Function(_$InputMediaDocumentImpl) _then)
      : super(_value, _then);

  /// Create a copy of InputMedia
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? media = null,
    Object? thumbnail = freezed,
    Object? caption = freezed,
    Object? parseMode = freezed,
    Object? captionEntities = freezed,
    Object? disableContentTypeDetection = freezed,
  }) {
    return _then(_$InputMediaDocumentImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InputMediaType,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as InputFile,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as InputFile?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      parseMode: freezed == parseMode
          ? _value.parseMode
          : parseMode // ignore: cast_nullable_to_non_nullable
              as ParseMode?,
      captionEntities: freezed == captionEntities
          ? _value._captionEntities
          : captionEntities // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
      disableContentTypeDetection: freezed == disableContentTypeDetection
          ? _value.disableContentTypeDetection
          : disableContentTypeDetection // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$InputMediaDocumentImpl implements InputMediaDocument {
  const _$InputMediaDocumentImpl(
      {this.type = InputMediaType.document,
      @InputFileConverter() required this.media,
      @InputFileConverter() this.thumbnail,
      this.caption,
      @JsonKey(name: 'parse_mode') this.parseMode,
      @JsonKey(name: 'caption_entities')
      final List<MessageEntity>? captionEntities,
      @JsonKey(name: 'disable_content_type_detection')
      this.disableContentTypeDetection,
      final String? $type})
      : assert(
            type != InputMediaType.document, '`type` must be InputMedia.photo'),
        _captionEntities = captionEntities,
        $type = $type ?? 'document';

  /// Type of input media.
  @override
  @JsonKey()
  final InputMediaType type;

  /// The file to send
  @override
  @InputFileConverter()
  final InputFile media;

  /// Optional. Thumbnail of the file sent; can be ignored if thumbnail generation for the file is supported server-side.
  @override
  @InputFileConverter()
  final InputFile? thumbnail;

  /// Optional. Caption of the document to be sent, 0-1024 characters after entities parsing
  @override
  final String? caption;

  /// Optional. Mode for parsing entities in the document caption. See formatting options for more details.
  @override
  @JsonKey(name: 'parse_mode')
  final ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  final List<MessageEntity>? _captionEntities;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  @override
  @JsonKey(name: 'caption_entities')
  List<MessageEntity>? get captionEntities {
    final value = _captionEntities;
    if (value == null) return null;
    if (_captionEntities is EqualUnmodifiableListView) return _captionEntities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Optional. Disables automatic server-side content type detection for files uploaded using multipart/form-data. Always True, if the document is sent as part of an album.
  @override
  @JsonKey(name: 'disable_content_type_detection')
  final bool? disableContentTypeDetection;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'InputMedia.document(type: $type, media: $media, thumbnail: $thumbnail, caption: $caption, parseMode: $parseMode, captionEntities: $captionEntities, disableContentTypeDetection: $disableContentTypeDetection)';
  }

  /// Create a copy of InputMedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InputMediaDocumentImplCopyWith<_$InputMediaDocumentImpl> get copyWith =>
      __$$InputMediaDocumentImplCopyWithImpl<_$InputMediaDocumentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputMediaPhoto value) photo,
    required TResult Function(InputMediaDocument value) document,
    required TResult Function(InputMediaAnimation value) animation,
    required TResult Function(InputMediaAudio value) audio,
    required TResult Function(InputMediaVideo value) video,
  }) {
    return document(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputMediaPhoto value)? photo,
    TResult? Function(InputMediaDocument value)? document,
    TResult? Function(InputMediaAnimation value)? animation,
    TResult? Function(InputMediaAudio value)? audio,
    TResult? Function(InputMediaVideo value)? video,
  }) {
    return document?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputMediaPhoto value)? photo,
    TResult Function(InputMediaDocument value)? document,
    TResult Function(InputMediaAnimation value)? animation,
    TResult Function(InputMediaAudio value)? audio,
    TResult Function(InputMediaVideo value)? video,
    required TResult orElse(),
  }) {
    if (document != null) {
      return document(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InputMediaDocumentImplToJson(
      this,
    );
  }
}

abstract class InputMediaDocument implements InputMedia {
  const factory InputMediaDocument(
      {final InputMediaType type,
      @InputFileConverter() required final InputFile media,
      @InputFileConverter() final InputFile? thumbnail,
      final String? caption,
      @JsonKey(name: 'parse_mode') final ParseMode? parseMode,
      @JsonKey(name: 'caption_entities')
      final List<MessageEntity>? captionEntities,
      @JsonKey(name: 'disable_content_type_detection')
      final bool? disableContentTypeDetection}) = _$InputMediaDocumentImpl;

  /// Type of input media.
  @override
  InputMediaType get type;

  /// The file to send
  @override
  @InputFileConverter()
  InputFile get media;

  /// Optional. Thumbnail of the file sent; can be ignored if thumbnail generation for the file is supported server-side.
  @InputFileConverter()
  InputFile? get thumbnail;

  /// Optional. Caption of the document to be sent, 0-1024 characters after entities parsing
  @override
  String? get caption;

  /// Optional. Mode for parsing entities in the document caption. See formatting options for more details.
  @override
  @JsonKey(name: 'parse_mode')
  ParseMode? get parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  @override
  @JsonKey(name: 'caption_entities')
  List<MessageEntity>? get captionEntities;

  /// Optional. Disables automatic server-side content type detection for files uploaded using multipart/form-data. Always True, if the document is sent as part of an album.
  @JsonKey(name: 'disable_content_type_detection')
  bool? get disableContentTypeDetection;

  /// Create a copy of InputMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InputMediaDocumentImplCopyWith<_$InputMediaDocumentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InputMediaAnimationImplCopyWith<$Res>
    implements $InputMediaCopyWith<$Res> {
  factory _$$InputMediaAnimationImplCopyWith(_$InputMediaAnimationImpl value,
          $Res Function(_$InputMediaAnimationImpl) then) =
      __$$InputMediaAnimationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {InputMediaType type,
      @InputFileConverter() InputFile media,
      @InputFileConverter() InputFile? thumbnail,
      String? caption,
      @JsonKey(name: 'parse_mode') ParseMode? parseMode,
      @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,
      int? width,
      int? height,
      int? duration,
      @JsonKey(name: 'has_spoiler') bool? hasSpoiler,
      @JsonKey(name: 'show_caption_above_media') bool? showCaptionAboveMedia});
}

/// @nodoc
class __$$InputMediaAnimationImplCopyWithImpl<$Res>
    extends _$InputMediaCopyWithImpl<$Res, _$InputMediaAnimationImpl>
    implements _$$InputMediaAnimationImplCopyWith<$Res> {
  __$$InputMediaAnimationImplCopyWithImpl(_$InputMediaAnimationImpl _value,
      $Res Function(_$InputMediaAnimationImpl) _then)
      : super(_value, _then);

  /// Create a copy of InputMedia
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
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
    return _then(_$InputMediaAnimationImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InputMediaType,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as InputFile,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as InputFile?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      parseMode: freezed == parseMode
          ? _value.parseMode
          : parseMode // ignore: cast_nullable_to_non_nullable
              as ParseMode?,
      captionEntities: freezed == captionEntities
          ? _value._captionEntities
          : captionEntities // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      hasSpoiler: freezed == hasSpoiler
          ? _value.hasSpoiler
          : hasSpoiler // ignore: cast_nullable_to_non_nullable
              as bool?,
      showCaptionAboveMedia: freezed == showCaptionAboveMedia
          ? _value.showCaptionAboveMedia
          : showCaptionAboveMedia // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$InputMediaAnimationImpl implements InputMediaAnimation {
  const _$InputMediaAnimationImpl(
      {this.type = InputMediaType.animation,
      @InputFileConverter() required this.media,
      @InputFileConverter() this.thumbnail,
      this.caption,
      @JsonKey(name: 'parse_mode') this.parseMode,
      @JsonKey(name: 'caption_entities')
      final List<MessageEntity>? captionEntities,
      this.width,
      this.height,
      this.duration,
      @JsonKey(name: 'has_spoiler') this.hasSpoiler,
      @JsonKey(name: 'show_caption_above_media') this.showCaptionAboveMedia,
      final String? $type})
      : assert(type == InputMediaType.animation,
            '`type` must be InputMedia.animation'),
        _captionEntities = captionEntities,
        $type = $type ?? 'animation';

  /// Type of input media.
  @override
  @JsonKey()
  final InputMediaType type;

  /// The file to send
  @override
  @InputFileConverter()
  final InputFile media;

  /// Optional. Thumbnail of the file sent.
  @override
  @InputFileConverter()
  final InputFile? thumbnail;

  /// Optional. Caption of the video to be sent, 0-1024 characters after entities parsing
  @override
  final String? caption;

  /// Optional. Mode for parsing entities in the video caption. See formatting options for more details.
  @override
  @JsonKey(name: 'parse_mode')
  final ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  final List<MessageEntity>? _captionEntities;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
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
  @override
  final int? width;

  /// Optional. Animation height
  @override
  final int? height;

  /// Optional. Animation duration in seconds
  @override
  final int? duration;

  /// Optional. Pass True if the animation needs to be covered with a spoiler animation
  @override
  @JsonKey(name: 'has_spoiler')
  final bool? hasSpoiler;

  /// Optional. True, if the caption must be shown above the message media
  @override
  @JsonKey(name: 'show_caption_above_media')
  final bool? showCaptionAboveMedia;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'InputMedia.animation(type: $type, media: $media, thumbnail: $thumbnail, caption: $caption, parseMode: $parseMode, captionEntities: $captionEntities, width: $width, height: $height, duration: $duration, hasSpoiler: $hasSpoiler, showCaptionAboveMedia: $showCaptionAboveMedia)';
  }

  /// Create a copy of InputMedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InputMediaAnimationImplCopyWith<_$InputMediaAnimationImpl> get copyWith =>
      __$$InputMediaAnimationImplCopyWithImpl<_$InputMediaAnimationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputMediaPhoto value) photo,
    required TResult Function(InputMediaDocument value) document,
    required TResult Function(InputMediaAnimation value) animation,
    required TResult Function(InputMediaAudio value) audio,
    required TResult Function(InputMediaVideo value) video,
  }) {
    return animation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputMediaPhoto value)? photo,
    TResult? Function(InputMediaDocument value)? document,
    TResult? Function(InputMediaAnimation value)? animation,
    TResult? Function(InputMediaAudio value)? audio,
    TResult? Function(InputMediaVideo value)? video,
  }) {
    return animation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputMediaPhoto value)? photo,
    TResult Function(InputMediaDocument value)? document,
    TResult Function(InputMediaAnimation value)? animation,
    TResult Function(InputMediaAudio value)? audio,
    TResult Function(InputMediaVideo value)? video,
    required TResult orElse(),
  }) {
    if (animation != null) {
      return animation(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InputMediaAnimationImplToJson(
      this,
    );
  }
}

abstract class InputMediaAnimation implements InputMedia {
  const factory InputMediaAnimation(
      {final InputMediaType type,
      @InputFileConverter() required final InputFile media,
      @InputFileConverter() final InputFile? thumbnail,
      final String? caption,
      @JsonKey(name: 'parse_mode') final ParseMode? parseMode,
      @JsonKey(name: 'caption_entities')
      final List<MessageEntity>? captionEntities,
      final int? width,
      final int? height,
      final int? duration,
      @JsonKey(name: 'has_spoiler') final bool? hasSpoiler,
      @JsonKey(name: 'show_caption_above_media')
      final bool? showCaptionAboveMedia}) = _$InputMediaAnimationImpl;

  /// Type of input media.
  @override
  InputMediaType get type;

  /// The file to send
  @override
  @InputFileConverter()
  InputFile get media;

  /// Optional. Thumbnail of the file sent.
  @InputFileConverter()
  InputFile? get thumbnail;

  /// Optional. Caption of the video to be sent, 0-1024 characters after entities parsing
  @override
  String? get caption;

  /// Optional. Mode for parsing entities in the video caption. See formatting options for more details.
  @override
  @JsonKey(name: 'parse_mode')
  ParseMode? get parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  @override
  @JsonKey(name: 'caption_entities')
  List<MessageEntity>? get captionEntities;

  /// Optional. Animation width
  int? get width;

  /// Optional. Animation height
  int? get height;

  /// Optional. Animation duration in seconds
  int? get duration;

  /// Optional. Pass True if the animation needs to be covered with a spoiler animation
  @JsonKey(name: 'has_spoiler')
  bool? get hasSpoiler;

  /// Optional. True, if the caption must be shown above the message media
  @JsonKey(name: 'show_caption_above_media')
  bool? get showCaptionAboveMedia;

  /// Create a copy of InputMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InputMediaAnimationImplCopyWith<_$InputMediaAnimationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InputMediaAudioImplCopyWith<$Res>
    implements $InputMediaCopyWith<$Res> {
  factory _$$InputMediaAudioImplCopyWith(_$InputMediaAudioImpl value,
          $Res Function(_$InputMediaAudioImpl) then) =
      __$$InputMediaAudioImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {InputMediaType type,
      @InputFileConverter() InputFile media,
      @InputFileConverter() InputFile? thumbnail,
      String? caption,
      @JsonKey(name: 'parse_mode') ParseMode? parseMode,
      @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,
      int? duration,
      String? performer,
      String? title});
}

/// @nodoc
class __$$InputMediaAudioImplCopyWithImpl<$Res>
    extends _$InputMediaCopyWithImpl<$Res, _$InputMediaAudioImpl>
    implements _$$InputMediaAudioImplCopyWith<$Res> {
  __$$InputMediaAudioImplCopyWithImpl(
      _$InputMediaAudioImpl _value, $Res Function(_$InputMediaAudioImpl) _then)
      : super(_value, _then);

  /// Create a copy of InputMedia
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
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
    return _then(_$InputMediaAudioImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InputMediaType,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as InputFile,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as InputFile?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      parseMode: freezed == parseMode
          ? _value.parseMode
          : parseMode // ignore: cast_nullable_to_non_nullable
              as ParseMode?,
      captionEntities: freezed == captionEntities
          ? _value._captionEntities
          : captionEntities // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      performer: freezed == performer
          ? _value.performer
          : performer // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$InputMediaAudioImpl implements InputMediaAudio {
  const _$InputMediaAudioImpl(
      {this.type = InputMediaType.audio,
      @InputFileConverter() required this.media,
      @InputFileConverter() this.thumbnail,
      this.caption,
      @JsonKey(name: 'parse_mode') this.parseMode,
      @JsonKey(name: 'caption_entities')
      final List<MessageEntity>? captionEntities,
      this.duration,
      this.performer,
      this.title,
      final String? $type})
      : assert(type == InputMediaType.audio, '`type` must be InputMedia.audio'),
        _captionEntities = captionEntities,
        $type = $type ?? 'audio';

  /// Type of input media.
  @override
  @JsonKey()
  final InputMediaType type;

  /// The file to send
  @override
  @InputFileConverter()
  final InputFile media;

  /// Optional. Thumbnail of the file sent.
  @override
  @InputFileConverter()
  final InputFile? thumbnail;

  /// Optional. Caption of the audio to be sent, 0-1024 characters after entities parsing
  @override
  final String? caption;

  /// Optional. Mode for parsing entities in the audio caption. See formatting options for more details.
  @override
  @JsonKey(name: 'parse_mode')
  final ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  final List<MessageEntity>? _captionEntities;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
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
  @override
  final int? duration;

  /// Optional. Performer of the audio
  @override
  final String? performer;

  /// Optional. Title of the audio
  @override
  final String? title;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'InputMedia.audio(type: $type, media: $media, thumbnail: $thumbnail, caption: $caption, parseMode: $parseMode, captionEntities: $captionEntities, duration: $duration, performer: $performer, title: $title)';
  }

  /// Create a copy of InputMedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InputMediaAudioImplCopyWith<_$InputMediaAudioImpl> get copyWith =>
      __$$InputMediaAudioImplCopyWithImpl<_$InputMediaAudioImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputMediaPhoto value) photo,
    required TResult Function(InputMediaDocument value) document,
    required TResult Function(InputMediaAnimation value) animation,
    required TResult Function(InputMediaAudio value) audio,
    required TResult Function(InputMediaVideo value) video,
  }) {
    return audio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputMediaPhoto value)? photo,
    TResult? Function(InputMediaDocument value)? document,
    TResult? Function(InputMediaAnimation value)? animation,
    TResult? Function(InputMediaAudio value)? audio,
    TResult? Function(InputMediaVideo value)? video,
  }) {
    return audio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputMediaPhoto value)? photo,
    TResult Function(InputMediaDocument value)? document,
    TResult Function(InputMediaAnimation value)? animation,
    TResult Function(InputMediaAudio value)? audio,
    TResult Function(InputMediaVideo value)? video,
    required TResult orElse(),
  }) {
    if (audio != null) {
      return audio(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InputMediaAudioImplToJson(
      this,
    );
  }
}

abstract class InputMediaAudio implements InputMedia {
  const factory InputMediaAudio(
      {final InputMediaType type,
      @InputFileConverter() required final InputFile media,
      @InputFileConverter() final InputFile? thumbnail,
      final String? caption,
      @JsonKey(name: 'parse_mode') final ParseMode? parseMode,
      @JsonKey(name: 'caption_entities')
      final List<MessageEntity>? captionEntities,
      final int? duration,
      final String? performer,
      final String? title}) = _$InputMediaAudioImpl;

  /// Type of input media.
  @override
  InputMediaType get type;

  /// The file to send
  @override
  @InputFileConverter()
  InputFile get media;

  /// Optional. Thumbnail of the file sent.
  @InputFileConverter()
  InputFile? get thumbnail;

  /// Optional. Caption of the audio to be sent, 0-1024 characters after entities parsing
  @override
  String? get caption;

  /// Optional. Mode for parsing entities in the audio caption. See formatting options for more details.
  @override
  @JsonKey(name: 'parse_mode')
  ParseMode? get parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  @override
  @JsonKey(name: 'caption_entities')
  List<MessageEntity>? get captionEntities;

  /// Optional. Duration of the audio in seconds
  int? get duration;

  /// Optional. Performer of the audio
  String? get performer;

  /// Optional. Title of the audio
  String? get title;

  /// Create a copy of InputMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InputMediaAudioImplCopyWith<_$InputMediaAudioImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InputMediaVideoImplCopyWith<$Res>
    implements $InputMediaCopyWith<$Res> {
  factory _$$InputMediaVideoImplCopyWith(_$InputMediaVideoImpl value,
          $Res Function(_$InputMediaVideoImpl) then) =
      __$$InputMediaVideoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {InputMediaType type,
      @InputFileConverter() InputFile media,
      @InputFileConverter() InputFile? thumbnail,
      String? caption,
      @JsonKey(name: 'parse_mode') ParseMode? parseMode,
      @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,
      int? width,
      int? height,
      int? duration,
      @JsonKey(name: 'supports_streaming') bool? supportsStreaming,
      @JsonKey(name: 'has_spoiler') bool? hasSpoiler,
      @JsonKey(name: 'show_caption_above_media') bool? showCaptionAboveMedia,
      @JsonKey(name: 'start_timestamp') int? startTimestamp,
      @InputFileConverter() InputFile? cover});
}

/// @nodoc
class __$$InputMediaVideoImplCopyWithImpl<$Res>
    extends _$InputMediaCopyWithImpl<$Res, _$InputMediaVideoImpl>
    implements _$$InputMediaVideoImplCopyWith<$Res> {
  __$$InputMediaVideoImplCopyWithImpl(
      _$InputMediaVideoImpl _value, $Res Function(_$InputMediaVideoImpl) _then)
      : super(_value, _then);

  /// Create a copy of InputMedia
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
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
    return _then(_$InputMediaVideoImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InputMediaType,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as InputFile,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as InputFile?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      parseMode: freezed == parseMode
          ? _value.parseMode
          : parseMode // ignore: cast_nullable_to_non_nullable
              as ParseMode?,
      captionEntities: freezed == captionEntities
          ? _value._captionEntities
          : captionEntities // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      supportsStreaming: freezed == supportsStreaming
          ? _value.supportsStreaming
          : supportsStreaming // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasSpoiler: freezed == hasSpoiler
          ? _value.hasSpoiler
          : hasSpoiler // ignore: cast_nullable_to_non_nullable
              as bool?,
      showCaptionAboveMedia: freezed == showCaptionAboveMedia
          ? _value.showCaptionAboveMedia
          : showCaptionAboveMedia // ignore: cast_nullable_to_non_nullable
              as bool?,
      startTimestamp: freezed == startTimestamp
          ? _value.startTimestamp
          : startTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as InputFile?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$InputMediaVideoImpl implements InputMediaVideo {
  const _$InputMediaVideoImpl(
      {this.type = InputMediaType.video,
      @InputFileConverter() required this.media,
      @InputFileConverter() this.thumbnail,
      this.caption,
      @JsonKey(name: 'parse_mode') this.parseMode,
      @JsonKey(name: 'caption_entities')
      final List<MessageEntity>? captionEntities,
      this.width,
      this.height,
      this.duration,
      @JsonKey(name: 'supports_streaming') this.supportsStreaming,
      @JsonKey(name: 'has_spoiler') this.hasSpoiler,
      @JsonKey(name: 'show_caption_above_media') this.showCaptionAboveMedia,
      @JsonKey(name: 'start_timestamp') this.startTimestamp,
      @InputFileConverter() this.cover,
      final String? $type})
      : assert(type == InputMediaType.video, '`type` must be InputMedia.video'),
        _captionEntities = captionEntities,
        $type = $type ?? 'video';

  /// Type of input media.
  @override
  @JsonKey()
  final InputMediaType type;

  /// The file to send
  @override
  @InputFileConverter()
  final InputFile media;

  /// Optional. Thumbnail of the file sent.
  @override
  @InputFileConverter()
  final InputFile? thumbnail;

  /// Optional. Caption of the video to be sent, 0-1024 characters after entities parsing
  @override
  final String? caption;

  /// Optional. Mode for parsing entities in the video caption. See formatting options for more details.
  @override
  @JsonKey(name: 'parse_mode')
  final ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  final List<MessageEntity>? _captionEntities;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
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
  @override
  final int? width;

  /// Optional. Video height
  @override
  final int? height;

  /// Optional. Video duration in seconds
  @override
  final int? duration;

  /// Optional. Pass True if the uploaded video is suitable for streaming
  @override
  @JsonKey(name: 'supports_streaming')
  final bool? supportsStreaming;

  /// Optional. Pass True if the video needs to be covered with a spoiler animation
  @override
  @JsonKey(name: 'has_spoiler')
  final bool? hasSpoiler;

  /// Optional. True, if the caption must be shown above the message media
  @override
  @JsonKey(name: 'show_caption_above_media')
  final bool? showCaptionAboveMedia;

  /// Optional. Timestamp in seconds from which the video will play in the message
  @override
  @JsonKey(name: 'start_timestamp')
  final int? startTimestamp;

  /// Optional. Cover for the video in the message.
  @override
  @InputFileConverter()
  final InputFile? cover;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'InputMedia.video(type: $type, media: $media, thumbnail: $thumbnail, caption: $caption, parseMode: $parseMode, captionEntities: $captionEntities, width: $width, height: $height, duration: $duration, supportsStreaming: $supportsStreaming, hasSpoiler: $hasSpoiler, showCaptionAboveMedia: $showCaptionAboveMedia, startTimestamp: $startTimestamp, cover: $cover)';
  }

  /// Create a copy of InputMedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InputMediaVideoImplCopyWith<_$InputMediaVideoImpl> get copyWith =>
      __$$InputMediaVideoImplCopyWithImpl<_$InputMediaVideoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputMediaPhoto value) photo,
    required TResult Function(InputMediaDocument value) document,
    required TResult Function(InputMediaAnimation value) animation,
    required TResult Function(InputMediaAudio value) audio,
    required TResult Function(InputMediaVideo value) video,
  }) {
    return video(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputMediaPhoto value)? photo,
    TResult? Function(InputMediaDocument value)? document,
    TResult? Function(InputMediaAnimation value)? animation,
    TResult? Function(InputMediaAudio value)? audio,
    TResult? Function(InputMediaVideo value)? video,
  }) {
    return video?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputMediaPhoto value)? photo,
    TResult Function(InputMediaDocument value)? document,
    TResult Function(InputMediaAnimation value)? animation,
    TResult Function(InputMediaAudio value)? audio,
    TResult Function(InputMediaVideo value)? video,
    required TResult orElse(),
  }) {
    if (video != null) {
      return video(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InputMediaVideoImplToJson(
      this,
    );
  }
}

abstract class InputMediaVideo implements InputMedia {
  const factory InputMediaVideo(
      {final InputMediaType type,
      @InputFileConverter() required final InputFile media,
      @InputFileConverter() final InputFile? thumbnail,
      final String? caption,
      @JsonKey(name: 'parse_mode') final ParseMode? parseMode,
      @JsonKey(name: 'caption_entities')
      final List<MessageEntity>? captionEntities,
      final int? width,
      final int? height,
      final int? duration,
      @JsonKey(name: 'supports_streaming') final bool? supportsStreaming,
      @JsonKey(name: 'has_spoiler') final bool? hasSpoiler,
      @JsonKey(name: 'show_caption_above_media')
      final bool? showCaptionAboveMedia,
      @JsonKey(name: 'start_timestamp') final int? startTimestamp,
      @InputFileConverter() final InputFile? cover}) = _$InputMediaVideoImpl;

  /// Type of input media.
  @override
  InputMediaType get type;

  /// The file to send
  @override
  @InputFileConverter()
  InputFile get media;

  /// Optional. Thumbnail of the file sent.
  @InputFileConverter()
  InputFile? get thumbnail;

  /// Optional. Caption of the video to be sent, 0-1024 characters after entities parsing
  @override
  String? get caption;

  /// Optional. Mode for parsing entities in the video caption. See formatting options for more details.
  @override
  @JsonKey(name: 'parse_mode')
  ParseMode? get parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  @override
  @JsonKey(name: 'caption_entities')
  List<MessageEntity>? get captionEntities;

  /// Optional. Video width
  int? get width;

  /// Optional. Video height
  int? get height;

  /// Optional. Video duration in seconds
  int? get duration;

  /// Optional. Pass True if the uploaded video is suitable for streaming
  @JsonKey(name: 'supports_streaming')
  bool? get supportsStreaming;

  /// Optional. Pass True if the video needs to be covered with a spoiler animation
  @JsonKey(name: 'has_spoiler')
  bool? get hasSpoiler;

  /// Optional. True, if the caption must be shown above the message media
  @JsonKey(name: 'show_caption_above_media')
  bool? get showCaptionAboveMedia;

  /// Optional. Timestamp in seconds from which the video will play in the message
  @JsonKey(name: 'start_timestamp')
  int? get startTimestamp;

  /// Optional. Cover for the video in the message.
  @InputFileConverter()
  InputFile? get cover;

  /// Create a copy of InputMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InputMediaVideoImplCopyWith<_$InputMediaVideoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
