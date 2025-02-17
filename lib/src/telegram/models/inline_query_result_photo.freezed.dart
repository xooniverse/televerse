// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inline_query_result_photo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InlineQueryResultPhoto _$InlineQueryResultPhotoFromJson(
    Map<String, dynamic> json) {
  return _InlineQueryResultPhoto.fromJson(json);
}

/// @nodoc
mixin _$InlineQueryResultPhoto {
  /// Type of the result, always [InlineQueryResultType.photo]
  InlineQueryResultType get type => throw _privateConstructorUsedError;

  /// Unique identifier for this result, 1-64 Bytes
  String get id => throw _privateConstructorUsedError;

  /// A valid URL of the photo. Photo must be in JPEG format. Photo size must
  /// not exceed 5MB
  @JsonKey(name: 'photo_url')
  String get photoUrl => throw _privateConstructorUsedError;

  /// URL of the thumbnail for the photo
  @JsonKey(name: 'thumbnail_url')
  String get thumbnailUrl => throw _privateConstructorUsedError;

  /// Optional. Width of the photo
  @JsonKey(name: 'photo_width')
  int? get photoWidth => throw _privateConstructorUsedError;

  /// Optional. Height of the photo
  @JsonKey(name: 'photo_height')
  int? get photoHeight => throw _privateConstructorUsedError;

  /// Optional. Title for the result
  String? get title => throw _privateConstructorUsedError;

  /// Optional. Short description of the result
  String? get description => throw _privateConstructorUsedError;

  /// Optional. Caption of the photo to be sent, 0-1024 characters after
  /// entities parsing
  String? get caption => throw _privateConstructorUsedError;

  /// Optional. Mode for parsing entities in the photo caption. See formatting
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

  /// Optional. Content of the message to be sent instead of the photo
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  InputMessageContent? get inputMessageContent =>
      throw _privateConstructorUsedError;

  /// Optional. True, if the caption must be shown above the message media
  @JsonKey(name: 'show_caption_above_media')
  bool? get showCaptionAboveMedia => throw _privateConstructorUsedError;

  /// Serializes this InlineQueryResultPhoto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InlineQueryResultPhoto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InlineQueryResultPhotoCopyWith<InlineQueryResultPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InlineQueryResultPhotoCopyWith<$Res> {
  factory $InlineQueryResultPhotoCopyWith(InlineQueryResultPhoto value,
          $Res Function(InlineQueryResultPhoto) then) =
      _$InlineQueryResultPhotoCopyWithImpl<$Res, InlineQueryResultPhoto>;
  @useResult
  $Res call(
      {InlineQueryResultType type,
      String id,
      @JsonKey(name: 'photo_url') String photoUrl,
      @JsonKey(name: 'thumbnail_url') String thumbnailUrl,
      @JsonKey(name: 'photo_width') int? photoWidth,
      @JsonKey(name: 'photo_height') int? photoHeight,
      String? title,
      String? description,
      String? caption,
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
class _$InlineQueryResultPhotoCopyWithImpl<$Res,
        $Val extends InlineQueryResultPhoto>
    implements $InlineQueryResultPhotoCopyWith<$Res> {
  _$InlineQueryResultPhotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InlineQueryResultPhoto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? id = null,
    Object? photoUrl = null,
    Object? thumbnailUrl = null,
    Object? photoWidth = freezed,
    Object? photoHeight = freezed,
    Object? title = freezed,
    Object? description = freezed,
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
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      photoWidth: freezed == photoWidth
          ? _value.photoWidth
          : photoWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      photoHeight: freezed == photoHeight
          ? _value.photoHeight
          : photoHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ) as $Val);
  }

  /// Create a copy of InlineQueryResultPhoto
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
abstract class _$$InlineQueryResultPhotoImplCopyWith<$Res>
    implements $InlineQueryResultPhotoCopyWith<$Res> {
  factory _$$InlineQueryResultPhotoImplCopyWith(
          _$InlineQueryResultPhotoImpl value,
          $Res Function(_$InlineQueryResultPhotoImpl) then) =
      __$$InlineQueryResultPhotoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {InlineQueryResultType type,
      String id,
      @JsonKey(name: 'photo_url') String photoUrl,
      @JsonKey(name: 'thumbnail_url') String thumbnailUrl,
      @JsonKey(name: 'photo_width') int? photoWidth,
      @JsonKey(name: 'photo_height') int? photoHeight,
      String? title,
      String? description,
      String? caption,
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
class __$$InlineQueryResultPhotoImplCopyWithImpl<$Res>
    extends _$InlineQueryResultPhotoCopyWithImpl<$Res,
        _$InlineQueryResultPhotoImpl>
    implements _$$InlineQueryResultPhotoImplCopyWith<$Res> {
  __$$InlineQueryResultPhotoImplCopyWithImpl(
      _$InlineQueryResultPhotoImpl _value,
      $Res Function(_$InlineQueryResultPhotoImpl) _then)
      : super(_value, _then);

  /// Create a copy of InlineQueryResultPhoto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? id = null,
    Object? photoUrl = null,
    Object? thumbnailUrl = null,
    Object? photoWidth = freezed,
    Object? photoHeight = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? caption = freezed,
    Object? parseMode = freezed,
    Object? captionEntities = freezed,
    Object? replyMarkup = freezed,
    Object? inputMessageContent = freezed,
    Object? showCaptionAboveMedia = freezed,
  }) {
    return _then(_$InlineQueryResultPhotoImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InlineQueryResultType,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      photoWidth: freezed == photoWidth
          ? _value.photoWidth
          : photoWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      photoHeight: freezed == photoHeight
          ? _value.photoHeight
          : photoHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InlineQueryResultPhotoImpl implements _InlineQueryResultPhoto {
  const _$InlineQueryResultPhotoImpl(
      {this.type = InlineQueryResultType.photo,
      required this.id,
      @JsonKey(name: 'photo_url') required this.photoUrl,
      @JsonKey(name: 'thumbnail_url') required this.thumbnailUrl,
      @JsonKey(name: 'photo_width') this.photoWidth,
      @JsonKey(name: 'photo_height') this.photoHeight,
      this.title,
      this.description,
      this.caption,
      @JsonKey(name: 'parse_mode') this.parseMode,
      @JsonKey(name: 'caption_entities')
      final List<MessageEntity>? captionEntities,
      @JsonKey(name: 'reply_markup') this.replyMarkup,
      @JsonKey(name: 'input_message_content')
      @InputMessageContentConverter()
      this.inputMessageContent,
      @JsonKey(name: 'show_caption_above_media') this.showCaptionAboveMedia})
      : _captionEntities = captionEntities;

  factory _$InlineQueryResultPhotoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InlineQueryResultPhotoImplFromJson(json);

  /// Type of the result, always [InlineQueryResultType.photo]
  @override
  @JsonKey()
  final InlineQueryResultType type;

  /// Unique identifier for this result, 1-64 Bytes
  @override
  final String id;

  /// A valid URL of the photo. Photo must be in JPEG format. Photo size must
  /// not exceed 5MB
  @override
  @JsonKey(name: 'photo_url')
  final String photoUrl;

  /// URL of the thumbnail for the photo
  @override
  @JsonKey(name: 'thumbnail_url')
  final String thumbnailUrl;

  /// Optional. Width of the photo
  @override
  @JsonKey(name: 'photo_width')
  final int? photoWidth;

  /// Optional. Height of the photo
  @override
  @JsonKey(name: 'photo_height')
  final int? photoHeight;

  /// Optional. Title for the result
  @override
  final String? title;

  /// Optional. Short description of the result
  @override
  final String? description;

  /// Optional. Caption of the photo to be sent, 0-1024 characters after
  /// entities parsing
  @override
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

  /// Optional. Inline keyboard attached to the message
  @override
  @JsonKey(name: 'reply_markup')
  final InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the photo
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
    return 'InlineQueryResultPhoto(type: $type, id: $id, photoUrl: $photoUrl, thumbnailUrl: $thumbnailUrl, photoWidth: $photoWidth, photoHeight: $photoHeight, title: $title, description: $description, caption: $caption, parseMode: $parseMode, captionEntities: $captionEntities, replyMarkup: $replyMarkup, inputMessageContent: $inputMessageContent, showCaptionAboveMedia: $showCaptionAboveMedia)';
  }

  /// Create a copy of InlineQueryResultPhoto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InlineQueryResultPhotoImplCopyWith<_$InlineQueryResultPhotoImpl>
      get copyWith => __$$InlineQueryResultPhotoImplCopyWithImpl<
          _$InlineQueryResultPhotoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InlineQueryResultPhotoImplToJson(
      this,
    );
  }
}

abstract class _InlineQueryResultPhoto implements InlineQueryResultPhoto {
  const factory _InlineQueryResultPhoto(
      {final InlineQueryResultType type,
      required final String id,
      @JsonKey(name: 'photo_url') required final String photoUrl,
      @JsonKey(name: 'thumbnail_url') required final String thumbnailUrl,
      @JsonKey(name: 'photo_width') final int? photoWidth,
      @JsonKey(name: 'photo_height') final int? photoHeight,
      final String? title,
      final String? description,
      final String? caption,
      @JsonKey(name: 'parse_mode') final ParseMode? parseMode,
      @JsonKey(name: 'caption_entities')
      final List<MessageEntity>? captionEntities,
      @JsonKey(name: 'reply_markup') final InlineKeyboardMarkup? replyMarkup,
      @JsonKey(name: 'input_message_content')
      @InputMessageContentConverter()
      final InputMessageContent? inputMessageContent,
      @JsonKey(name: 'show_caption_above_media')
      final bool? showCaptionAboveMedia}) = _$InlineQueryResultPhotoImpl;

  factory _InlineQueryResultPhoto.fromJson(Map<String, dynamic> json) =
      _$InlineQueryResultPhotoImpl.fromJson;

  /// Type of the result, always [InlineQueryResultType.photo]
  @override
  InlineQueryResultType get type;

  /// Unique identifier for this result, 1-64 Bytes
  @override
  String get id;

  /// A valid URL of the photo. Photo must be in JPEG format. Photo size must
  /// not exceed 5MB
  @override
  @JsonKey(name: 'photo_url')
  String get photoUrl;

  /// URL of the thumbnail for the photo
  @override
  @JsonKey(name: 'thumbnail_url')
  String get thumbnailUrl;

  /// Optional. Width of the photo
  @override
  @JsonKey(name: 'photo_width')
  int? get photoWidth;

  /// Optional. Height of the photo
  @override
  @JsonKey(name: 'photo_height')
  int? get photoHeight;

  /// Optional. Title for the result
  @override
  String? get title;

  /// Optional. Short description of the result
  @override
  String? get description;

  /// Optional. Caption of the photo to be sent, 0-1024 characters after
  /// entities parsing
  @override
  String? get caption;

  /// Optional. Mode for parsing entities in the photo caption. See formatting
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

  /// Optional. Content of the message to be sent instead of the photo
  @override
  @JsonKey(name: 'input_message_content')
  @InputMessageContentConverter()
  InputMessageContent? get inputMessageContent;

  /// Optional. True, if the caption must be shown above the message media
  @override
  @JsonKey(name: 'show_caption_above_media')
  bool? get showCaptionAboveMedia;

  /// Create a copy of InlineQueryResultPhoto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InlineQueryResultPhotoImplCopyWith<_$InlineQueryResultPhotoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
