// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inline_query_result_video.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InlineQueryResultVideo _$InlineQueryResultVideoFromJson(
    Map<String, dynamic> json) {
  return _InlineQueryResultVideo.fromJson(json);
}

/// @nodoc
mixin _$InlineQueryResultVideo {
  /// Type of the result, always [InlineQueryResultType.video]
  InlineQueryResultType get type => throw _privateConstructorUsedError;

  /// Unique identifier for this result, 1-64 Bytes
  String get id => throw _privateConstructorUsedError;

  /// A valid URL for the embedded video player or video file
  @JsonKey(name: 'video_url')
  String get videoUrl => throw _privateConstructorUsedError;

  /// MIME type of the content of the video URL, "text/html" or "video/mp4"
  @JsonKey(name: 'mime_type')
  String get mimeType => throw _privateConstructorUsedError;

  /// URL of the thumbnail (JPEG only) for the video
  @JsonKey(name: 'thumbnail_url')
  String get thumbnailUrl => throw _privateConstructorUsedError;

  /// Title for the result
  String get title => throw _privateConstructorUsedError;

  /// Optional. Caption of the video to be sent, 0-1024 characters after
  /// entities parsing
  String? get caption => throw _privateConstructorUsedError;

  /// Optional. Mode for parsing entities in the video caption. See formatting
  /// options for more details.
  @JsonKey(name: 'parse_mode')
  ParseMode? get parseMode => throw _privateConstructorUsedError;

  /// Optional. List of special entities that appear in the caption, which can
  /// be specified instead of parse_mode
  @JsonKey(name: 'caption_entities')
  List<MessageEntity>? get captionEntities =>
      throw _privateConstructorUsedError;

  /// Optional. Video width
  @JsonKey(name: 'video_width')
  int? get videoWidth => throw _privateConstructorUsedError;

  /// Optional. Video height
  @JsonKey(name: 'video_height')
  int? get videoHeight => throw _privateConstructorUsedError;

  /// Optional. Video duration in seconds
  @JsonKey(name: 'video_duration')
  int? get videoDuration => throw _privateConstructorUsedError;

  /// Optional. Short description of the result
  String? get description => throw _privateConstructorUsedError;

  /// Optional. Inline keyboard attached to the message
  @JsonKey(name: 'reply_markup')
  InlineKeyboardMarkup? get replyMarkup => throw _privateConstructorUsedError;

  /// Optional. Content of the message to be sent instead of the video. This
  /// field is required if InlineQueryResultVideo is used to send an HTML-page
  /// as a result (e.g., a YouTube video).
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  InputMessageContent? get inputMessageContent =>
      throw _privateConstructorUsedError;

  /// Optional. True, if the caption must be shown above the message media
  @JsonKey(name: 'show_caption_above_media')
  bool? get showCaptionAboveMedia => throw _privateConstructorUsedError;

  /// Serializes this InlineQueryResultVideo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InlineQueryResultVideo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InlineQueryResultVideoCopyWith<InlineQueryResultVideo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InlineQueryResultVideoCopyWith<$Res> {
  factory $InlineQueryResultVideoCopyWith(InlineQueryResultVideo value,
          $Res Function(InlineQueryResultVideo) then) =
      _$InlineQueryResultVideoCopyWithImpl<$Res, InlineQueryResultVideo>;
  @useResult
  $Res call(
      {InlineQueryResultType type,
      String id,
      @JsonKey(name: 'video_url') String videoUrl,
      @JsonKey(name: 'mime_type') String mimeType,
      @JsonKey(name: 'thumbnail_url') String thumbnailUrl,
      String title,
      String? caption,
      @JsonKey(name: 'parse_mode') ParseMode? parseMode,
      @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,
      @JsonKey(name: 'video_width') int? videoWidth,
      @JsonKey(name: 'video_height') int? videoHeight,
      @JsonKey(name: 'video_duration') int? videoDuration,
      String? description,
      @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,
      @JsonKey(name: 'input_message_content')
      @InputMessageContentConverter()
      InputMessageContent? inputMessageContent,
      @JsonKey(name: 'show_caption_above_media') bool? showCaptionAboveMedia});

  $InputMessageContentCopyWith<$Res>? get inputMessageContent;
}

/// @nodoc
class _$InlineQueryResultVideoCopyWithImpl<$Res,
        $Val extends InlineQueryResultVideo>
    implements $InlineQueryResultVideoCopyWith<$Res> {
  _$InlineQueryResultVideoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InlineQueryResultType,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      videoUrl: null == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      mimeType: null == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
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
      videoWidth: freezed == videoWidth
          ? _value.videoWidth
          : videoWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      videoHeight: freezed == videoHeight
          ? _value.videoHeight
          : videoHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      videoDuration: freezed == videoDuration
          ? _value.videoDuration
          : videoDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
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

  /// Create a copy of InlineQueryResultVideo
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
abstract class _$$InlineQueryResultVideoImplCopyWith<$Res>
    implements $InlineQueryResultVideoCopyWith<$Res> {
  factory _$$InlineQueryResultVideoImplCopyWith(
          _$InlineQueryResultVideoImpl value,
          $Res Function(_$InlineQueryResultVideoImpl) then) =
      __$$InlineQueryResultVideoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {InlineQueryResultType type,
      String id,
      @JsonKey(name: 'video_url') String videoUrl,
      @JsonKey(name: 'mime_type') String mimeType,
      @JsonKey(name: 'thumbnail_url') String thumbnailUrl,
      String title,
      String? caption,
      @JsonKey(name: 'parse_mode') ParseMode? parseMode,
      @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,
      @JsonKey(name: 'video_width') int? videoWidth,
      @JsonKey(name: 'video_height') int? videoHeight,
      @JsonKey(name: 'video_duration') int? videoDuration,
      String? description,
      @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,
      @JsonKey(name: 'input_message_content')
      @InputMessageContentConverter()
      InputMessageContent? inputMessageContent,
      @JsonKey(name: 'show_caption_above_media') bool? showCaptionAboveMedia});

  @override
  $InputMessageContentCopyWith<$Res>? get inputMessageContent;
}

/// @nodoc
class __$$InlineQueryResultVideoImplCopyWithImpl<$Res>
    extends _$InlineQueryResultVideoCopyWithImpl<$Res,
        _$InlineQueryResultVideoImpl>
    implements _$$InlineQueryResultVideoImplCopyWith<$Res> {
  __$$InlineQueryResultVideoImplCopyWithImpl(
      _$InlineQueryResultVideoImpl _value,
      $Res Function(_$InlineQueryResultVideoImpl) _then)
      : super(_value, _then);

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
    return _then(_$InlineQueryResultVideoImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InlineQueryResultType,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      videoUrl: null == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      mimeType: null == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
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
      videoWidth: freezed == videoWidth
          ? _value.videoWidth
          : videoWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      videoHeight: freezed == videoHeight
          ? _value.videoHeight
          : videoHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      videoDuration: freezed == videoDuration
          ? _value.videoDuration
          : videoDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$InlineQueryResultVideoImpl extends _InlineQueryResultVideo {
  const _$InlineQueryResultVideoImpl(
      {this.type = InlineQueryResultType.video,
      required this.id,
      @JsonKey(name: 'video_url') required this.videoUrl,
      @JsonKey(name: 'mime_type') required this.mimeType,
      @JsonKey(name: 'thumbnail_url') required this.thumbnailUrl,
      required this.title,
      this.caption,
      @JsonKey(name: 'parse_mode') this.parseMode,
      @JsonKey(name: 'caption_entities')
      final List<MessageEntity>? captionEntities,
      @JsonKey(name: 'video_width') this.videoWidth,
      @JsonKey(name: 'video_height') this.videoHeight,
      @JsonKey(name: 'video_duration') this.videoDuration,
      this.description,
      @JsonKey(name: 'reply_markup') this.replyMarkup,
      @JsonKey(name: 'input_message_content')
      @InputMessageContentConverter()
      this.inputMessageContent,
      @JsonKey(name: 'show_caption_above_media') this.showCaptionAboveMedia})
      : _captionEntities = captionEntities,
        super._();

  factory _$InlineQueryResultVideoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InlineQueryResultVideoImplFromJson(json);

  /// Type of the result, always [InlineQueryResultType.video]
  @override
  @JsonKey()
  final InlineQueryResultType type;

  /// Unique identifier for this result, 1-64 Bytes
  @override
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
  final String title;

  /// Optional. Caption of the video to be sent, 0-1024 characters after
  /// entities parsing
  @override
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

  @override
  String toString() {
    return 'InlineQueryResultVideo(type: $type, id: $id, videoUrl: $videoUrl, mimeType: $mimeType, thumbnailUrl: $thumbnailUrl, title: $title, caption: $caption, parseMode: $parseMode, captionEntities: $captionEntities, videoWidth: $videoWidth, videoHeight: $videoHeight, videoDuration: $videoDuration, description: $description, replyMarkup: $replyMarkup, inputMessageContent: $inputMessageContent, showCaptionAboveMedia: $showCaptionAboveMedia)';
  }

  /// Create a copy of InlineQueryResultVideo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InlineQueryResultVideoImplCopyWith<_$InlineQueryResultVideoImpl>
      get copyWith => __$$InlineQueryResultVideoImplCopyWithImpl<
          _$InlineQueryResultVideoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InlineQueryResultVideoImplToJson(
      this,
    );
  }
}

abstract class _InlineQueryResultVideo extends InlineQueryResultVideo {
  const factory _InlineQueryResultVideo(
      {final InlineQueryResultType type,
      required final String id,
      @JsonKey(name: 'video_url') required final String videoUrl,
      @JsonKey(name: 'mime_type') required final String mimeType,
      @JsonKey(name: 'thumbnail_url') required final String thumbnailUrl,
      required final String title,
      final String? caption,
      @JsonKey(name: 'parse_mode') final ParseMode? parseMode,
      @JsonKey(name: 'caption_entities')
      final List<MessageEntity>? captionEntities,
      @JsonKey(name: 'video_width') final int? videoWidth,
      @JsonKey(name: 'video_height') final int? videoHeight,
      @JsonKey(name: 'video_duration') final int? videoDuration,
      final String? description,
      @JsonKey(name: 'reply_markup') final InlineKeyboardMarkup? replyMarkup,
      @JsonKey(name: 'input_message_content')
      @InputMessageContentConverter()
      final InputMessageContent? inputMessageContent,
      @JsonKey(name: 'show_caption_above_media')
      final bool? showCaptionAboveMedia}) = _$InlineQueryResultVideoImpl;
  const _InlineQueryResultVideo._() : super._();

  factory _InlineQueryResultVideo.fromJson(Map<String, dynamic> json) =
      _$InlineQueryResultVideoImpl.fromJson;

  /// Type of the result, always [InlineQueryResultType.video]
  @override
  InlineQueryResultType get type;

  /// Unique identifier for this result, 1-64 Bytes
  @override
  String get id;

  /// A valid URL for the embedded video player or video file
  @override
  @JsonKey(name: 'video_url')
  String get videoUrl;

  /// MIME type of the content of the video URL, "text/html" or "video/mp4"
  @override
  @JsonKey(name: 'mime_type')
  String get mimeType;

  /// URL of the thumbnail (JPEG only) for the video
  @override
  @JsonKey(name: 'thumbnail_url')
  String get thumbnailUrl;

  /// Title for the result
  @override
  String get title;

  /// Optional. Caption of the video to be sent, 0-1024 characters after
  /// entities parsing
  @override
  String? get caption;

  /// Optional. Mode for parsing entities in the video caption. See formatting
  /// options for more details.
  @override
  @JsonKey(name: 'parse_mode')
  ParseMode? get parseMode;

  /// Optional. List of special entities that appear in the caption, which can
  /// be specified instead of parse_mode
  @override
  @JsonKey(name: 'caption_entities')
  List<MessageEntity>? get captionEntities;

  /// Optional. Video width
  @override
  @JsonKey(name: 'video_width')
  int? get videoWidth;

  /// Optional. Video height
  @override
  @JsonKey(name: 'video_height')
  int? get videoHeight;

  /// Optional. Video duration in seconds
  @override
  @JsonKey(name: 'video_duration')
  int? get videoDuration;

  /// Optional. Short description of the result
  @override
  String? get description;

  /// Optional. Inline keyboard attached to the message
  @override
  @JsonKey(name: 'reply_markup')
  InlineKeyboardMarkup? get replyMarkup;

  /// Optional. Content of the message to be sent instead of the video. This
  /// field is required if InlineQueryResultVideo is used to send an HTML-page
  /// as a result (e.g., a YouTube video).
  @override
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  InputMessageContent? get inputMessageContent;

  /// Optional. True, if the caption must be shown above the message media
  @override
  @JsonKey(name: 'show_caption_above_media')
  bool? get showCaptionAboveMedia;

  /// Create a copy of InlineQueryResultVideo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InlineQueryResultVideoImplCopyWith<_$InlineQueryResultVideoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
