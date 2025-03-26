// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inline_query_result_mpeg4_gif.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InlineQueryResultMpeg4Gif {
  /// Type of the result, always [InlineQueryResultType.mpeg4Gif]
  @JsonKey(name: 'type')
  InlineQueryResultType get type;

  /// Unique identifier for this result, 1-64 Bytes
  @JsonKey(name: 'id')
  String get id;

  /// A valid URL for the MPEG4 file. File size must not exceed 1MB
  @JsonKey(name: 'mpeg4_url')
  String get mpeg4Url;

  /// URL of the static (JPEG or GIF) or animated (MPEG4) thumbnail for the result
  @JsonKey(name: 'thumbnail_url')
  String get thumbnailUrl;

  /// Optional. Video width
  @JsonKey(name: 'mpeg4_width')
  int? get mpeg4Width;

  /// Optional. Video height
  @JsonKey(name: 'mpeg4_height')
  int? get mpeg4Height;

  /// Optional. Video duration
  @JsonKey(name: 'mpeg4_duration')
  int? get mpeg4Duration;

  /// Optional. MIME type of the thumbnail, must be one of "image/jpeg", "image/gif", or "video/mp4". Defaults to "image/jpeg"
  @JsonKey(name: 'thumbnail_mime_type')
  String? get thumbnailMimeType;

  /// Optional. Title for the result
  @JsonKey(name: 'title')
  String? get title;

  /// Optional. Caption of the MPEG-4 file to be sent, 0-1024 characters after entities parsing
  @JsonKey(name: 'caption')
  String? get caption;

  /// Optional. Mode for parsing entities in the caption. See formatting options for more details.
  @JsonKey(name: 'parse_mode')
  ParseMode? get parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  @JsonKey(name: 'caption_entities')
  List<MessageEntity>? get captionEntities;

  /// Optional. Inline keyboard attached to the message
  @JsonKey(name: 'reply_markup')
  InlineKeyboardMarkup? get replyMarkup;

  /// Optional. Content of the message to be sent instead of the video animation
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  InputMessageContent? get inputMessageContent;

  /// Optional. True, if the caption must be shown above the message media
  @JsonKey(name: 'show_caption_above_media')
  bool? get showCaptionAboveMedia;

  /// Create a copy of InlineQueryResultMpeg4Gif
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InlineQueryResultMpeg4GifCopyWith<InlineQueryResultMpeg4Gif> get copyWith =>
      _$InlineQueryResultMpeg4GifCopyWithImpl<InlineQueryResultMpeg4Gif>(
          this as InlineQueryResultMpeg4Gif, _$identity);

  /// Serializes this InlineQueryResultMpeg4Gif to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'InlineQueryResultMpeg4Gif(type: $type, id: $id, mpeg4Url: $mpeg4Url, thumbnailUrl: $thumbnailUrl, mpeg4Width: $mpeg4Width, mpeg4Height: $mpeg4Height, mpeg4Duration: $mpeg4Duration, thumbnailMimeType: $thumbnailMimeType, title: $title, caption: $caption, parseMode: $parseMode, captionEntities: $captionEntities, replyMarkup: $replyMarkup, inputMessageContent: $inputMessageContent, showCaptionAboveMedia: $showCaptionAboveMedia)';
  }
}

/// @nodoc
abstract mixin class $InlineQueryResultMpeg4GifCopyWith<$Res> {
  factory $InlineQueryResultMpeg4GifCopyWith(InlineQueryResultMpeg4Gif value,
          $Res Function(InlineQueryResultMpeg4Gif) _then) =
      _$InlineQueryResultMpeg4GifCopyWithImpl;
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
class _$InlineQueryResultMpeg4GifCopyWithImpl<$Res>
    implements $InlineQueryResultMpeg4GifCopyWith<$Res> {
  _$InlineQueryResultMpeg4GifCopyWithImpl(this._self, this._then);

  final InlineQueryResultMpeg4Gif _self;
  final $Res Function(InlineQueryResultMpeg4Gif) _then;

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
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as InlineQueryResultType,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      mpeg4Url: null == mpeg4Url
          ? _self.mpeg4Url
          : mpeg4Url // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _self.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      mpeg4Width: freezed == mpeg4Width
          ? _self.mpeg4Width
          : mpeg4Width // ignore: cast_nullable_to_non_nullable
              as int?,
      mpeg4Height: freezed == mpeg4Height
          ? _self.mpeg4Height
          : mpeg4Height // ignore: cast_nullable_to_non_nullable
              as int?,
      mpeg4Duration: freezed == mpeg4Duration
          ? _self.mpeg4Duration
          : mpeg4Duration // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnailMimeType: freezed == thumbnailMimeType
          ? _self.thumbnailMimeType
          : thumbnailMimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
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
      replyMarkup: freezed == replyMarkup
          ? _self.replyMarkup
          : replyMarkup // ignore: cast_nullable_to_non_nullable
              as InlineKeyboardMarkup?,
      inputMessageContent: freezed == inputMessageContent
          ? _self.inputMessageContent
          : inputMessageContent // ignore: cast_nullable_to_non_nullable
              as InputMessageContent?,
      showCaptionAboveMedia: freezed == showCaptionAboveMedia
          ? _self.showCaptionAboveMedia
          : showCaptionAboveMedia // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of InlineQueryResultMpeg4Gif
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InputMessageContentCopyWith<$Res>? get inputMessageContent {
    if (_self.inputMessageContent == null) {
      return null;
    }

    return $InputMessageContentCopyWith<$Res>(_self.inputMessageContent!,
        (value) {
      return _then(_self.copyWith(inputMessageContent: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _InlineQueryResultMpeg4Gif implements InlineQueryResultMpeg4Gif {
  const _InlineQueryResultMpeg4Gif(
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
  factory _InlineQueryResultMpeg4Gif.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultMpeg4GifFromJson(json);

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

  /// Create a copy of InlineQueryResultMpeg4Gif
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InlineQueryResultMpeg4GifCopyWith<_InlineQueryResultMpeg4Gif>
      get copyWith =>
          __$InlineQueryResultMpeg4GifCopyWithImpl<_InlineQueryResultMpeg4Gif>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InlineQueryResultMpeg4GifToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'InlineQueryResultMpeg4Gif(type: $type, id: $id, mpeg4Url: $mpeg4Url, thumbnailUrl: $thumbnailUrl, mpeg4Width: $mpeg4Width, mpeg4Height: $mpeg4Height, mpeg4Duration: $mpeg4Duration, thumbnailMimeType: $thumbnailMimeType, title: $title, caption: $caption, parseMode: $parseMode, captionEntities: $captionEntities, replyMarkup: $replyMarkup, inputMessageContent: $inputMessageContent, showCaptionAboveMedia: $showCaptionAboveMedia)';
  }
}

/// @nodoc
abstract mixin class _$InlineQueryResultMpeg4GifCopyWith<$Res>
    implements $InlineQueryResultMpeg4GifCopyWith<$Res> {
  factory _$InlineQueryResultMpeg4GifCopyWith(_InlineQueryResultMpeg4Gif value,
          $Res Function(_InlineQueryResultMpeg4Gif) _then) =
      __$InlineQueryResultMpeg4GifCopyWithImpl;
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
class __$InlineQueryResultMpeg4GifCopyWithImpl<$Res>
    implements _$InlineQueryResultMpeg4GifCopyWith<$Res> {
  __$InlineQueryResultMpeg4GifCopyWithImpl(this._self, this._then);

  final _InlineQueryResultMpeg4Gif _self;
  final $Res Function(_InlineQueryResultMpeg4Gif) _then;

  /// Create a copy of InlineQueryResultMpeg4Gif
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_InlineQueryResultMpeg4Gif(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as InlineQueryResultType,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      mpeg4Url: null == mpeg4Url
          ? _self.mpeg4Url
          : mpeg4Url // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _self.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      mpeg4Width: freezed == mpeg4Width
          ? _self.mpeg4Width
          : mpeg4Width // ignore: cast_nullable_to_non_nullable
              as int?,
      mpeg4Height: freezed == mpeg4Height
          ? _self.mpeg4Height
          : mpeg4Height // ignore: cast_nullable_to_non_nullable
              as int?,
      mpeg4Duration: freezed == mpeg4Duration
          ? _self.mpeg4Duration
          : mpeg4Duration // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnailMimeType: freezed == thumbnailMimeType
          ? _self.thumbnailMimeType
          : thumbnailMimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
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
      replyMarkup: freezed == replyMarkup
          ? _self.replyMarkup
          : replyMarkup // ignore: cast_nullable_to_non_nullable
              as InlineKeyboardMarkup?,
      inputMessageContent: freezed == inputMessageContent
          ? _self.inputMessageContent
          : inputMessageContent // ignore: cast_nullable_to_non_nullable
              as InputMessageContent?,
      showCaptionAboveMedia: freezed == showCaptionAboveMedia
          ? _self.showCaptionAboveMedia
          : showCaptionAboveMedia // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of InlineQueryResultMpeg4Gif
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InputMessageContentCopyWith<$Res>? get inputMessageContent {
    if (_self.inputMessageContent == null) {
      return null;
    }

    return $InputMessageContentCopyWith<$Res>(_self.inputMessageContent!,
        (value) {
      return _then(_self.copyWith(inputMessageContent: value));
    });
  }
}
