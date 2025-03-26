// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sticker_set.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StickerSet {
  /// Sticker set name
  @JsonKey(name: 'name')
  String get name;

  /// Sticker set title
  @JsonKey(name: 'title')
  String get title;

  /// Type of stickers in the set, currently one of "regular", "mask",
  /// "custom_emoji"
  @JsonKey(name: 'sticker_type')
  StickerType get stickerType;

  /// List of all set stickers
  @JsonKey(name: 'stickers')
  List<Sticker> get stickers;

  /// Optional. Sticker set thumbnail in the .WEBP or .TGS format
  @JsonKey(name: 'thumbnail')
  PhotoSize? get thumbnail;

  /// Create a copy of StickerSet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StickerSetCopyWith<StickerSet> get copyWith =>
      _$StickerSetCopyWithImpl<StickerSet>(this as StickerSet, _$identity);

  /// Serializes this StickerSet to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'StickerSet(name: $name, title: $title, stickerType: $stickerType, stickers: $stickers, thumbnail: $thumbnail)';
  }
}

/// @nodoc
abstract mixin class $StickerSetCopyWith<$Res> {
  factory $StickerSetCopyWith(
          StickerSet value, $Res Function(StickerSet) _then) =
      _$StickerSetCopyWithImpl;
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
class _$StickerSetCopyWithImpl<$Res> implements $StickerSetCopyWith<$Res> {
  _$StickerSetCopyWithImpl(this._self, this._then);

  final StickerSet _self;
  final $Res Function(StickerSet) _then;

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
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      stickerType: null == stickerType
          ? _self.stickerType
          : stickerType // ignore: cast_nullable_to_non_nullable
              as StickerType,
      stickers: null == stickers
          ? _self.stickers
          : stickers // ignore: cast_nullable_to_non_nullable
              as List<Sticker>,
      thumbnail: freezed == thumbnail
          ? _self.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as PhotoSize?,
    ));
  }

  /// Create a copy of StickerSet
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
}

/// @nodoc
@JsonSerializable()
class _StickerSet implements StickerSet {
  const _StickerSet(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'sticker_type') required this.stickerType,
      @JsonKey(name: 'stickers') required final List<Sticker> stickers,
      @JsonKey(name: 'thumbnail') this.thumbnail})
      : _stickers = stickers;
  factory _StickerSet.fromJson(Map<String, dynamic> json) =>
      _$StickerSetFromJson(json);

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

  /// Create a copy of StickerSet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StickerSetCopyWith<_StickerSet> get copyWith =>
      __$StickerSetCopyWithImpl<_StickerSet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StickerSetToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'StickerSet(name: $name, title: $title, stickerType: $stickerType, stickers: $stickers, thumbnail: $thumbnail)';
  }
}

/// @nodoc
abstract mixin class _$StickerSetCopyWith<$Res>
    implements $StickerSetCopyWith<$Res> {
  factory _$StickerSetCopyWith(
          _StickerSet value, $Res Function(_StickerSet) _then) =
      __$StickerSetCopyWithImpl;
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
class __$StickerSetCopyWithImpl<$Res> implements _$StickerSetCopyWith<$Res> {
  __$StickerSetCopyWithImpl(this._self, this._then);

  final _StickerSet _self;
  final $Res Function(_StickerSet) _then;

  /// Create a copy of StickerSet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? title = null,
    Object? stickerType = null,
    Object? stickers = null,
    Object? thumbnail = freezed,
  }) {
    return _then(_StickerSet(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      stickerType: null == stickerType
          ? _self.stickerType
          : stickerType // ignore: cast_nullable_to_non_nullable
              as StickerType,
      stickers: null == stickers
          ? _self._stickers
          : stickers // ignore: cast_nullable_to_non_nullable
              as List<Sticker>,
      thumbnail: freezed == thumbnail
          ? _self.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as PhotoSize?,
    ));
  }

  /// Create a copy of StickerSet
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
}
