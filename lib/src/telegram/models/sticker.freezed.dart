// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sticker.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Sticker _$StickerFromJson(Map<String, dynamic> json) {
  return _Sticker.fromJson(json);
}

/// @nodoc
mixin _$Sticker {
  /// Identifier for this file, which can be used to download or reuse the
  /// file
  @JsonKey(name: 'file_id')
  String get fileId => throw _privateConstructorUsedError;

  /// Unique identifier for this file, which is supposed to be the same over
  /// time and for different bots. Can't be used to download or reuse the
  /// file.
  @JsonKey(name: 'file_unique_id')
  String get fileUniqueId => throw _privateConstructorUsedError;

  /// Type of the sticker, currently one of "regular", "mask", "custom_emoji".
  /// The type of the sticker is independent from its format, which is
  /// determined by the fields is_animated and is_video.
  StickerType get type => throw _privateConstructorUsedError;

  /// Sticker width
  int get width => throw _privateConstructorUsedError;

  /// Sticker height
  int get height => throw _privateConstructorUsedError;

  /// True, if the sticker is animated
  @JsonKey(name: 'is_animated')
  bool get isAnimated => throw _privateConstructorUsedError;

  /// True, if the sticker is a video sticker
  @JsonKey(name: 'is_video')
  bool get isVideo => throw _privateConstructorUsedError;

  /// Optional. Sticker thumbnail in the .WEBP or .JPG format
  PhotoSize? get thumbnail => throw _privateConstructorUsedError;

  /// Optional. Emoji associated with the sticker
  String? get emoji => throw _privateConstructorUsedError;

  /// Optional. Name of the sticker set to which the sticker belongs
  @JsonKey(name: 'set_name')
  String? get setName => throw _privateConstructorUsedError;

  /// Optional. For premium regular stickers, premium animation for the
  /// sticker
  @JsonKey(name: 'premium_animation')
  File? get premiumAnimation => throw _privateConstructorUsedError;

  /// Optional. For mask stickers, the position where the mask should be
  /// placed
  @JsonKey(name: 'mask_position')
  MaskPosition? get maskPosition => throw _privateConstructorUsedError;

  /// Optional. For custom emoji stickers, unique identifier of the custom
  /// emoji
  @JsonKey(name: 'custom_emoji_id')
  String? get customEmojiId => throw _privateConstructorUsedError;

  /// Optional. File size in bytes
  @JsonKey(name: 'file_size')
  int? get fileSize => throw _privateConstructorUsedError;

  /// Optional. True, if the sticker must be repainted to a text color in
  /// messages, the color of the Telegram Premium badge in emoji status, white
  /// color on chat photos, or another appropriate color in other places
  @JsonKey(name: 'needs_repainting')
  bool? get needsRepainting => throw _privateConstructorUsedError;

  /// Serializes this Sticker to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Sticker
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StickerCopyWith<Sticker> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StickerCopyWith<$Res> {
  factory $StickerCopyWith(Sticker value, $Res Function(Sticker) then) =
      _$StickerCopyWithImpl<$Res, Sticker>;
  @useResult
  $Res call(
      {@JsonKey(name: 'file_id') String fileId,
      @JsonKey(name: 'file_unique_id') String fileUniqueId,
      StickerType type,
      int width,
      int height,
      @JsonKey(name: 'is_animated') bool isAnimated,
      @JsonKey(name: 'is_video') bool isVideo,
      PhotoSize? thumbnail,
      String? emoji,
      @JsonKey(name: 'set_name') String? setName,
      @JsonKey(name: 'premium_animation') File? premiumAnimation,
      @JsonKey(name: 'mask_position') MaskPosition? maskPosition,
      @JsonKey(name: 'custom_emoji_id') String? customEmojiId,
      @JsonKey(name: 'file_size') int? fileSize,
      @JsonKey(name: 'needs_repainting') bool? needsRepainting});

  $PhotoSizeCopyWith<$Res>? get thumbnail;
  $FileCopyWith<$Res>? get premiumAnimation;
  $MaskPositionCopyWith<$Res>? get maskPosition;
}

/// @nodoc
class _$StickerCopyWithImpl<$Res, $Val extends Sticker>
    implements $StickerCopyWith<$Res> {
  _$StickerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Sticker
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileId = null,
    Object? fileUniqueId = null,
    Object? type = null,
    Object? width = null,
    Object? height = null,
    Object? isAnimated = null,
    Object? isVideo = null,
    Object? thumbnail = freezed,
    Object? emoji = freezed,
    Object? setName = freezed,
    Object? premiumAnimation = freezed,
    Object? maskPosition = freezed,
    Object? customEmojiId = freezed,
    Object? fileSize = freezed,
    Object? needsRepainting = freezed,
  }) {
    return _then(_value.copyWith(
      fileId: null == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String,
      fileUniqueId: null == fileUniqueId
          ? _value.fileUniqueId
          : fileUniqueId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as StickerType,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      isAnimated: null == isAnimated
          ? _value.isAnimated
          : isAnimated // ignore: cast_nullable_to_non_nullable
              as bool,
      isVideo: null == isVideo
          ? _value.isVideo
          : isVideo // ignore: cast_nullable_to_non_nullable
              as bool,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as PhotoSize?,
      emoji: freezed == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String?,
      setName: freezed == setName
          ? _value.setName
          : setName // ignore: cast_nullable_to_non_nullable
              as String?,
      premiumAnimation: freezed == premiumAnimation
          ? _value.premiumAnimation
          : premiumAnimation // ignore: cast_nullable_to_non_nullable
              as File?,
      maskPosition: freezed == maskPosition
          ? _value.maskPosition
          : maskPosition // ignore: cast_nullable_to_non_nullable
              as MaskPosition?,
      customEmojiId: freezed == customEmojiId
          ? _value.customEmojiId
          : customEmojiId // ignore: cast_nullable_to_non_nullable
              as String?,
      fileSize: freezed == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int?,
      needsRepainting: freezed == needsRepainting
          ? _value.needsRepainting
          : needsRepainting // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of Sticker
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PhotoSizeCopyWith<$Res>? get thumbnail {
    if (_value.thumbnail == null) {
      return null;
    }

    return $PhotoSizeCopyWith<$Res>(_value.thumbnail!, (value) {
      return _then(_value.copyWith(thumbnail: value) as $Val);
    });
  }

  /// Create a copy of Sticker
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FileCopyWith<$Res>? get premiumAnimation {
    if (_value.premiumAnimation == null) {
      return null;
    }

    return $FileCopyWith<$Res>(_value.premiumAnimation!, (value) {
      return _then(_value.copyWith(premiumAnimation: value) as $Val);
    });
  }

  /// Create a copy of Sticker
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MaskPositionCopyWith<$Res>? get maskPosition {
    if (_value.maskPosition == null) {
      return null;
    }

    return $MaskPositionCopyWith<$Res>(_value.maskPosition!, (value) {
      return _then(_value.copyWith(maskPosition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StickerImplCopyWith<$Res> implements $StickerCopyWith<$Res> {
  factory _$$StickerImplCopyWith(
          _$StickerImpl value, $Res Function(_$StickerImpl) then) =
      __$$StickerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'file_id') String fileId,
      @JsonKey(name: 'file_unique_id') String fileUniqueId,
      StickerType type,
      int width,
      int height,
      @JsonKey(name: 'is_animated') bool isAnimated,
      @JsonKey(name: 'is_video') bool isVideo,
      PhotoSize? thumbnail,
      String? emoji,
      @JsonKey(name: 'set_name') String? setName,
      @JsonKey(name: 'premium_animation') File? premiumAnimation,
      @JsonKey(name: 'mask_position') MaskPosition? maskPosition,
      @JsonKey(name: 'custom_emoji_id') String? customEmojiId,
      @JsonKey(name: 'file_size') int? fileSize,
      @JsonKey(name: 'needs_repainting') bool? needsRepainting});

  @override
  $PhotoSizeCopyWith<$Res>? get thumbnail;
  @override
  $FileCopyWith<$Res>? get premiumAnimation;
  @override
  $MaskPositionCopyWith<$Res>? get maskPosition;
}

/// @nodoc
class __$$StickerImplCopyWithImpl<$Res>
    extends _$StickerCopyWithImpl<$Res, _$StickerImpl>
    implements _$$StickerImplCopyWith<$Res> {
  __$$StickerImplCopyWithImpl(
      _$StickerImpl _value, $Res Function(_$StickerImpl) _then)
      : super(_value, _then);

  /// Create a copy of Sticker
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileId = null,
    Object? fileUniqueId = null,
    Object? type = null,
    Object? width = null,
    Object? height = null,
    Object? isAnimated = null,
    Object? isVideo = null,
    Object? thumbnail = freezed,
    Object? emoji = freezed,
    Object? setName = freezed,
    Object? premiumAnimation = freezed,
    Object? maskPosition = freezed,
    Object? customEmojiId = freezed,
    Object? fileSize = freezed,
    Object? needsRepainting = freezed,
  }) {
    return _then(_$StickerImpl(
      fileId: null == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String,
      fileUniqueId: null == fileUniqueId
          ? _value.fileUniqueId
          : fileUniqueId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as StickerType,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      isAnimated: null == isAnimated
          ? _value.isAnimated
          : isAnimated // ignore: cast_nullable_to_non_nullable
              as bool,
      isVideo: null == isVideo
          ? _value.isVideo
          : isVideo // ignore: cast_nullable_to_non_nullable
              as bool,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as PhotoSize?,
      emoji: freezed == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String?,
      setName: freezed == setName
          ? _value.setName
          : setName // ignore: cast_nullable_to_non_nullable
              as String?,
      premiumAnimation: freezed == premiumAnimation
          ? _value.premiumAnimation
          : premiumAnimation // ignore: cast_nullable_to_non_nullable
              as File?,
      maskPosition: freezed == maskPosition
          ? _value.maskPosition
          : maskPosition // ignore: cast_nullable_to_non_nullable
              as MaskPosition?,
      customEmojiId: freezed == customEmojiId
          ? _value.customEmojiId
          : customEmojiId // ignore: cast_nullable_to_non_nullable
              as String?,
      fileSize: freezed == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int?,
      needsRepainting: freezed == needsRepainting
          ? _value.needsRepainting
          : needsRepainting // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StickerImpl implements _Sticker {
  const _$StickerImpl(
      {@JsonKey(name: 'file_id') required this.fileId,
      @JsonKey(name: 'file_unique_id') required this.fileUniqueId,
      required this.type,
      required this.width,
      required this.height,
      @JsonKey(name: 'is_animated') required this.isAnimated,
      @JsonKey(name: 'is_video') required this.isVideo,
      this.thumbnail,
      this.emoji,
      @JsonKey(name: 'set_name') this.setName,
      @JsonKey(name: 'premium_animation') this.premiumAnimation,
      @JsonKey(name: 'mask_position') this.maskPosition,
      @JsonKey(name: 'custom_emoji_id') this.customEmojiId,
      @JsonKey(name: 'file_size') this.fileSize,
      @JsonKey(name: 'needs_repainting') this.needsRepainting});

  factory _$StickerImpl.fromJson(Map<String, dynamic> json) =>
      _$$StickerImplFromJson(json);

  /// Identifier for this file, which can be used to download or reuse the
  /// file
  @override
  @JsonKey(name: 'file_id')
  final String fileId;

  /// Unique identifier for this file, which is supposed to be the same over
  /// time and for different bots. Can't be used to download or reuse the
  /// file.
  @override
  @JsonKey(name: 'file_unique_id')
  final String fileUniqueId;

  /// Type of the sticker, currently one of "regular", "mask", "custom_emoji".
  /// The type of the sticker is independent from its format, which is
  /// determined by the fields is_animated and is_video.
  @override
  final StickerType type;

  /// Sticker width
  @override
  final int width;

  /// Sticker height
  @override
  final int height;

  /// True, if the sticker is animated
  @override
  @JsonKey(name: 'is_animated')
  final bool isAnimated;

  /// True, if the sticker is a video sticker
  @override
  @JsonKey(name: 'is_video')
  final bool isVideo;

  /// Optional. Sticker thumbnail in the .WEBP or .JPG format
  @override
  final PhotoSize? thumbnail;

  /// Optional. Emoji associated with the sticker
  @override
  final String? emoji;

  /// Optional. Name of the sticker set to which the sticker belongs
  @override
  @JsonKey(name: 'set_name')
  final String? setName;

  /// Optional. For premium regular stickers, premium animation for the
  /// sticker
  @override
  @JsonKey(name: 'premium_animation')
  final File? premiumAnimation;

  /// Optional. For mask stickers, the position where the mask should be
  /// placed
  @override
  @JsonKey(name: 'mask_position')
  final MaskPosition? maskPosition;

  /// Optional. For custom emoji stickers, unique identifier of the custom
  /// emoji
  @override
  @JsonKey(name: 'custom_emoji_id')
  final String? customEmojiId;

  /// Optional. File size in bytes
  @override
  @JsonKey(name: 'file_size')
  final int? fileSize;

  /// Optional. True, if the sticker must be repainted to a text color in
  /// messages, the color of the Telegram Premium badge in emoji status, white
  /// color on chat photos, or another appropriate color in other places
  @override
  @JsonKey(name: 'needs_repainting')
  final bool? needsRepainting;

  @override
  String toString() {
    return 'Sticker(fileId: $fileId, fileUniqueId: $fileUniqueId, type: $type, width: $width, height: $height, isAnimated: $isAnimated, isVideo: $isVideo, thumbnail: $thumbnail, emoji: $emoji, setName: $setName, premiumAnimation: $premiumAnimation, maskPosition: $maskPosition, customEmojiId: $customEmojiId, fileSize: $fileSize, needsRepainting: $needsRepainting)';
  }

  /// Create a copy of Sticker
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StickerImplCopyWith<_$StickerImpl> get copyWith =>
      __$$StickerImplCopyWithImpl<_$StickerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StickerImplToJson(
      this,
    );
  }
}

abstract class _Sticker implements Sticker {
  const factory _Sticker(
          {@JsonKey(name: 'file_id') required final String fileId,
          @JsonKey(name: 'file_unique_id') required final String fileUniqueId,
          required final StickerType type,
          required final int width,
          required final int height,
          @JsonKey(name: 'is_animated') required final bool isAnimated,
          @JsonKey(name: 'is_video') required final bool isVideo,
          final PhotoSize? thumbnail,
          final String? emoji,
          @JsonKey(name: 'set_name') final String? setName,
          @JsonKey(name: 'premium_animation') final File? premiumAnimation,
          @JsonKey(name: 'mask_position') final MaskPosition? maskPosition,
          @JsonKey(name: 'custom_emoji_id') final String? customEmojiId,
          @JsonKey(name: 'file_size') final int? fileSize,
          @JsonKey(name: 'needs_repainting') final bool? needsRepainting}) =
      _$StickerImpl;

  factory _Sticker.fromJson(Map<String, dynamic> json) = _$StickerImpl.fromJson;

  /// Identifier for this file, which can be used to download or reuse the
  /// file
  @override
  @JsonKey(name: 'file_id')
  String get fileId;

  /// Unique identifier for this file, which is supposed to be the same over
  /// time and for different bots. Can't be used to download or reuse the
  /// file.
  @override
  @JsonKey(name: 'file_unique_id')
  String get fileUniqueId;

  /// Type of the sticker, currently one of "regular", "mask", "custom_emoji".
  /// The type of the sticker is independent from its format, which is
  /// determined by the fields is_animated and is_video.
  @override
  StickerType get type;

  /// Sticker width
  @override
  int get width;

  /// Sticker height
  @override
  int get height;

  /// True, if the sticker is animated
  @override
  @JsonKey(name: 'is_animated')
  bool get isAnimated;

  /// True, if the sticker is a video sticker
  @override
  @JsonKey(name: 'is_video')
  bool get isVideo;

  /// Optional. Sticker thumbnail in the .WEBP or .JPG format
  @override
  PhotoSize? get thumbnail;

  /// Optional. Emoji associated with the sticker
  @override
  String? get emoji;

  /// Optional. Name of the sticker set to which the sticker belongs
  @override
  @JsonKey(name: 'set_name')
  String? get setName;

  /// Optional. For premium regular stickers, premium animation for the
  /// sticker
  @override
  @JsonKey(name: 'premium_animation')
  File? get premiumAnimation;

  /// Optional. For mask stickers, the position where the mask should be
  /// placed
  @override
  @JsonKey(name: 'mask_position')
  MaskPosition? get maskPosition;

  /// Optional. For custom emoji stickers, unique identifier of the custom
  /// emoji
  @override
  @JsonKey(name: 'custom_emoji_id')
  String? get customEmojiId;

  /// Optional. File size in bytes
  @override
  @JsonKey(name: 'file_size')
  int? get fileSize;

  /// Optional. True, if the sticker must be repainted to a text color in
  /// messages, the color of the Telegram Premium badge in emoji status, white
  /// color on chat photos, or another appropriate color in other places
  @override
  @JsonKey(name: 'needs_repainting')
  bool? get needsRepainting;

  /// Create a copy of Sticker
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StickerImplCopyWith<_$StickerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
