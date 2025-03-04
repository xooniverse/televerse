// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paid_media_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaidMediaInfo _$PaidMediaInfoFromJson(Map<String, dynamic> json) {
  return _PaidMediaInfo.fromJson(json);
}

/// @nodoc
mixin _$PaidMediaInfo {
  /// The number of Telegram Stars that must be paid to buy access to the
  /// media.
  @JsonKey(name: 'star_count')
  int get starCount => throw _privateConstructorUsedError;

  /// Information about the paid media.
  @JsonKey(name: 'paid_media')
  List<PaidMedia> get paidMedia => throw _privateConstructorUsedError;

  /// Serializes this PaidMediaInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaidMediaInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaidMediaInfoCopyWith<PaidMediaInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaidMediaInfoCopyWith<$Res> {
  factory $PaidMediaInfoCopyWith(
          PaidMediaInfo value, $Res Function(PaidMediaInfo) then) =
      _$PaidMediaInfoCopyWithImpl<$Res, PaidMediaInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'star_count') int starCount,
      @JsonKey(name: 'paid_media') List<PaidMedia> paidMedia});
}

/// @nodoc
class _$PaidMediaInfoCopyWithImpl<$Res, $Val extends PaidMediaInfo>
    implements $PaidMediaInfoCopyWith<$Res> {
  _$PaidMediaInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaidMediaInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? starCount = null,
    Object? paidMedia = null,
  }) {
    return _then(_value.copyWith(
      starCount: null == starCount
          ? _value.starCount
          : starCount // ignore: cast_nullable_to_non_nullable
              as int,
      paidMedia: null == paidMedia
          ? _value.paidMedia
          : paidMedia // ignore: cast_nullable_to_non_nullable
              as List<PaidMedia>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaidMediaInfoImplCopyWith<$Res>
    implements $PaidMediaInfoCopyWith<$Res> {
  factory _$$PaidMediaInfoImplCopyWith(
          _$PaidMediaInfoImpl value, $Res Function(_$PaidMediaInfoImpl) then) =
      __$$PaidMediaInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'star_count') int starCount,
      @JsonKey(name: 'paid_media') List<PaidMedia> paidMedia});
}

/// @nodoc
class __$$PaidMediaInfoImplCopyWithImpl<$Res>
    extends _$PaidMediaInfoCopyWithImpl<$Res, _$PaidMediaInfoImpl>
    implements _$$PaidMediaInfoImplCopyWith<$Res> {
  __$$PaidMediaInfoImplCopyWithImpl(
      _$PaidMediaInfoImpl _value, $Res Function(_$PaidMediaInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaidMediaInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? starCount = null,
    Object? paidMedia = null,
  }) {
    return _then(_$PaidMediaInfoImpl(
      starCount: null == starCount
          ? _value.starCount
          : starCount // ignore: cast_nullable_to_non_nullable
              as int,
      paidMedia: null == paidMedia
          ? _value._paidMedia
          : paidMedia // ignore: cast_nullable_to_non_nullable
              as List<PaidMedia>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaidMediaInfoImpl implements _PaidMediaInfo {
  const _$PaidMediaInfoImpl(
      {@JsonKey(name: 'star_count') required this.starCount,
      @JsonKey(name: 'paid_media') required final List<PaidMedia> paidMedia})
      : _paidMedia = paidMedia;

  factory _$PaidMediaInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaidMediaInfoImplFromJson(json);

  /// The number of Telegram Stars that must be paid to buy access to the
  /// media.
  @override
  @JsonKey(name: 'star_count')
  final int starCount;

  /// Information about the paid media.
  final List<PaidMedia> _paidMedia;

  /// Information about the paid media.
  @override
  @JsonKey(name: 'paid_media')
  List<PaidMedia> get paidMedia {
    if (_paidMedia is EqualUnmodifiableListView) return _paidMedia;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paidMedia);
  }

  @override
  String toString() {
    return 'PaidMediaInfo(starCount: $starCount, paidMedia: $paidMedia)';
  }

  /// Create a copy of PaidMediaInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaidMediaInfoImplCopyWith<_$PaidMediaInfoImpl> get copyWith =>
      __$$PaidMediaInfoImplCopyWithImpl<_$PaidMediaInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaidMediaInfoImplToJson(
      this,
    );
  }
}

abstract class _PaidMediaInfo implements PaidMediaInfo {
  const factory _PaidMediaInfo(
      {@JsonKey(name: 'star_count') required final int starCount,
      @JsonKey(name: 'paid_media')
      required final List<PaidMedia> paidMedia}) = _$PaidMediaInfoImpl;

  factory _PaidMediaInfo.fromJson(Map<String, dynamic> json) =
      _$PaidMediaInfoImpl.fromJson;

  /// The number of Telegram Stars that must be paid to buy access to the
  /// media.
  @override
  @JsonKey(name: 'star_count')
  int get starCount;

  /// Information about the paid media.
  @override
  @JsonKey(name: 'paid_media')
  List<PaidMedia> get paidMedia;

  /// Create a copy of PaidMediaInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaidMediaInfoImplCopyWith<_$PaidMediaInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
