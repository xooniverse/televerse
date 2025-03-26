// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sticker.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Sticker {
  /// Identifier for this file, which can be used to download or reuse the
  /// file
  @JsonKey(name: 'file_id')
  String get fileId;

  /// Unique identifier for this file, which is supposed to be the same over
  /// time and for different bots. Can't be used to download or reuse the
  /// file.
  @JsonKey(name: 'file_unique_id')
  String get fileUniqueId;

  /// Type of the sticker, currently one of "regular", "mask", "custom_emoji".
  /// The type of the sticker is independent from its format, which is
  /// determined by the fields is_animated and is_video.
  @JsonKey(name: 'type')
  StickerType get type;

  /// Sticker width
  @JsonKey(name: 'width')
  int get width;

  /// Sticker height
  @JsonKey(name: 'height')
  int get height;

  /// True, if the sticker is animated
  @JsonKey(name: 'is_animated')
  bool get isAnimated;

  /// True, if the sticker is a video sticker
  @JsonKey(name: 'is_video')
  bool get isVideo;

  /// Optional. Sticker thumbnail in the .WEBP or .JPG format
  @JsonKey(name: 'thumbnail')
  PhotoSize? get thumbnail;

  /// Optional. Emoji associated with the sticker
  @JsonKey(name: 'emoji')
  String? get emoji;

  /// Optional. Name of the sticker set to which the sticker belongs
  @JsonKey(name: 'set_name')
  String? get setName;

  /// Optional. For premium regular stickers, premium animation for the
  /// sticker
  @JsonKey(name: 'premium_animation')
  File? get premiumAnimation;

  /// Optional. For mask stickers, the position where the mask should be
  /// placed
  @JsonKey(name: 'mask_position')
  MaskPosition? get maskPosition;

  /// Optional. For custom emoji stickers, unique identifier of the custom
  /// emoji
  @JsonKey(name: 'custom_emoji_id')
  String? get customEmojiId;

  /// Optional. File size in bytes
  @JsonKey(name: 'file_size')
  int? get fileSize;

  /// Optional. True, if the sticker must be repainted to a text color in
  /// messages, the color of the Telegram Premium badge in emoji status, white
  /// color on chat photos, or another appropriate color in other places
  @JsonKey(name: 'needs_repainting')
  bool? get needsRepainting;

  /// Create a copy of Sticker
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StickerCopyWith<Sticker> get copyWith =>
      _$StickerCopyWithImpl<Sticker>(this as Sticker, _$identity);

  /// Serializes this Sticker to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'Sticker(fileId: $fileId, fileUniqueId: $fileUniqueId, type: $type, width: $width, height: $height, isAnimated: $isAnimated, isVideo: $isVideo, thumbnail: $thumbnail, emoji: $emoji, setName: $setName, premiumAnimation: $premiumAnimation, maskPosition: $maskPosition, customEmojiId: $customEmojiId, fileSize: $fileSize, needsRepainting: $needsRepainting)';
  }
}

/// @nodoc
abstract mixin class $StickerCopyWith<$Res> {
  factory $StickerCopyWith(Sticker value, $Res Function(Sticker) _then) =
      _$StickerCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'file_id') String fileId,
      @JsonKey(name: 'file_unique_id') String fileUniqueId,
      @JsonKey(name: 'type') StickerType type,
      @JsonKey(name: 'width') int width,
      @JsonKey(name: 'height') int height,
      @JsonKey(name: 'is_animated') bool isAnimated,
      @JsonKey(name: 'is_video') bool isVideo,
      @JsonKey(name: 'thumbnail') PhotoSize? thumbnail,
      @JsonKey(name: 'emoji') String? emoji,
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
class _$StickerCopyWithImpl<$Res> implements $StickerCopyWith<$Res> {
  _$StickerCopyWithImpl(this._self, this._then);

  final Sticker _self;
  final $Res Function(Sticker) _then;

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
    return _then(_self.copyWith(
      fileId: null == fileId
          ? _self.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String,
      fileUniqueId: null == fileUniqueId
          ? _self.fileUniqueId
          : fileUniqueId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as StickerType,
      width: null == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      isAnimated: null == isAnimated
          ? _self.isAnimated
          : isAnimated // ignore: cast_nullable_to_non_nullable
              as bool,
      isVideo: null == isVideo
          ? _self.isVideo
          : isVideo // ignore: cast_nullable_to_non_nullable
              as bool,
      thumbnail: freezed == thumbnail
          ? _self.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as PhotoSize?,
      emoji: freezed == emoji
          ? _self.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String?,
      setName: freezed == setName
          ? _self.setName
          : setName // ignore: cast_nullable_to_non_nullable
              as String?,
      premiumAnimation: freezed == premiumAnimation
          ? _self.premiumAnimation
          : premiumAnimation // ignore: cast_nullable_to_non_nullable
              as File?,
      maskPosition: freezed == maskPosition
          ? _self.maskPosition
          : maskPosition // ignore: cast_nullable_to_non_nullable
              as MaskPosition?,
      customEmojiId: freezed == customEmojiId
          ? _self.customEmojiId
          : customEmojiId // ignore: cast_nullable_to_non_nullable
              as String?,
      fileSize: freezed == fileSize
          ? _self.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int?,
      needsRepainting: freezed == needsRepainting
          ? _self.needsRepainting
          : needsRepainting // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of Sticker
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PhotoSizeCopyWith<$Res>? get thumbnail {
    if (_self.thumbnail == null) {
      return null;
    }

    return $PhotoSizeCopyWith<$Res>(_self.thumbnail!, (value) {
      return _then(_self.copyWith(thumbnail: value));
    });
  }

  /// Create a copy of Sticker
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FileCopyWith<$Res>? get premiumAnimation {
    if (_self.premiumAnimation == null) {
      return null;
    }

    return $FileCopyWith<$Res>(_self.premiumAnimation!, (value) {
      return _then(_self.copyWith(premiumAnimation: value));
    });
  }

  /// Create a copy of Sticker
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MaskPositionCopyWith<$Res>? get maskPosition {
    if (_self.maskPosition == null) {
      return null;
    }

    return $MaskPositionCopyWith<$Res>(_self.maskPosition!, (value) {
      return _then(_self.copyWith(maskPosition: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _Sticker implements Sticker {
  const _Sticker(
      {@JsonKey(name: 'file_id') required this.fileId,
      @JsonKey(name: 'file_unique_id') required this.fileUniqueId,
      @JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'width') required this.width,
      @JsonKey(name: 'height') required this.height,
      @JsonKey(name: 'is_animated') required this.isAnimated,
      @JsonKey(name: 'is_video') required this.isVideo,
      @JsonKey(name: 'thumbnail') this.thumbnail,
      @JsonKey(name: 'emoji') this.emoji,
      @JsonKey(name: 'set_name') this.setName,
      @JsonKey(name: 'premium_animation') this.premiumAnimation,
      @JsonKey(name: 'mask_position') this.maskPosition,
      @JsonKey(name: 'custom_emoji_id') this.customEmojiId,
      @JsonKey(name: 'file_size') this.fileSize,
      @JsonKey(name: 'needs_repainting') this.needsRepainting});
  factory _Sticker.fromJson(Map<String, dynamic> json) =>
      _$StickerFromJson(json);

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
  @JsonKey(name: 'type')
  final StickerType type;

  /// Sticker width
  @override
  @JsonKey(name: 'width')
  final int width;

  /// Sticker height
  @override
  @JsonKey(name: 'height')
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
  @JsonKey(name: 'thumbnail')
  final PhotoSize? thumbnail;

  /// Optional. Emoji associated with the sticker
  @override
  @JsonKey(name: 'emoji')
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

  /// Create a copy of Sticker
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StickerCopyWith<_Sticker> get copyWith =>
      __$StickerCopyWithImpl<_Sticker>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StickerToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'Sticker(fileId: $fileId, fileUniqueId: $fileUniqueId, type: $type, width: $width, height: $height, isAnimated: $isAnimated, isVideo: $isVideo, thumbnail: $thumbnail, emoji: $emoji, setName: $setName, premiumAnimation: $premiumAnimation, maskPosition: $maskPosition, customEmojiId: $customEmojiId, fileSize: $fileSize, needsRepainting: $needsRepainting)';
  }
}

/// @nodoc
abstract mixin class _$StickerCopyWith<$Res> implements $StickerCopyWith<$Res> {
  factory _$StickerCopyWith(_Sticker value, $Res Function(_Sticker) _then) =
      __$StickerCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'file_id') String fileId,
      @JsonKey(name: 'file_unique_id') String fileUniqueId,
      @JsonKey(name: 'type') StickerType type,
      @JsonKey(name: 'width') int width,
      @JsonKey(name: 'height') int height,
      @JsonKey(name: 'is_animated') bool isAnimated,
      @JsonKey(name: 'is_video') bool isVideo,
      @JsonKey(name: 'thumbnail') PhotoSize? thumbnail,
      @JsonKey(name: 'emoji') String? emoji,
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
class __$StickerCopyWithImpl<$Res> implements _$StickerCopyWith<$Res> {
  __$StickerCopyWithImpl(this._self, this._then);

  final _Sticker _self;
  final $Res Function(_Sticker) _then;

  /// Create a copy of Sticker
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_Sticker(
      fileId: null == fileId
          ? _self.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String,
      fileUniqueId: null == fileUniqueId
          ? _self.fileUniqueId
          : fileUniqueId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as StickerType,
      width: null == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      isAnimated: null == isAnimated
          ? _self.isAnimated
          : isAnimated // ignore: cast_nullable_to_non_nullable
              as bool,
      isVideo: null == isVideo
          ? _self.isVideo
          : isVideo // ignore: cast_nullable_to_non_nullable
              as bool,
      thumbnail: freezed == thumbnail
          ? _self.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as PhotoSize?,
      emoji: freezed == emoji
          ? _self.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String?,
      setName: freezed == setName
          ? _self.setName
          : setName // ignore: cast_nullable_to_non_nullable
              as String?,
      premiumAnimation: freezed == premiumAnimation
          ? _self.premiumAnimation
          : premiumAnimation // ignore: cast_nullable_to_non_nullable
              as File?,
      maskPosition: freezed == maskPosition
          ? _self.maskPosition
          : maskPosition // ignore: cast_nullable_to_non_nullable
              as MaskPosition?,
      customEmojiId: freezed == customEmojiId
          ? _self.customEmojiId
          : customEmojiId // ignore: cast_nullable_to_non_nullable
              as String?,
      fileSize: freezed == fileSize
          ? _self.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int?,
      needsRepainting: freezed == needsRepainting
          ? _self.needsRepainting
          : needsRepainting // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of Sticker
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PhotoSizeCopyWith<$Res>? get thumbnail {
    if (_self.thumbnail == null) {
      return null;
    }

    return $PhotoSizeCopyWith<$Res>(_self.thumbnail!, (value) {
      return _then(_self.copyWith(thumbnail: value));
    });
  }

  /// Create a copy of Sticker
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FileCopyWith<$Res>? get premiumAnimation {
    if (_self.premiumAnimation == null) {
      return null;
    }

    return $FileCopyWith<$Res>(_self.premiumAnimation!, (value) {
      return _then(_self.copyWith(premiumAnimation: value));
    });
  }

  /// Create a copy of Sticker
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MaskPositionCopyWith<$Res>? get maskPosition {
    if (_self.maskPosition == null) {
      return null;
    }

    return $MaskPositionCopyWith<$Res>(_self.maskPosition!, (value) {
      return _then(_self.copyWith(maskPosition: value));
    });
  }
}
