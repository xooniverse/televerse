// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inline_query_result_gif.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InlineQueryResultGif {
  /// Type of the result, always [InlineQueryResultType.gif]
  @JsonKey(name: 'type')
  InlineQueryResultType get type;

  /// Unique identifier for this result, 1-64 Bytes
  @JsonKey(name: 'id')
  String get id;

  /// A valid URL for the GIF file. File size must not exceed 1MB
  @JsonKey(name: 'gif_url')
  String get gifUrl;

  /// URL of the static (JPEG or GIF) or animated (MPEG4) thumbnail for the result
  @JsonKey(name: 'thumbnail_url')
  String get thumbnailUrl;

  /// Optional. Width of the GIF
  @JsonKey(name: 'gif_width')
  int? get gifWidth;

  /// Optional. Height of the GIF
  @JsonKey(name: 'gif_height')
  int? get gifHeight;

  /// Optional. Duration of the GIF in seconds
  @JsonKey(name: 'gif_duration')
  int? get gifDuration;

  /// Optional. MIME type of the thumbnail, must be one of "image/jpeg", "image/gif", or "video/mp4". Defaults to "image/jpeg"
  @JsonKey(name: 'thumbnail_mime_type')
  String? get thumbnailMimeType;

  /// Optional. Title for the result
  @JsonKey(name: 'title')
  String? get title;

  /// Optional. Caption of the GIF file to be sent, 0-1024 characters after entities parsing
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

  /// Optional. Content of the message to be sent instead of the GIF animation
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  InputMessageContent? get inputMessageContent;

  /// Optional. True, if the caption must be shown above the message media
  @JsonKey(name: 'show_caption_above_media')
  bool? get showCaptionAboveMedia;

  /// Create a copy of InlineQueryResultGif
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InlineQueryResultGifCopyWith<InlineQueryResultGif> get copyWith =>
      _$InlineQueryResultGifCopyWithImpl<InlineQueryResultGif>(
          this as InlineQueryResultGif, _$identity);

  /// Serializes this InlineQueryResultGif to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'InlineQueryResultGif(type: $type, id: $id, gifUrl: $gifUrl, thumbnailUrl: $thumbnailUrl, gifWidth: $gifWidth, gifHeight: $gifHeight, gifDuration: $gifDuration, thumbnailMimeType: $thumbnailMimeType, title: $title, caption: $caption, parseMode: $parseMode, captionEntities: $captionEntities, replyMarkup: $replyMarkup, inputMessageContent: $inputMessageContent, showCaptionAboveMedia: $showCaptionAboveMedia)';
  }
}

/// @nodoc
abstract mixin class $InlineQueryResultGifCopyWith<$Res> {
  factory $InlineQueryResultGifCopyWith(InlineQueryResultGif value,
          $Res Function(InlineQueryResultGif) _then) =
      _$InlineQueryResultGifCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') InlineQueryResultType type,
      @JsonKey(name: 'id') String id,
      @JsonKey(name: 'gif_url') String gifUrl,
      @JsonKey(name: 'thumbnail_url') String thumbnailUrl,
      @JsonKey(name: 'gif_width') int? gifWidth,
      @JsonKey(name: 'gif_height') int? gifHeight,
      @JsonKey(name: 'gif_duration') int? gifDuration,
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
class _$InlineQueryResultGifCopyWithImpl<$Res>
    implements $InlineQueryResultGifCopyWith<$Res> {
  _$InlineQueryResultGifCopyWithImpl(this._self, this._then);

  final InlineQueryResultGif _self;
  final $Res Function(InlineQueryResultGif) _then;

  /// Create a copy of InlineQueryResultGif
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? id = null,
    Object? gifUrl = null,
    Object? thumbnailUrl = null,
    Object? gifWidth = freezed,
    Object? gifHeight = freezed,
    Object? gifDuration = freezed,
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
      gifUrl: null == gifUrl
          ? _self.gifUrl
          : gifUrl // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _self.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      gifWidth: freezed == gifWidth
          ? _self.gifWidth
          : gifWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      gifHeight: freezed == gifHeight
          ? _self.gifHeight
          : gifHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      gifDuration: freezed == gifDuration
          ? _self.gifDuration
          : gifDuration // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of InlineQueryResultGif
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
class _InlineQueryResultGif implements InlineQueryResultGif {
  const _InlineQueryResultGif(
      {@JsonKey(name: 'type') this.type = InlineQueryResultType.gif,
      @JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'gif_url') required this.gifUrl,
      @JsonKey(name: 'thumbnail_url') required this.thumbnailUrl,
      @JsonKey(name: 'gif_width') this.gifWidth,
      @JsonKey(name: 'gif_height') this.gifHeight,
      @JsonKey(name: 'gif_duration') this.gifDuration,
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
  factory _InlineQueryResultGif.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultGifFromJson(json);

  /// Type of the result, always [InlineQueryResultType.gif]
  @override
  @JsonKey(name: 'type')
  final InlineQueryResultType type;

  /// Unique identifier for this result, 1-64 Bytes
  @override
  @JsonKey(name: 'id')
  final String id;

  /// A valid URL for the GIF file. File size must not exceed 1MB
  @override
  @JsonKey(name: 'gif_url')
  final String gifUrl;

  /// URL of the static (JPEG or GIF) or animated (MPEG4) thumbnail for the result
  @override
  @JsonKey(name: 'thumbnail_url')
  final String thumbnailUrl;

  /// Optional. Width of the GIF
  @override
  @JsonKey(name: 'gif_width')
  final int? gifWidth;

  /// Optional. Height of the GIF
  @override
  @JsonKey(name: 'gif_height')
  final int? gifHeight;

  /// Optional. Duration of the GIF in seconds
  @override
  @JsonKey(name: 'gif_duration')
  final int? gifDuration;

  /// Optional. MIME type of the thumbnail, must be one of "image/jpeg", "image/gif", or "video/mp4". Defaults to "image/jpeg"
  @override
  @JsonKey(name: 'thumbnail_mime_type')
  final String? thumbnailMimeType;

  /// Optional. Title for the result
  @override
  @JsonKey(name: 'title')
  final String? title;

  /// Optional. Caption of the GIF file to be sent, 0-1024 characters after entities parsing
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

  /// Optional. Content of the message to be sent instead of the GIF animation
  @override
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  final InputMessageContent? inputMessageContent;

  /// Optional. True, if the caption must be shown above the message media
  @override
  @JsonKey(name: 'show_caption_above_media')
  final bool? showCaptionAboveMedia;

  /// Create a copy of InlineQueryResultGif
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InlineQueryResultGifCopyWith<_InlineQueryResultGif> get copyWith =>
      __$InlineQueryResultGifCopyWithImpl<_InlineQueryResultGif>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InlineQueryResultGifToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'InlineQueryResultGif(type: $type, id: $id, gifUrl: $gifUrl, thumbnailUrl: $thumbnailUrl, gifWidth: $gifWidth, gifHeight: $gifHeight, gifDuration: $gifDuration, thumbnailMimeType: $thumbnailMimeType, title: $title, caption: $caption, parseMode: $parseMode, captionEntities: $captionEntities, replyMarkup: $replyMarkup, inputMessageContent: $inputMessageContent, showCaptionAboveMedia: $showCaptionAboveMedia)';
  }
}

/// @nodoc
abstract mixin class _$InlineQueryResultGifCopyWith<$Res>
    implements $InlineQueryResultGifCopyWith<$Res> {
  factory _$InlineQueryResultGifCopyWith(_InlineQueryResultGif value,
          $Res Function(_InlineQueryResultGif) _then) =
      __$InlineQueryResultGifCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') InlineQueryResultType type,
      @JsonKey(name: 'id') String id,
      @JsonKey(name: 'gif_url') String gifUrl,
      @JsonKey(name: 'thumbnail_url') String thumbnailUrl,
      @JsonKey(name: 'gif_width') int? gifWidth,
      @JsonKey(name: 'gif_height') int? gifHeight,
      @JsonKey(name: 'gif_duration') int? gifDuration,
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
class __$InlineQueryResultGifCopyWithImpl<$Res>
    implements _$InlineQueryResultGifCopyWith<$Res> {
  __$InlineQueryResultGifCopyWithImpl(this._self, this._then);

  final _InlineQueryResultGif _self;
  final $Res Function(_InlineQueryResultGif) _then;

  /// Create a copy of InlineQueryResultGif
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? id = null,
    Object? gifUrl = null,
    Object? thumbnailUrl = null,
    Object? gifWidth = freezed,
    Object? gifHeight = freezed,
    Object? gifDuration = freezed,
    Object? thumbnailMimeType = freezed,
    Object? title = freezed,
    Object? caption = freezed,
    Object? parseMode = freezed,
    Object? captionEntities = freezed,
    Object? replyMarkup = freezed,
    Object? inputMessageContent = freezed,
    Object? showCaptionAboveMedia = freezed,
  }) {
    return _then(_InlineQueryResultGif(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as InlineQueryResultType,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      gifUrl: null == gifUrl
          ? _self.gifUrl
          : gifUrl // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _self.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      gifWidth: freezed == gifWidth
          ? _self.gifWidth
          : gifWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      gifHeight: freezed == gifHeight
          ? _self.gifHeight
          : gifHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      gifDuration: freezed == gifDuration
          ? _self.gifDuration
          : gifDuration // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of InlineQueryResultGif
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
