// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inline_query_result_cached_video.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InlineQueryResultCachedVideo _$InlineQueryResultCachedVideoFromJson(
    Map<String, dynamic> json) {
  return _InlineQueryResultCachedVideo.fromJson(json);
}

/// @nodoc
mixin _$InlineQueryResultCachedVideo {
  /// Unique identifier for this result, 1-64 Bytes
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;

  /// A valid file identifier for the video file
  @JsonKey(name: 'video_file_id')
  String get videoFileId => throw _privateConstructorUsedError;

  /// Title for the result
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;

  /// Optional. Short description of the result
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;

  /// Optional. Caption of the video to be sent, 0-1024 characters after
  /// entities parsing
  @JsonKey(name: 'caption')
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

  /// Optional. Inline keyboard attached to the message
  @JsonKey(name: 'reply_markup')
  InlineKeyboardMarkup? get replyMarkup => throw _privateConstructorUsedError;

  /// Optional. Content of the message to be sent instead of the video
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  InputMessageContent? get inputMessageContent =>
      throw _privateConstructorUsedError;

  /// Optional. True, if the caption must be shown above the message media
  @JsonKey(name: 'show_caption_above_media')
  bool? get showCaptionAboveMedia => throw _privateConstructorUsedError;

  /// Type of the result, always [InlineQueryResultType.video]
  @JsonKey(name: 'type')
  InlineQueryResultType get type => throw _privateConstructorUsedError;

  /// Serializes this InlineQueryResultCachedVideo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InlineQueryResultCachedVideo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InlineQueryResultCachedVideoCopyWith<InlineQueryResultCachedVideo>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InlineQueryResultCachedVideoCopyWith<$Res> {
  factory $InlineQueryResultCachedVideoCopyWith(
          InlineQueryResultCachedVideo value,
          $Res Function(InlineQueryResultCachedVideo) then) =
      _$InlineQueryResultCachedVideoCopyWithImpl<$Res,
          InlineQueryResultCachedVideo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'video_file_id') String videoFileId,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'caption') String? caption,
      @JsonKey(name: 'parse_mode') ParseMode? parseMode,
      @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,
      @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,
      @JsonKey(name: 'input_message_content')
      @InputMessageContentConverter()
      InputMessageContent? inputMessageContent,
      @JsonKey(name: 'show_caption_above_media') bool? showCaptionAboveMedia,
      @JsonKey(name: 'type') InlineQueryResultType type});

  $InputMessageContentCopyWith<$Res>? get inputMessageContent;
}

/// @nodoc
class _$InlineQueryResultCachedVideoCopyWithImpl<$Res,
        $Val extends InlineQueryResultCachedVideo>
    implements $InlineQueryResultCachedVideoCopyWith<$Res> {
  _$InlineQueryResultCachedVideoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InlineQueryResultCachedVideo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? videoFileId = null,
    Object? title = null,
    Object? description = freezed,
    Object? caption = freezed,
    Object? parseMode = freezed,
    Object? captionEntities = freezed,
    Object? replyMarkup = freezed,
    Object? inputMessageContent = freezed,
    Object? showCaptionAboveMedia = freezed,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      videoFileId: null == videoFileId
          ? _value.videoFileId
          : videoFileId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InlineQueryResultType,
    ) as $Val);
  }

  /// Create a copy of InlineQueryResultCachedVideo
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
abstract class _$$InlineQueryResultCachedVideoImplCopyWith<$Res>
    implements $InlineQueryResultCachedVideoCopyWith<$Res> {
  factory _$$InlineQueryResultCachedVideoImplCopyWith(
          _$InlineQueryResultCachedVideoImpl value,
          $Res Function(_$InlineQueryResultCachedVideoImpl) then) =
      __$$InlineQueryResultCachedVideoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'video_file_id') String videoFileId,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'caption') String? caption,
      @JsonKey(name: 'parse_mode') ParseMode? parseMode,
      @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,
      @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,
      @JsonKey(name: 'input_message_content')
      @InputMessageContentConverter()
      InputMessageContent? inputMessageContent,
      @JsonKey(name: 'show_caption_above_media') bool? showCaptionAboveMedia,
      @JsonKey(name: 'type') InlineQueryResultType type});

  @override
  $InputMessageContentCopyWith<$Res>? get inputMessageContent;
}

/// @nodoc
class __$$InlineQueryResultCachedVideoImplCopyWithImpl<$Res>
    extends _$InlineQueryResultCachedVideoCopyWithImpl<$Res,
        _$InlineQueryResultCachedVideoImpl>
    implements _$$InlineQueryResultCachedVideoImplCopyWith<$Res> {
  __$$InlineQueryResultCachedVideoImplCopyWithImpl(
      _$InlineQueryResultCachedVideoImpl _value,
      $Res Function(_$InlineQueryResultCachedVideoImpl) _then)
      : super(_value, _then);

  /// Create a copy of InlineQueryResultCachedVideo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? videoFileId = null,
    Object? title = null,
    Object? description = freezed,
    Object? caption = freezed,
    Object? parseMode = freezed,
    Object? captionEntities = freezed,
    Object? replyMarkup = freezed,
    Object? inputMessageContent = freezed,
    Object? showCaptionAboveMedia = freezed,
    Object? type = null,
  }) {
    return _then(_$InlineQueryResultCachedVideoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      videoFileId: null == videoFileId
          ? _value.videoFileId
          : videoFileId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InlineQueryResultType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InlineQueryResultCachedVideoImpl
    implements _InlineQueryResultCachedVideo {
  const _$InlineQueryResultCachedVideoImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'video_file_id') required this.videoFileId,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'caption') this.caption,
      @JsonKey(name: 'parse_mode') this.parseMode,
      @JsonKey(name: 'caption_entities')
      final List<MessageEntity>? captionEntities,
      @JsonKey(name: 'reply_markup') this.replyMarkup,
      @JsonKey(name: 'input_message_content')
      @InputMessageContentConverter()
      this.inputMessageContent,
      @JsonKey(name: 'show_caption_above_media') this.showCaptionAboveMedia,
      @JsonKey(name: 'type') this.type = InlineQueryResultType.video})
      : _captionEntities = captionEntities;

  factory _$InlineQueryResultCachedVideoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$InlineQueryResultCachedVideoImplFromJson(json);

  /// Unique identifier for this result, 1-64 Bytes
  @override
  @JsonKey(name: 'id')
  final String id;

  /// A valid file identifier for the video file
  @override
  @JsonKey(name: 'video_file_id')
  final String videoFileId;

  /// Title for the result
  @override
  @JsonKey(name: 'title')
  final String title;

  /// Optional. Short description of the result
  @override
  @JsonKey(name: 'description')
  final String? description;

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

  /// Optional. Inline keyboard attached to the message
  @override
  @JsonKey(name: 'reply_markup')
  final InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the video
  @override
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  final InputMessageContent? inputMessageContent;

  /// Optional. True, if the caption must be shown above the message media
  @override
  @JsonKey(name: 'show_caption_above_media')
  final bool? showCaptionAboveMedia;

  /// Type of the result, always [InlineQueryResultType.video]
  @override
  @JsonKey(name: 'type')
  final InlineQueryResultType type;

  @override
  String toString() {
    return 'InlineQueryResultCachedVideo(id: $id, videoFileId: $videoFileId, title: $title, description: $description, caption: $caption, parseMode: $parseMode, captionEntities: $captionEntities, replyMarkup: $replyMarkup, inputMessageContent: $inputMessageContent, showCaptionAboveMedia: $showCaptionAboveMedia, type: $type)';
  }

  /// Create a copy of InlineQueryResultCachedVideo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InlineQueryResultCachedVideoImplCopyWith<
          _$InlineQueryResultCachedVideoImpl>
      get copyWith => __$$InlineQueryResultCachedVideoImplCopyWithImpl<
          _$InlineQueryResultCachedVideoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InlineQueryResultCachedVideoImplToJson(
      this,
    );
  }
}

abstract class _InlineQueryResultCachedVideo
    implements InlineQueryResultCachedVideo {
  const factory _InlineQueryResultCachedVideo(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'video_file_id') required final String videoFileId,
      @JsonKey(name: 'title') required final String title,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'caption') final String? caption,
      @JsonKey(name: 'parse_mode') final ParseMode? parseMode,
      @JsonKey(name: 'caption_entities')
      final List<MessageEntity>? captionEntities,
      @JsonKey(name: 'reply_markup') final InlineKeyboardMarkup? replyMarkup,
      @JsonKey(name: 'input_message_content')
      @InputMessageContentConverter()
      final InputMessageContent? inputMessageContent,
      @JsonKey(name: 'show_caption_above_media')
      final bool? showCaptionAboveMedia,
      @JsonKey(name: 'type')
      final InlineQueryResultType type}) = _$InlineQueryResultCachedVideoImpl;

  factory _InlineQueryResultCachedVideo.fromJson(Map<String, dynamic> json) =
      _$InlineQueryResultCachedVideoImpl.fromJson;

  /// Unique identifier for this result, 1-64 Bytes
  @override
  @JsonKey(name: 'id')
  String get id;

  /// A valid file identifier for the video file
  @override
  @JsonKey(name: 'video_file_id')
  String get videoFileId;

  /// Title for the result
  @override
  @JsonKey(name: 'title')
  String get title;

  /// Optional. Short description of the result
  @override
  @JsonKey(name: 'description')
  String? get description;

  /// Optional. Caption of the video to be sent, 0-1024 characters after
  /// entities parsing
  @override
  @JsonKey(name: 'caption')
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

  /// Optional. Inline keyboard attached to the message
  @override
  @JsonKey(name: 'reply_markup')
  InlineKeyboardMarkup? get replyMarkup;

  /// Optional. Content of the message to be sent instead of the video
  @override
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  InputMessageContent? get inputMessageContent;

  /// Optional. True, if the caption must be shown above the message media
  @override
  @JsonKey(name: 'show_caption_above_media')
  bool? get showCaptionAboveMedia;

  /// Type of the result, always [InlineQueryResultType.video]
  @override
  @JsonKey(name: 'type')
  InlineQueryResultType get type;

  /// Create a copy of InlineQueryResultCachedVideo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InlineQueryResultCachedVideoImplCopyWith<
          _$InlineQueryResultCachedVideoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
