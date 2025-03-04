// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inline_query_result_cached_mpeg4_gif.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InlineQueryResultCachedMpeg4Gif _$InlineQueryResultCachedMpeg4GifFromJson(
    Map<String, dynamic> json) {
  return _InlineQueryResultCachedMpeg4Gif.fromJson(json);
}

/// @nodoc
mixin _$InlineQueryResultCachedMpeg4Gif {
  /// Unique identifier for this result, 1-64 Bytes
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;

  /// A valid file identifier for the MPEG4 file
  @JsonKey(name: 'mpeg4_file_id')
  String get mpeg4FileId => throw _privateConstructorUsedError;

  /// Type of the result, always [InlineQueryResultType.mpeg4Gif]
  @JsonKey(name: 'type')
  InlineQueryResultType get type => throw _privateConstructorUsedError;

  /// Optional. Title for the result
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;

  /// Optional. Caption of the MPEG-4 file to be sent, 0-1024 characters after
  /// entities parsing
  @JsonKey(name: 'caption')
  String? get caption => throw _privateConstructorUsedError;

  /// Optional. Mode for parsing entities in the caption. See formatting
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
  /// animation
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  InputMessageContent? get inputMessageContent =>
      throw _privateConstructorUsedError;

  /// Optional. True, if the caption must be shown above the message media
  @JsonKey(name: 'show_caption_above_media')
  bool? get showCaptionAboveMedia => throw _privateConstructorUsedError;

  /// Serializes this InlineQueryResultCachedMpeg4Gif to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InlineQueryResultCachedMpeg4Gif
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InlineQueryResultCachedMpeg4GifCopyWith<InlineQueryResultCachedMpeg4Gif>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InlineQueryResultCachedMpeg4GifCopyWith<$Res> {
  factory $InlineQueryResultCachedMpeg4GifCopyWith(
          InlineQueryResultCachedMpeg4Gif value,
          $Res Function(InlineQueryResultCachedMpeg4Gif) then) =
      _$InlineQueryResultCachedMpeg4GifCopyWithImpl<$Res,
          InlineQueryResultCachedMpeg4Gif>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'mpeg4_file_id') String mpeg4FileId,
      @JsonKey(name: 'type') InlineQueryResultType type,
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
class _$InlineQueryResultCachedMpeg4GifCopyWithImpl<$Res,
        $Val extends InlineQueryResultCachedMpeg4Gif>
    implements $InlineQueryResultCachedMpeg4GifCopyWith<$Res> {
  _$InlineQueryResultCachedMpeg4GifCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InlineQueryResultCachedMpeg4Gif
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mpeg4FileId = null,
    Object? type = null,
    Object? title = freezed,
    Object? caption = freezed,
    Object? parseMode = freezed,
    Object? captionEntities = freezed,
    Object? replyMarkup = freezed,
    Object? inputMessageContent = freezed,
    Object? showCaptionAboveMedia = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      mpeg4FileId: null == mpeg4FileId
          ? _value.mpeg4FileId
          : mpeg4FileId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InlineQueryResultType,
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

  /// Create a copy of InlineQueryResultCachedMpeg4Gif
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
abstract class _$$InlineQueryResultCachedMpeg4GifImplCopyWith<$Res>
    implements $InlineQueryResultCachedMpeg4GifCopyWith<$Res> {
  factory _$$InlineQueryResultCachedMpeg4GifImplCopyWith(
          _$InlineQueryResultCachedMpeg4GifImpl value,
          $Res Function(_$InlineQueryResultCachedMpeg4GifImpl) then) =
      __$$InlineQueryResultCachedMpeg4GifImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'mpeg4_file_id') String mpeg4FileId,
      @JsonKey(name: 'type') InlineQueryResultType type,
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
class __$$InlineQueryResultCachedMpeg4GifImplCopyWithImpl<$Res>
    extends _$InlineQueryResultCachedMpeg4GifCopyWithImpl<$Res,
        _$InlineQueryResultCachedMpeg4GifImpl>
    implements _$$InlineQueryResultCachedMpeg4GifImplCopyWith<$Res> {
  __$$InlineQueryResultCachedMpeg4GifImplCopyWithImpl(
      _$InlineQueryResultCachedMpeg4GifImpl _value,
      $Res Function(_$InlineQueryResultCachedMpeg4GifImpl) _then)
      : super(_value, _then);

  /// Create a copy of InlineQueryResultCachedMpeg4Gif
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mpeg4FileId = null,
    Object? type = null,
    Object? title = freezed,
    Object? caption = freezed,
    Object? parseMode = freezed,
    Object? captionEntities = freezed,
    Object? replyMarkup = freezed,
    Object? inputMessageContent = freezed,
    Object? showCaptionAboveMedia = freezed,
  }) {
    return _then(_$InlineQueryResultCachedMpeg4GifImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      mpeg4FileId: null == mpeg4FileId
          ? _value.mpeg4FileId
          : mpeg4FileId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InlineQueryResultType,
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
class _$InlineQueryResultCachedMpeg4GifImpl
    implements _InlineQueryResultCachedMpeg4Gif {
  const _$InlineQueryResultCachedMpeg4GifImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'mpeg4_file_id') required this.mpeg4FileId,
      @JsonKey(name: 'type') this.type = InlineQueryResultType.mpeg4Gif,
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

  factory _$InlineQueryResultCachedMpeg4GifImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$InlineQueryResultCachedMpeg4GifImplFromJson(json);

  /// Unique identifier for this result, 1-64 Bytes
  @override
  @JsonKey(name: 'id')
  final String id;

  /// A valid file identifier for the MPEG4 file
  @override
  @JsonKey(name: 'mpeg4_file_id')
  final String mpeg4FileId;

  /// Type of the result, always [InlineQueryResultType.mpeg4Gif]
  @override
  @JsonKey(name: 'type')
  final InlineQueryResultType type;

  /// Optional. Title for the result
  @override
  @JsonKey(name: 'title')
  final String? title;

  /// Optional. Caption of the MPEG-4 file to be sent, 0-1024 characters after
  /// entities parsing
  @override
  @JsonKey(name: 'caption')
  final String? caption;

  /// Optional. Mode for parsing entities in the caption. See formatting
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
  /// animation
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
    return 'InlineQueryResultCachedMpeg4Gif(id: $id, mpeg4FileId: $mpeg4FileId, type: $type, title: $title, caption: $caption, parseMode: $parseMode, captionEntities: $captionEntities, replyMarkup: $replyMarkup, inputMessageContent: $inputMessageContent, showCaptionAboveMedia: $showCaptionAboveMedia)';
  }

  /// Create a copy of InlineQueryResultCachedMpeg4Gif
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InlineQueryResultCachedMpeg4GifImplCopyWith<
          _$InlineQueryResultCachedMpeg4GifImpl>
      get copyWith => __$$InlineQueryResultCachedMpeg4GifImplCopyWithImpl<
          _$InlineQueryResultCachedMpeg4GifImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InlineQueryResultCachedMpeg4GifImplToJson(
      this,
    );
  }
}

abstract class _InlineQueryResultCachedMpeg4Gif
    implements InlineQueryResultCachedMpeg4Gif {
  const factory _InlineQueryResultCachedMpeg4Gif(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'mpeg4_file_id') required final String mpeg4FileId,
      @JsonKey(name: 'type') final InlineQueryResultType type,
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
      final bool?
          showCaptionAboveMedia}) = _$InlineQueryResultCachedMpeg4GifImpl;

  factory _InlineQueryResultCachedMpeg4Gif.fromJson(Map<String, dynamic> json) =
      _$InlineQueryResultCachedMpeg4GifImpl.fromJson;

  /// Unique identifier for this result, 1-64 Bytes
  @override
  @JsonKey(name: 'id')
  String get id;

  /// A valid file identifier for the MPEG4 file
  @override
  @JsonKey(name: 'mpeg4_file_id')
  String get mpeg4FileId;

  /// Type of the result, always [InlineQueryResultType.mpeg4Gif]
  @override
  @JsonKey(name: 'type')
  InlineQueryResultType get type;

  /// Optional. Title for the result
  @override
  @JsonKey(name: 'title')
  String? get title;

  /// Optional. Caption of the MPEG-4 file to be sent, 0-1024 characters after
  /// entities parsing
  @override
  @JsonKey(name: 'caption')
  String? get caption;

  /// Optional. Mode for parsing entities in the caption. See formatting
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
  /// animation
  @override
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  InputMessageContent? get inputMessageContent;

  /// Optional. True, if the caption must be shown above the message media
  @override
  @JsonKey(name: 'show_caption_above_media')
  bool? get showCaptionAboveMedia;

  /// Create a copy of InlineQueryResultCachedMpeg4Gif
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InlineQueryResultCachedMpeg4GifImplCopyWith<
          _$InlineQueryResultCachedMpeg4GifImpl>
      get copyWith => throw _privateConstructorUsedError;
}
