// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sticker_set.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StickerSet _$StickerSetFromJson(Map<String, dynamic> json) {
  return _StickerSet.fromJson(json);
}

/// @nodoc
mixin _$StickerSet {
  /// Sticker set name
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  /// Sticker set title
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;

  /// Type of stickers in the set, currently one of "regular", "mask",
  /// "custom_emoji"
  @JsonKey(name: 'sticker_type')
  StickerType get stickerType => throw _privateConstructorUsedError;

  /// List of all set stickers
  @JsonKey(name: 'stickers')
  List<Sticker> get stickers => throw _privateConstructorUsedError;

  /// Optional. Sticker set thumbnail in the .WEBP or .TGS format
  @JsonKey(name: 'thumbnail')
  PhotoSize? get thumbnail => throw _privateConstructorUsedError;

  /// Serializes this StickerSet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StickerSet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StickerSetCopyWith<StickerSet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StickerSetCopyWith<$Res> {
  factory $StickerSetCopyWith(
          StickerSet value, $Res Function(StickerSet) then) =
      _$StickerSetCopyWithImpl<$Res, StickerSet>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'sticker_type') StickerType stickerType,
      @JsonKey(name: 'stickers') List<Sticker> stickers,
      @JsonKey(name: 'thumbnail') PhotoSize? thumbnail});

  $PhotoSizeCopyWith<$Res>? get thumbnail;
}

/// @nodoc
class _$StickerSetCopyWithImpl<$Res, $Val extends StickerSet>
    implements $StickerSetCopyWith<$Res> {
  _$StickerSetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StickerSet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? title = null,
    Object? stickerType = null,
    Object? stickers = null,
    Object? thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      stickerType: null == stickerType
          ? _value.stickerType
          : stickerType // ignore: cast_nullable_to_non_nullable
              as StickerType,
      stickers: null == stickers
          ? _value.stickers
          : stickers // ignore: cast_nullable_to_non_nullable
              as List<Sticker>,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as PhotoSize?,
    ) as $Val);
  }

  /// Create a copy of StickerSet
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
}

/// @nodoc
abstract class _$$StickerSetImplCopyWith<$Res>
    implements $StickerSetCopyWith<$Res> {
  factory _$$StickerSetImplCopyWith(
          _$StickerSetImpl value, $Res Function(_$StickerSetImpl) then) =
      __$$StickerSetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'sticker_type') StickerType stickerType,
      @JsonKey(name: 'stickers') List<Sticker> stickers,
      @JsonKey(name: 'thumbnail') PhotoSize? thumbnail});

  @override
  $PhotoSizeCopyWith<$Res>? get thumbnail;
}

/// @nodoc
class __$$StickerSetImplCopyWithImpl<$Res>
    extends _$StickerSetCopyWithImpl<$Res, _$StickerSetImpl>
    implements _$$StickerSetImplCopyWith<$Res> {
  __$$StickerSetImplCopyWithImpl(
      _$StickerSetImpl _value, $Res Function(_$StickerSetImpl) _then)
      : super(_value, _then);

  /// Create a copy of StickerSet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? title = null,
    Object? stickerType = null,
    Object? stickers = null,
    Object? thumbnail = freezed,
  }) {
    return _then(_$StickerSetImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      stickerType: null == stickerType
          ? _value.stickerType
          : stickerType // ignore: cast_nullable_to_non_nullable
              as StickerType,
      stickers: null == stickers
          ? _value._stickers
          : stickers // ignore: cast_nullable_to_non_nullable
              as List<Sticker>,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as PhotoSize?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StickerSetImpl implements _StickerSet {
  const _$StickerSetImpl(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'sticker_type') required this.stickerType,
      @JsonKey(name: 'stickers') required final List<Sticker> stickers,
      @JsonKey(name: 'thumbnail') this.thumbnail})
      : _stickers = stickers;

  factory _$StickerSetImpl.fromJson(Map<String, dynamic> json) =>
      _$$StickerSetImplFromJson(json);

  /// Sticker set name
  @override
  @JsonKey(name: 'name')
  final String name;

  /// Sticker set title
  @override
  @JsonKey(name: 'title')
  final String title;

  /// Type of stickers in the set, currently one of "regular", "mask",
  /// "custom_emoji"
  @override
  @JsonKey(name: 'sticker_type')
  final StickerType stickerType;

  /// List of all set stickers
  final List<Sticker> _stickers;

  /// List of all set stickers
  @override
  @JsonKey(name: 'stickers')
  List<Sticker> get stickers {
    if (_stickers is EqualUnmodifiableListView) return _stickers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stickers);
  }

  /// Optional. Sticker set thumbnail in the .WEBP or .TGS format
  @override
  @JsonKey(name: 'thumbnail')
  final PhotoSize? thumbnail;

  @override
  String toString() {
    return 'StickerSet(name: $name, title: $title, stickerType: $stickerType, stickers: $stickers, thumbnail: $thumbnail)';
  }

  /// Create a copy of StickerSet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StickerSetImplCopyWith<_$StickerSetImpl> get copyWith =>
      __$$StickerSetImplCopyWithImpl<_$StickerSetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StickerSetImplToJson(
      this,
    );
  }
}

abstract class _StickerSet implements StickerSet {
  const factory _StickerSet(
          {@JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'sticker_type') required final StickerType stickerType,
          @JsonKey(name: 'stickers') required final List<Sticker> stickers,
          @JsonKey(name: 'thumbnail') final PhotoSize? thumbnail}) =
      _$StickerSetImpl;

  factory _StickerSet.fromJson(Map<String, dynamic> json) =
      _$StickerSetImpl.fromJson;

  /// Sticker set name
  @override
  @JsonKey(name: 'name')
  String get name;

  /// Sticker set title
  @override
  @JsonKey(name: 'title')
  String get title;

  /// Type of stickers in the set, currently one of "regular", "mask",
  /// "custom_emoji"
  @override
  @JsonKey(name: 'sticker_type')
  StickerType get stickerType;

  /// List of all set stickers
  @override
  @JsonKey(name: 'stickers')
  List<Sticker> get stickers;

  /// Optional. Sticker set thumbnail in the .WEBP or .TGS format
  @override
  @JsonKey(name: 'thumbnail')
  PhotoSize? get thumbnail;

  /// Create a copy of StickerSet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StickerSetImplCopyWith<_$StickerSetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
