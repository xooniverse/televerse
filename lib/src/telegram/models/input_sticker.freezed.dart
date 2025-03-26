// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_sticker.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InputSticker {
  /// The added sticker. Pass a file_id as a String to send a file that
  /// already exists on the Telegram servers, pass an HTTP URL as a String for
  /// Telegram to get a file from the Internet, or upload a new one using
  /// multipart/form-data. Animated and video stickers can't be uploaded via
  /// HTTP URL. More information on Sending Files »
  @JsonKey(name: 'sticker')
  @InputFileConverter()
  InputFile get sticker;

  /// Format of the added sticker, must be one of "static" for a .WEBP or .PNG
  /// image, "animated" for a .TGS animation, "video" for a WEBM video
  @JsonKey(name: 'format')
  InputStickerFormat get format;

  /// List of 1-20 emoji associated with the sticker
  @JsonKey(name: 'emoji_list')
  List<String> get emojiList;

  /// Optional. Position where the mask should be placed on faces. For "mask"
  /// stickers only.
  @JsonKey(name: 'mask_position')
  MaskPosition? get maskPosition;

  /// Optional. List of 0-20 search keywords for the sticker with total length
  /// of up to 64 characters. For "regular" and "custom_emoji" stickers only.
  @JsonKey(name: 'keywords')
  List<String>? get keywords;

  /// Create a copy of InputSticker
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InputStickerCopyWith<InputSticker> get copyWith =>
      _$InputStickerCopyWithImpl<InputSticker>(
          this as InputSticker, _$identity);

  /// Serializes this InputSticker to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'InputSticker(sticker: $sticker, format: $format, emojiList: $emojiList, maskPosition: $maskPosition, keywords: $keywords)';
  }
}

/// @nodoc
abstract mixin class $InputStickerCopyWith<$Res> {
  factory $InputStickerCopyWith(
          InputSticker value, $Res Function(InputSticker) _then) =
      _$InputStickerCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'sticker') @InputFileConverter() InputFile sticker,
      @JsonKey(name: 'format') InputStickerFormat format,
      @JsonKey(name: 'emoji_list') List<String> emojiList,
      @JsonKey(name: 'mask_position') MaskPosition? maskPosition,
      @JsonKey(name: 'keywords') List<String>? keywords});

  $MaskPositionCopyWith<$Res>? get maskPosition;
}

/// @nodoc
class _$InputStickerCopyWithImpl<$Res> implements $InputStickerCopyWith<$Res> {
  _$InputStickerCopyWithImpl(this._self, this._then);

  final InputSticker _self;
  final $Res Function(InputSticker) _then;

  /// Create a copy of InputSticker
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sticker = null,
    Object? format = null,
    Object? emojiList = null,
    Object? maskPosition = freezed,
    Object? keywords = freezed,
  }) {
    return _then(_self.copyWith(
      sticker: null == sticker
          ? _self.sticker
          : sticker // ignore: cast_nullable_to_non_nullable
              as InputFile,
      format: null == format
          ? _self.format
          : format // ignore: cast_nullable_to_non_nullable
              as InputStickerFormat,
      emojiList: null == emojiList
          ? _self.emojiList
          : emojiList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      maskPosition: freezed == maskPosition
          ? _self.maskPosition
          : maskPosition // ignore: cast_nullable_to_non_nullable
              as MaskPosition?,
      keywords: freezed == keywords
          ? _self.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }

  /// Create a copy of InputSticker
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
@JsonSerializable(createFactory: false)
class _InputSticker implements InputSticker {
  const _InputSticker(
      {@JsonKey(name: 'sticker') @InputFileConverter() required this.sticker,
      @JsonKey(name: 'format') required this.format,
      @JsonKey(name: 'emoji_list') required final List<String> emojiList,
      @JsonKey(name: 'mask_position') this.maskPosition,
      @JsonKey(name: 'keywords') final List<String>? keywords})
      : _emojiList = emojiList,
        _keywords = keywords;

  /// The added sticker. Pass a file_id as a String to send a file that
  /// already exists on the Telegram servers, pass an HTTP URL as a String for
  /// Telegram to get a file from the Internet, or upload a new one using
  /// multipart/form-data. Animated and video stickers can't be uploaded via
  /// HTTP URL. More information on Sending Files »
  @override
  @JsonKey(name: 'sticker')
  @InputFileConverter()
  final InputFile sticker;

  /// Format of the added sticker, must be one of "static" for a .WEBP or .PNG
  /// image, "animated" for a .TGS animation, "video" for a WEBM video
  @override
  @JsonKey(name: 'format')
  final InputStickerFormat format;

  /// List of 1-20 emoji associated with the sticker
  final List<String> _emojiList;

  /// List of 1-20 emoji associated with the sticker
  @override
  @JsonKey(name: 'emoji_list')
  List<String> get emojiList {
    if (_emojiList is EqualUnmodifiableListView) return _emojiList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_emojiList);
  }

  /// Optional. Position where the mask should be placed on faces. For "mask"
  /// stickers only.
  @override
  @JsonKey(name: 'mask_position')
  final MaskPosition? maskPosition;

  /// Optional. List of 0-20 search keywords for the sticker with total length
  /// of up to 64 characters. For "regular" and "custom_emoji" stickers only.
  final List<String>? _keywords;

  /// Optional. List of 0-20 search keywords for the sticker with total length
  /// of up to 64 characters. For "regular" and "custom_emoji" stickers only.
  @override
  @JsonKey(name: 'keywords')
  List<String>? get keywords {
    final value = _keywords;
    if (value == null) return null;
    if (_keywords is EqualUnmodifiableListView) return _keywords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of InputSticker
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InputStickerCopyWith<_InputSticker> get copyWith =>
      __$InputStickerCopyWithImpl<_InputSticker>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InputStickerToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'InputSticker(sticker: $sticker, format: $format, emojiList: $emojiList, maskPosition: $maskPosition, keywords: $keywords)';
  }
}

/// @nodoc
abstract mixin class _$InputStickerCopyWith<$Res>
    implements $InputStickerCopyWith<$Res> {
  factory _$InputStickerCopyWith(
          _InputSticker value, $Res Function(_InputSticker) _then) =
      __$InputStickerCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sticker') @InputFileConverter() InputFile sticker,
      @JsonKey(name: 'format') InputStickerFormat format,
      @JsonKey(name: 'emoji_list') List<String> emojiList,
      @JsonKey(name: 'mask_position') MaskPosition? maskPosition,
      @JsonKey(name: 'keywords') List<String>? keywords});

  @override
  $MaskPositionCopyWith<$Res>? get maskPosition;
}

/// @nodoc
class __$InputStickerCopyWithImpl<$Res>
    implements _$InputStickerCopyWith<$Res> {
  __$InputStickerCopyWithImpl(this._self, this._then);

  final _InputSticker _self;
  final $Res Function(_InputSticker) _then;

  /// Create a copy of InputSticker
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sticker = null,
    Object? format = null,
    Object? emojiList = null,
    Object? maskPosition = freezed,
    Object? keywords = freezed,
  }) {
    return _then(_InputSticker(
      sticker: null == sticker
          ? _self.sticker
          : sticker // ignore: cast_nullable_to_non_nullable
              as InputFile,
      format: null == format
          ? _self.format
          : format // ignore: cast_nullable_to_non_nullable
              as InputStickerFormat,
      emojiList: null == emojiList
          ? _self._emojiList
          : emojiList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      maskPosition: freezed == maskPosition
          ? _self.maskPosition
          : maskPosition // ignore: cast_nullable_to_non_nullable
              as MaskPosition?,
      keywords: freezed == keywords
          ? _self._keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }

  /// Create a copy of InputSticker
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
