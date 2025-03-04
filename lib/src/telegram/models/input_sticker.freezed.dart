// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_sticker.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InputSticker {
  /// The added sticker. Pass a file_id as a String to send a file that
  /// already exists on the Telegram servers, pass an HTTP URL as a String for
  /// Telegram to get a file from the Internet, or upload a new one using
  /// multipart/form-data. Animated and video stickers can't be uploaded via
  /// HTTP URL. More information on Sending Files »
  @JsonKey(name: 'sticker')
  @InputFileConverter()
  InputFile get sticker => throw _privateConstructorUsedError;

  /// Format of the added sticker, must be one of "static" for a .WEBP or .PNG
  /// image, "animated" for a .TGS animation, "video" for a WEBM video
  @JsonKey(name: 'format')
  InputStickerFormat get format => throw _privateConstructorUsedError;

  /// List of 1-20 emoji associated with the sticker
  @JsonKey(name: 'emoji_list')
  List<String> get emojiList => throw _privateConstructorUsedError;

  /// Optional. Position where the mask should be placed on faces. For "mask"
  /// stickers only.
  @JsonKey(name: 'mask_position')
  MaskPosition? get maskPosition => throw _privateConstructorUsedError;

  /// Optional. List of 0-20 search keywords for the sticker with total length
  /// of up to 64 characters. For "regular" and "custom_emoji" stickers only.
  @JsonKey(name: 'keywords')
  List<String>? get keywords => throw _privateConstructorUsedError;

  /// Serializes this InputSticker to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InputSticker
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InputStickerCopyWith<InputSticker> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputStickerCopyWith<$Res> {
  factory $InputStickerCopyWith(
          InputSticker value, $Res Function(InputSticker) then) =
      _$InputStickerCopyWithImpl<$Res, InputSticker>;
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
class _$InputStickerCopyWithImpl<$Res, $Val extends InputSticker>
    implements $InputStickerCopyWith<$Res> {
  _$InputStickerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      sticker: null == sticker
          ? _value.sticker
          : sticker // ignore: cast_nullable_to_non_nullable
              as InputFile,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as InputStickerFormat,
      emojiList: null == emojiList
          ? _value.emojiList
          : emojiList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      maskPosition: freezed == maskPosition
          ? _value.maskPosition
          : maskPosition // ignore: cast_nullable_to_non_nullable
              as MaskPosition?,
      keywords: freezed == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  /// Create a copy of InputSticker
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
abstract class _$$InputStickerImplCopyWith<$Res>
    implements $InputStickerCopyWith<$Res> {
  factory _$$InputStickerImplCopyWith(
          _$InputStickerImpl value, $Res Function(_$InputStickerImpl) then) =
      __$$InputStickerImplCopyWithImpl<$Res>;
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
class __$$InputStickerImplCopyWithImpl<$Res>
    extends _$InputStickerCopyWithImpl<$Res, _$InputStickerImpl>
    implements _$$InputStickerImplCopyWith<$Res> {
  __$$InputStickerImplCopyWithImpl(
      _$InputStickerImpl _value, $Res Function(_$InputStickerImpl) _then)
      : super(_value, _then);

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
    return _then(_$InputStickerImpl(
      sticker: null == sticker
          ? _value.sticker
          : sticker // ignore: cast_nullable_to_non_nullable
              as InputFile,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as InputStickerFormat,
      emojiList: null == emojiList
          ? _value._emojiList
          : emojiList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      maskPosition: freezed == maskPosition
          ? _value.maskPosition
          : maskPosition // ignore: cast_nullable_to_non_nullable
              as MaskPosition?,
      keywords: freezed == keywords
          ? _value._keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$InputStickerImpl implements _InputSticker {
  const _$InputStickerImpl(
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

  @override
  String toString() {
    return 'InputSticker(sticker: $sticker, format: $format, emojiList: $emojiList, maskPosition: $maskPosition, keywords: $keywords)';
  }

  /// Create a copy of InputSticker
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InputStickerImplCopyWith<_$InputStickerImpl> get copyWith =>
      __$$InputStickerImplCopyWithImpl<_$InputStickerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InputStickerImplToJson(
      this,
    );
  }
}

abstract class _InputSticker implements InputSticker {
  const factory _InputSticker(
          {@JsonKey(name: 'sticker')
          @InputFileConverter()
          required final InputFile sticker,
          @JsonKey(name: 'format') required final InputStickerFormat format,
          @JsonKey(name: 'emoji_list') required final List<String> emojiList,
          @JsonKey(name: 'mask_position') final MaskPosition? maskPosition,
          @JsonKey(name: 'keywords') final List<String>? keywords}) =
      _$InputStickerImpl;

  /// The added sticker. Pass a file_id as a String to send a file that
  /// already exists on the Telegram servers, pass an HTTP URL as a String for
  /// Telegram to get a file from the Internet, or upload a new one using
  /// multipart/form-data. Animated and video stickers can't be uploaded via
  /// HTTP URL. More information on Sending Files »
  @override
  @JsonKey(name: 'sticker')
  @InputFileConverter()
  InputFile get sticker;

  /// Format of the added sticker, must be one of "static" for a .WEBP or .PNG
  /// image, "animated" for a .TGS animation, "video" for a WEBM video
  @override
  @JsonKey(name: 'format')
  InputStickerFormat get format;

  /// List of 1-20 emoji associated with the sticker
  @override
  @JsonKey(name: 'emoji_list')
  List<String> get emojiList;

  /// Optional. Position where the mask should be placed on faces. For "mask"
  /// stickers only.
  @override
  @JsonKey(name: 'mask_position')
  MaskPosition? get maskPosition;

  /// Optional. List of 0-20 search keywords for the sticker with total length
  /// of up to 64 characters. For "regular" and "custom_emoji" stickers only.
  @override
  @JsonKey(name: 'keywords')
  List<String>? get keywords;

  /// Create a copy of InputSticker
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InputStickerImplCopyWith<_$InputStickerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
