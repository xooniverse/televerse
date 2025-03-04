// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inline_query_result_mpeg4_gif.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InlineQueryResultMpeg4Gif _$InlineQueryResultMpeg4GifFromJson(
    Map<String, dynamic> json) {
  return _InlineQueryResultMpeg4Gif.fromJson(json);
}

/// @nodoc
mixin _$InlineQueryResultMpeg4Gif {
  /// Type of the result, always [InlineQueryResultType.mpeg4Gif]
  @JsonKey(name: 'type')
  InlineQueryResultType get type => throw _privateConstructorUsedError;

  /// Unique identifier for this result, 1-64 Bytes
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;

  /// A valid URL for the MPEG4 file. File size must not exceed 1MB
  @JsonKey(name: 'mpeg4_url')
  String get mpeg4Url => throw _privateConstructorUsedError;

  /// URL of the static (JPEG or GIF) or animated (MPEG4) thumbnail for the result
  @JsonKey(name: 'thumbnail_url')
  String get thumbnailUrl => throw _privateConstructorUsedError;

  /// Optional. Video width
  @JsonKey(name: 'mpeg4_width')
  int? get mpeg4Width => throw _privateConstructorUsedError;

  /// Optional. Video height
  @JsonKey(name: 'mpeg4_height')
  int? get mpeg4Height => throw _privateConstructorUsedError;

  /// Optional. Video duration
  @JsonKey(name: 'mpeg4_duration')
  int? get mpeg4Duration => throw _privateConstructorUsedError;

  /// Optional. MIME type of the thumbnail, must be one of "image/jpeg", "image/gif", or "video/mp4". Defaults to "image/jpeg"
  @JsonKey(name: 'thumbnail_mime_type')
  String? get thumbnailMimeType => throw _privateConstructorUsedError;

  /// Optional. Title for the result
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;

  /// Optional. Caption of the MPEG-4 file to be sent, 0-1024 characters after entities parsing
  @JsonKey(name: 'caption')
  String? get caption => throw _privateConstructorUsedError;

  /// Optional. Mode for parsing entities in the caption. See formatting options for more details.
  @JsonKey(name: 'parse_mode')
  ParseMode? get parseMode => throw _privateConstructorUsedError;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  @JsonKey(name: 'caption_entities')
  List<MessageEntity>? get captionEntities =>
      throw _privateConstructorUsedError;

  /// Optional. Inline keyboard attached to the message
  @JsonKey(name: 'reply_markup')
  InlineKeyboardMarkup? get replyMarkup => throw _privateConstructorUsedError;

  /// Optional. Content of the message to be sent instead of the video animation
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  InputMessageContent? get inputMessageContent =>
      throw _privateConstructorUsedError;

  /// Optional. True, if the caption must be shown above the message media
  @JsonKey(name: 'show_caption_above_media')
  bool? get showCaptionAboveMedia => throw _privateConstructorUsedError;

  /// Serializes this InlineQueryResultMpeg4Gif to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InlineQueryResultMpeg4Gif
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InlineQueryResultMpeg4GifCopyWith<InlineQueryResultMpeg4Gif> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InlineQueryResultMpeg4GifCopyWith<$Res> {
  factory $InlineQueryResultMpeg4GifCopyWith(InlineQueryResultMpeg4Gif value,
          $Res Function(InlineQueryResultMpeg4Gif) then) =
      _$InlineQueryResultMpeg4GifCopyWithImpl<$Res, InlineQueryResultMpeg4Gif>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') InlineQueryResultType type,
      @JsonKey(name: 'id') String id,
      @JsonKey(name: 'mpeg4_url') String mpeg4Url,
      @JsonKey(name: 'thumbnail_url') String thumbnailUrl,
      @JsonKey(name: 'mpeg4_width') int? mpeg4Width,
      @JsonKey(name: 'mpeg4_height') int? mpeg4Height,
      @JsonKey(name: 'mpeg4_duration') int? mpeg4Duration,
      @JsonKey(name: 'thumbnail_mime_type') String? thumbnailMimeType,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'caption') String? caption,
      @JsonKey(name: 'parse_mode') ParseMode? parseMode,
      @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,
      @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,
      @JsonKey(name: 'input_message_content')
      @InputMessageContentConverter()
      InputMessageContent? inputMessageContent,
      @JsonKey(name: 'show_caption_above_media') bool? showCaptionAboveMedia});

  $InputMessageContentCopyWith<$Res>? get inputMessageContent;
}

/// @nodoc
class _$InlineQueryResultMpeg4GifCopyWithImpl<$Res,
        $Val extends InlineQueryResultMpeg4Gif>
    implements $InlineQueryResultMpeg4GifCopyWith<$Res> {
  _$InlineQueryResultMpeg4GifCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InlineQueryResultMpeg4Gif
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? id = null,
    Object? mpeg4Url = null,
    Object? thumbnailUrl = null,
    Object? mpeg4Width = freezed,
    Object? mpeg4Height = freezed,
    Object? mpeg4Duration = freezed,
    Object? thumbnailMimeType = freezed,
    Object? title = freezed,
    Object? caption = freezed,
    Object? parseMode = freezed,
    Object? captionEntities = freezed,
    Object? replyMarkup = freezed,
    Object? inputMessageContent = freezed,
    Object? showCaptionAboveMedia = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InlineQueryResultType,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      mpeg4Url: null == mpeg4Url
          ? _value.mpeg4Url
          : mpeg4Url // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      mpeg4Width: freezed == mpeg4Width
          ? _value.mpeg4Width
          : mpeg4Width // ignore: cast_nullable_to_non_nullable
              as int?,
      mpeg4Height: freezed == mpeg4Height
          ? _value.mpeg4Height
          : mpeg4Height // ignore: cast_nullable_to_non_nullable
              as int?,
      mpeg4Duration: freezed == mpeg4Duration
          ? _value.mpeg4Duration
          : mpeg4Duration // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnailMimeType: freezed == thumbnailMimeType
          ? _value.thumbnailMimeType
          : thumbnailMimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
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
      replyMarkup: freezed == replyMarkup
          ? _value.replyMarkup
          : replyMarkup // ignore: cast_nullable_to_non_nullable
              as InlineKeyboardMarkup?,
      inputMessageContent: freezed == inputMessageContent
          ? _value.inputMessageContent
          : inputMessageContent // ignore: cast_nullable_to_non_nullable
              as InputMessageContent?,
      showCaptionAboveMedia: freezed == showCaptionAboveMedia
          ? _value.showCaptionAboveMedia
          : showCaptionAboveMedia // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of InlineQueryResultMpeg4Gif
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InputMessageContentCopyWith<$Res>? get inputMessageContent {
    if (_value.inputMessageContent == null) {
      return null;
    }

    return $InputMessageContentCopyWith<$Res>(_value.inputMessageContent!,
        (value) {
      return _then(_value.copyWith(inputMessageContent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InlineQueryResultMpeg4GifImplCopyWith<$Res>
    implements $InlineQueryResultMpeg4GifCopyWith<$Res> {
  factory _$$InlineQueryResultMpeg4GifImplCopyWith(
          _$InlineQueryResultMpeg4GifImpl value,
          $Res Function(_$InlineQueryResultMpeg4GifImpl) then) =
      __$$InlineQueryResultMpeg4GifImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') InlineQueryResultType type,
      @JsonKey(name: 'id') String id,
      @JsonKey(name: 'mpeg4_url') String mpeg4Url,
      @JsonKey(name: 'thumbnail_url') String thumbnailUrl,
      @JsonKey(name: 'mpeg4_width') int? mpeg4Width,
      @JsonKey(name: 'mpeg4_height') int? mpeg4Height,
      @JsonKey(name: 'mpeg4_duration') int? mpeg4Duration,
      @JsonKey(name: 'thumbnail_mime_type') String? thumbnailMimeType,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'caption') String? caption,
      @JsonKey(name: 'parse_mode') ParseMode? parseMode,
      @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,
      @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,
      @JsonKey(name: 'input_message_content')
      @InputMessageContentConverter()
      InputMessageContent? inputMessageContent,
      @JsonKey(name: 'show_caption_above_media') bool? showCaptionAboveMedia});

  @override
  $InputMessageContentCopyWith<$Res>? get inputMessageContent;
}

/// @nodoc
class __$$InlineQueryResultMpeg4GifImplCopyWithImpl<$Res>
    extends _$InlineQueryResultMpeg4GifCopyWithImpl<$Res,
        _$InlineQueryResultMpeg4GifImpl>
    implements _$$InlineQueryResultMpeg4GifImplCopyWith<$Res> {
  __$$InlineQueryResultMpeg4GifImplCopyWithImpl(
      _$InlineQueryResultMpeg4GifImpl _value,
      $Res Function(_$InlineQueryResultMpeg4GifImpl) _then)
      : super(_value, _then);

  /// Create a copy of InlineQueryResultMpeg4Gif
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? id = null,
    Object? mpeg4Url = null,
    Object? thumbnailUrl = null,
    Object? mpeg4Width = freezed,
    Object? mpeg4Height = freezed,
    Object? mpeg4Duration = freezed,
    Object? thumbnailMimeType = freezed,
    Object? title = freezed,
    Object? caption = freezed,
    Object? parseMode = freezed,
    Object? captionEntities = freezed,
    Object? replyMarkup = freezed,
    Object? inputMessageContent = freezed,
    Object? showCaptionAboveMedia = freezed,
  }) {
    return _then(_$InlineQueryResultMpeg4GifImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InlineQueryResultType,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      mpeg4Url: null == mpeg4Url
          ? _value.mpeg4Url
          : mpeg4Url // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      mpeg4Width: freezed == mpeg4Width
          ? _value.mpeg4Width
          : mpeg4Width // ignore: cast_nullable_to_non_nullable
              as int?,
      mpeg4Height: freezed == mpeg4Height
          ? _value.mpeg4Height
          : mpeg4Height // ignore: cast_nullable_to_non_nullable
              as int?,
      mpeg4Duration: freezed == mpeg4Duration
          ? _value.mpeg4Duration
          : mpeg4Duration // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnailMimeType: freezed == thumbnailMimeType
          ? _value.thumbnailMimeType
          : thumbnailMimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
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
      replyMarkup: freezed == replyMarkup
          ? _value.replyMarkup
          : replyMarkup // ignore: cast_nullable_to_non_nullable
              as InlineKeyboardMarkup?,
      inputMessageContent: freezed == inputMessageContent
          ? _value.inputMessageContent
          : inputMessageContent // ignore: cast_nullable_to_non_nullable
              as InputMessageContent?,
      showCaptionAboveMedia: freezed == showCaptionAboveMedia
          ? _value.showCaptionAboveMedia
          : showCaptionAboveMedia // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InlineQueryResultMpeg4GifImpl implements _InlineQueryResultMpeg4Gif {
  const _$InlineQueryResultMpeg4GifImpl(
      {@JsonKey(name: 'type') this.type = InlineQueryResultType.mpeg4Gif,
      @JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'mpeg4_url') required this.mpeg4Url,
      @JsonKey(name: 'thumbnail_url') required this.thumbnailUrl,
      @JsonKey(name: 'mpeg4_width') this.mpeg4Width,
      @JsonKey(name: 'mpeg4_height') this.mpeg4Height,
      @JsonKey(name: 'mpeg4_duration') this.mpeg4Duration,
      @JsonKey(name: 'thumbnail_mime_type') this.thumbnailMimeType,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'caption') this.caption,
      @JsonKey(name: 'parse_mode') this.parseMode,
      @JsonKey(name: 'caption_entities')
      final List<MessageEntity>? captionEntities,
      @JsonKey(name: 'reply_markup') this.replyMarkup,
      @JsonKey(name: 'input_message_content')
      @InputMessageContentConverter()
      this.inputMessageContent,
      @JsonKey(name: 'show_caption_above_media') this.showCaptionAboveMedia})
      : _captionEntities = captionEntities;

  factory _$InlineQueryResultMpeg4GifImpl.fromJson(Map<String, dynamic> json) =>
      _$$InlineQueryResultMpeg4GifImplFromJson(json);

  /// Type of the result, always [InlineQueryResultType.mpeg4Gif]
  @override
  @JsonKey(name: 'type')
  final InlineQueryResultType type;

  /// Unique identifier for this result, 1-64 Bytes
  @override
  @JsonKey(name: 'id')
  final String id;

  /// A valid URL for the MPEG4 file. File size must not exceed 1MB
  @override
  @JsonKey(name: 'mpeg4_url')
  final String mpeg4Url;

  /// URL of the static (JPEG or GIF) or animated (MPEG4) thumbnail for the result
  @override
  @JsonKey(name: 'thumbnail_url')
  final String thumbnailUrl;

  /// Optional. Video width
  @override
  @JsonKey(name: 'mpeg4_width')
  final int? mpeg4Width;

  /// Optional. Video height
  @override
  @JsonKey(name: 'mpeg4_height')
  final int? mpeg4Height;

  /// Optional. Video duration
  @override
  @JsonKey(name: 'mpeg4_duration')
  final int? mpeg4Duration;

  /// Optional. MIME type of the thumbnail, must be one of "image/jpeg", "image/gif", or "video/mp4". Defaults to "image/jpeg"
  @override
  @JsonKey(name: 'thumbnail_mime_type')
  final String? thumbnailMimeType;

  /// Optional. Title for the result
  @override
  @JsonKey(name: 'title')
  final String? title;

  /// Optional. Caption of the MPEG-4 file to be sent, 0-1024 characters after entities parsing
  @override
  @JsonKey(name: 'caption')
  final String? caption;

  /// Optional. Mode for parsing entities in the caption. See formatting options for more details.
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

  /// Optional. Inline keyboard attached to the message
  @override
  @JsonKey(name: 'reply_markup')
  final InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the video animation
  @override
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  final InputMessageContent? inputMessageContent;

  /// Optional. True, if the caption must be shown above the message media
  @override
  @JsonKey(name: 'show_caption_above_media')
  final bool? showCaptionAboveMedia;

  @override
  String toString() {
    return 'InlineQueryResultMpeg4Gif(type: $type, id: $id, mpeg4Url: $mpeg4Url, thumbnailUrl: $thumbnailUrl, mpeg4Width: $mpeg4Width, mpeg4Height: $mpeg4Height, mpeg4Duration: $mpeg4Duration, thumbnailMimeType: $thumbnailMimeType, title: $title, caption: $caption, parseMode: $parseMode, captionEntities: $captionEntities, replyMarkup: $replyMarkup, inputMessageContent: $inputMessageContent, showCaptionAboveMedia: $showCaptionAboveMedia)';
  }

  /// Create a copy of InlineQueryResultMpeg4Gif
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InlineQueryResultMpeg4GifImplCopyWith<_$InlineQueryResultMpeg4GifImpl>
      get copyWith => __$$InlineQueryResultMpeg4GifImplCopyWithImpl<
          _$InlineQueryResultMpeg4GifImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InlineQueryResultMpeg4GifImplToJson(
      this,
    );
  }
}

abstract class _InlineQueryResultMpeg4Gif implements InlineQueryResultMpeg4Gif {
  const factory _InlineQueryResultMpeg4Gif(
      {@JsonKey(name: 'type') final InlineQueryResultType type,
      @JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'mpeg4_url') required final String mpeg4Url,
      @JsonKey(name: 'thumbnail_url') required final String thumbnailUrl,
      @JsonKey(name: 'mpeg4_width') final int? mpeg4Width,
      @JsonKey(name: 'mpeg4_height') final int? mpeg4Height,
      @JsonKey(name: 'mpeg4_duration') final int? mpeg4Duration,
      @JsonKey(name: 'thumbnail_mime_type') final String? thumbnailMimeType,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'caption') final String? caption,
      @JsonKey(name: 'parse_mode') final ParseMode? parseMode,
      @JsonKey(name: 'caption_entities')
      final List<MessageEntity>? captionEntities,
      @JsonKey(name: 'reply_markup') final InlineKeyboardMarkup? replyMarkup,
      @JsonKey(name: 'input_message_content')
      @InputMessageContentConverter()
      final InputMessageContent? inputMessageContent,
      @JsonKey(name: 'show_caption_above_media')
      final bool? showCaptionAboveMedia}) = _$InlineQueryResultMpeg4GifImpl;

  factory _InlineQueryResultMpeg4Gif.fromJson(Map<String, dynamic> json) =
      _$InlineQueryResultMpeg4GifImpl.fromJson;

  /// Type of the result, always [InlineQueryResultType.mpeg4Gif]
  @override
  @JsonKey(name: 'type')
  InlineQueryResultType get type;

  /// Unique identifier for this result, 1-64 Bytes
  @override
  @JsonKey(name: 'id')
  String get id;

  /// A valid URL for the MPEG4 file. File size must not exceed 1MB
  @override
  @JsonKey(name: 'mpeg4_url')
  String get mpeg4Url;

  /// URL of the static (JPEG or GIF) or animated (MPEG4) thumbnail for the result
  @override
  @JsonKey(name: 'thumbnail_url')
  String get thumbnailUrl;

  /// Optional. Video width
  @override
  @JsonKey(name: 'mpeg4_width')
  int? get mpeg4Width;

  /// Optional. Video height
  @override
  @JsonKey(name: 'mpeg4_height')
  int? get mpeg4Height;

  /// Optional. Video duration
  @override
  @JsonKey(name: 'mpeg4_duration')
  int? get mpeg4Duration;

  /// Optional. MIME type of the thumbnail, must be one of "image/jpeg", "image/gif", or "video/mp4". Defaults to "image/jpeg"
  @override
  @JsonKey(name: 'thumbnail_mime_type')
  String? get thumbnailMimeType;

  /// Optional. Title for the result
  @override
  @JsonKey(name: 'title')
  String? get title;

  /// Optional. Caption of the MPEG-4 file to be sent, 0-1024 characters after entities parsing
  @override
  @JsonKey(name: 'caption')
  String? get caption;

  /// Optional. Mode for parsing entities in the caption. See formatting options for more details.
  @override
  @JsonKey(name: 'parse_mode')
  ParseMode? get parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  @override
  @JsonKey(name: 'caption_entities')
  List<MessageEntity>? get captionEntities;

  /// Optional. Inline keyboard attached to the message
  @override
  @JsonKey(name: 'reply_markup')
  InlineKeyboardMarkup? get replyMarkup;

  /// Optional. Content of the message to be sent instead of the video animation
  @override
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  InputMessageContent? get inputMessageContent;

  /// Optional. True, if the caption must be shown above the message media
  @override
  @JsonKey(name: 'show_caption_above_media')
  bool? get showCaptionAboveMedia;

  /// Create a copy of InlineQueryResultMpeg4Gif
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InlineQueryResultMpeg4GifImplCopyWith<_$InlineQueryResultMpeg4GifImpl>
      get copyWith => throw _privateConstructorUsedError;
}
