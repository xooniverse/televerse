// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inline_query_result_video.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InlineQueryResultVideo {
  /// Type of the result, always [InlineQueryResultType.video]
  @JsonKey(name: 'type')
  InlineQueryResultType get type;

  /// Unique identifier for this result, 1-64 Bytes
  @JsonKey(name: 'id')
  String get id;

  /// A valid URL for the embedded video player or video file
  @JsonKey(name: 'video_url')
  String get videoUrl;

  /// MIME type of the content of the video URL, "text/html" or "video/mp4"
  @JsonKey(name: 'mime_type')
  String get mimeType;

  /// URL of the thumbnail (JPEG only) for the video
  @JsonKey(name: 'thumbnail_url')
  String get thumbnailUrl;

  /// Title for the result
  @JsonKey(name: 'title')
  String get title;

  /// Optional. Caption of the video to be sent, 0-1024 characters after
  /// entities parsing
  @JsonKey(name: 'caption')
  String? get caption;

  /// Optional. Mode for parsing entities in the video caption. See formatting
  /// options for more details.
  @JsonKey(name: 'parse_mode')
  ParseMode? get parseMode;

  /// Optional. List of special entities that appear in the caption, which can
  /// be specified instead of parse_mode
  @JsonKey(name: 'caption_entities')
  List<MessageEntity>? get captionEntities;

  /// Optional. Video width
  @JsonKey(name: 'video_width')
  int? get videoWidth;

  /// Optional. Video height
  @JsonKey(name: 'video_height')
  int? get videoHeight;

  /// Optional. Video duration in seconds
  @JsonKey(name: 'video_duration')
  int? get videoDuration;

  /// Optional. Short description of the result
  @JsonKey(name: 'description')
  String? get description;

  /// Optional. Inline keyboard attached to the message
  @JsonKey(name: 'reply_markup')
  InlineKeyboardMarkup? get replyMarkup;

  /// Optional. Content of the message to be sent instead of the video. This
  /// field is required if InlineQueryResultVideo is used to send an HTML-page
  /// as a result (e.g., a YouTube video).
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  InputMessageContent? get inputMessageContent;

  /// Optional. True, if the caption must be shown above the message media
  @JsonKey(name: 'show_caption_above_media')
  bool? get showCaptionAboveMedia;

  /// Create a copy of InlineQueryResultVideo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InlineQueryResultVideoCopyWith<InlineQueryResultVideo> get copyWith =>
      _$InlineQueryResultVideoCopyWithImpl<InlineQueryResultVideo>(
          this as InlineQueryResultVideo, _$identity);

  /// Serializes this InlineQueryResultVideo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'InlineQueryResultVideo(type: $type, id: $id, videoUrl: $videoUrl, mimeType: $mimeType, thumbnailUrl: $thumbnailUrl, title: $title, caption: $caption, parseMode: $parseMode, captionEntities: $captionEntities, videoWidth: $videoWidth, videoHeight: $videoHeight, videoDuration: $videoDuration, description: $description, replyMarkup: $replyMarkup, inputMessageContent: $inputMessageContent, showCaptionAboveMedia: $showCaptionAboveMedia)';
  }
}

/// @nodoc
abstract mixin class $InlineQueryResultVideoCopyWith<$Res> {
  factory $InlineQueryResultVideoCopyWith(InlineQueryResultVideo value,
          $Res Function(InlineQueryResultVideo) _then) =
      _$InlineQueryResultVideoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') InlineQueryResultType type,
      @JsonKey(name: 'id') String id,
      @JsonKey(name: 'video_url') String videoUrl,
      @JsonKey(name: 'mime_type') String mimeType,
      @JsonKey(name: 'thumbnail_url') String thumbnailUrl,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'caption') String? caption,
      @JsonKey(name: 'parse_mode') ParseMode? parseMode,
      @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,
      @JsonKey(name: 'video_width') int? videoWidth,
      @JsonKey(name: 'video_height') int? videoHeight,
      @JsonKey(name: 'video_duration') int? videoDuration,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,
      @JsonKey(name: 'input_message_content')
      @InputMessageContentConverter()
      InputMessageContent? inputMessageContent,
      @JsonKey(name: 'show_caption_above_media') bool? showCaptionAboveMedia});

  $InputMessageContentCopyWith<$Res>? get inputMessageContent;
}

/// @nodoc
class _$InlineQueryResultVideoCopyWithImpl<$Res>
    implements $InlineQueryResultVideoCopyWith<$Res> {
  _$InlineQueryResultVideoCopyWithImpl(this._self, this._then);

  final InlineQueryResultVideo _self;
  final $Res Function(InlineQueryResultVideo) _then;

  /// Create a copy of InlineQueryResultVideo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? id = null,
    Object? videoUrl = null,
    Object? mimeType = null,
    Object? thumbnailUrl = null,
    Object? title = null,
    Object? caption = freezed,
    Object? parseMode = freezed,
    Object? captionEntities = freezed,
    Object? videoWidth = freezed,
    Object? videoHeight = freezed,
    Object? videoDuration = freezed,
    Object? description = freezed,
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
      videoUrl: null == videoUrl
          ? _self.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      mimeType: null == mimeType
          ? _self.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _self.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
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
      videoWidth: freezed == videoWidth
          ? _self.videoWidth
          : videoWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      videoHeight: freezed == videoHeight
          ? _self.videoHeight
          : videoHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      videoDuration: freezed == videoDuration
          ? _self.videoDuration
          : videoDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
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

  /// Create a copy of InlineQueryResultVideo
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
class _InlineQueryResultVideo extends InlineQueryResultVideo {
  const _InlineQueryResultVideo(
      {@JsonKey(name: 'type') this.type = InlineQueryResultType.video,
      @JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'video_url') required this.videoUrl,
      @JsonKey(name: 'mime_type') required this.mimeType,
      @JsonKey(name: 'thumbnail_url') required this.thumbnailUrl,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'caption') this.caption,
      @JsonKey(name: 'parse_mode') this.parseMode,
      @JsonKey(name: 'caption_entities')
      final List<MessageEntity>? captionEntities,
      @JsonKey(name: 'video_width') this.videoWidth,
      @JsonKey(name: 'video_height') this.videoHeight,
      @JsonKey(name: 'video_duration') this.videoDuration,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'reply_markup') this.replyMarkup,
      @JsonKey(name: 'input_message_content')
      @InputMessageContentConverter()
      this.inputMessageContent,
      @JsonKey(name: 'show_caption_above_media') this.showCaptionAboveMedia})
      : _captionEntities = captionEntities,
        super._();
  factory _InlineQueryResultVideo.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultVideoFromJson(json);

  /// Type of the result, always [InlineQueryResultType.video]
  @override
  @JsonKey(name: 'type')
  final InlineQueryResultType type;

  /// Unique identifier for this result, 1-64 Bytes
  @override
  @JsonKey(name: 'id')
  final String id;

  /// A valid URL for the embedded video player or video file
  @override
  @JsonKey(name: 'video_url')
  final String videoUrl;

  /// MIME type of the content of the video URL, "text/html" or "video/mp4"
  @override
  @JsonKey(name: 'mime_type')
  final String mimeType;

  /// URL of the thumbnail (JPEG only) for the video
  @override
  @JsonKey(name: 'thumbnail_url')
  final String thumbnailUrl;

  /// Title for the result
  @override
  @JsonKey(name: 'title')
  final String title;

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
  @override
  @JsonKey(name: 'video_width')
  final int? videoWidth;

  /// Optional. Video height
  @override
  @JsonKey(name: 'video_height')
  final int? videoHeight;

  /// Optional. Video duration in seconds
  @override
  @JsonKey(name: 'video_duration')
  final int? videoDuration;

  /// Optional. Short description of the result
  @override
  @JsonKey(name: 'description')
  final String? description;

  /// Optional. Inline keyboard attached to the message
  @override
  @JsonKey(name: 'reply_markup')
  final InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the video. This
  /// field is required if InlineQueryResultVideo is used to send an HTML-page
  /// as a result (e.g., a YouTube video).
  @override
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  final InputMessageContent? inputMessageContent;

  /// Optional. True, if the caption must be shown above the message media
  @override
  @JsonKey(name: 'show_caption_above_media')
  final bool? showCaptionAboveMedia;

  /// Create a copy of InlineQueryResultVideo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InlineQueryResultVideoCopyWith<_InlineQueryResultVideo> get copyWith =>
      __$InlineQueryResultVideoCopyWithImpl<_InlineQueryResultVideo>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InlineQueryResultVideoToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'InlineQueryResultVideo(type: $type, id: $id, videoUrl: $videoUrl, mimeType: $mimeType, thumbnailUrl: $thumbnailUrl, title: $title, caption: $caption, parseMode: $parseMode, captionEntities: $captionEntities, videoWidth: $videoWidth, videoHeight: $videoHeight, videoDuration: $videoDuration, description: $description, replyMarkup: $replyMarkup, inputMessageContent: $inputMessageContent, showCaptionAboveMedia: $showCaptionAboveMedia)';
  }
}

/// @nodoc
abstract mixin class _$InlineQueryResultVideoCopyWith<$Res>
    implements $InlineQueryResultVideoCopyWith<$Res> {
  factory _$InlineQueryResultVideoCopyWith(_InlineQueryResultVideo value,
          $Res Function(_InlineQueryResultVideo) _then) =
      __$InlineQueryResultVideoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') InlineQueryResultType type,
      @JsonKey(name: 'id') String id,
      @JsonKey(name: 'video_url') String videoUrl,
      @JsonKey(name: 'mime_type') String mimeType,
      @JsonKey(name: 'thumbnail_url') String thumbnailUrl,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'caption') String? caption,
      @JsonKey(name: 'parse_mode') ParseMode? parseMode,
      @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,
      @JsonKey(name: 'video_width') int? videoWidth,
      @JsonKey(name: 'video_height') int? videoHeight,
      @JsonKey(name: 'video_duration') int? videoDuration,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,
      @JsonKey(name: 'input_message_content')
      @InputMessageContentConverter()
      InputMessageContent? inputMessageContent,
      @JsonKey(name: 'show_caption_above_media') bool? showCaptionAboveMedia});

  @override
  $InputMessageContentCopyWith<$Res>? get inputMessageContent;
}

/// @nodoc
class __$InlineQueryResultVideoCopyWithImpl<$Res>
    implements _$InlineQueryResultVideoCopyWith<$Res> {
  __$InlineQueryResultVideoCopyWithImpl(this._self, this._then);

  final _InlineQueryResultVideo _self;
  final $Res Function(_InlineQueryResultVideo) _then;

  /// Create a copy of InlineQueryResultVideo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? id = null,
    Object? videoUrl = null,
    Object? mimeType = null,
    Object? thumbnailUrl = null,
    Object? title = null,
    Object? caption = freezed,
    Object? parseMode = freezed,
    Object? captionEntities = freezed,
    Object? videoWidth = freezed,
    Object? videoHeight = freezed,
    Object? videoDuration = freezed,
    Object? description = freezed,
    Object? replyMarkup = freezed,
    Object? inputMessageContent = freezed,
    Object? showCaptionAboveMedia = freezed,
  }) {
    return _then(_InlineQueryResultVideo(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as InlineQueryResultType,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      videoUrl: null == videoUrl
          ? _self.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      mimeType: null == mimeType
          ? _self.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _self.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
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
      videoWidth: freezed == videoWidth
          ? _self.videoWidth
          : videoWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      videoHeight: freezed == videoHeight
          ? _self.videoHeight
          : videoHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      videoDuration: freezed == videoDuration
          ? _self.videoDuration
          : videoDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
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

  /// Create a copy of InlineQueryResultVideo
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
