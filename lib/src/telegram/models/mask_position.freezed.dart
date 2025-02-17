// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mask_position.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MaskPosition _$MaskPositionFromJson(Map<String, dynamic> json) {
  return _MaskPosition.fromJson(json);
}

/// @nodoc
mixin _$MaskPosition {
  /// The part of the face relative to which the mask should be placed. One of
  /// "forehead", "eyes", "mouth", or "chin".
  MaskPositionPoint get point => throw _privateConstructorUsedError;

  /// Shift by X-axis measured in widths of the mask scaled to the face size,
  /// from left to right. For example, choosing -1.0 will place mask just to
  /// the left of the default mask position.
  @JsonKey(name: 'x_shift')
  double get xShift => throw _privateConstructorUsedError;

  /// Shift by Y-axis measured in heights of the mask scaled to the face size,
  /// from top to bottom. For example, 1.0 will place the mask just below the
  /// default mask position.
  @JsonKey(name: 'y_shift')
  double get yShift => throw _privateConstructorUsedError;

  /// Mask scaling coefficient. For example, 2.0 means double size.
  double get scale => throw _privateConstructorUsedError;

  /// Serializes this MaskPosition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MaskPosition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MaskPositionCopyWith<MaskPosition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaskPositionCopyWith<$Res> {
  factory $MaskPositionCopyWith(
          MaskPosition value, $Res Function(MaskPosition) then) =
      _$MaskPositionCopyWithImpl<$Res, MaskPosition>;
  @useResult
  $Res call(
      {MaskPositionPoint point,
      @JsonKey(name: 'x_shift') double xShift,
      @JsonKey(name: 'y_shift') double yShift,
      double scale});
}

/// @nodoc
class _$MaskPositionCopyWithImpl<$Res, $Val extends MaskPosition>
    implements $MaskPositionCopyWith<$Res> {
  _$MaskPositionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MaskPosition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? point = null,
    Object? xShift = null,
    Object? yShift = null,
    Object? scale = null,
  }) {
    return _then(_value.copyWith(
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as MaskPositionPoint,
      xShift: null == xShift
          ? _value.xShift
          : xShift // ignore: cast_nullable_to_non_nullable
              as double,
      yShift: null == yShift
          ? _value.yShift
          : yShift // ignore: cast_nullable_to_non_nullable
              as double,
      scale: null == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MaskPositionImplCopyWith<$Res>
    implements $MaskPositionCopyWith<$Res> {
  factory _$$MaskPositionImplCopyWith(
          _$MaskPositionImpl value, $Res Function(_$MaskPositionImpl) then) =
      __$$MaskPositionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MaskPositionPoint point,
      @JsonKey(name: 'x_shift') double xShift,
      @JsonKey(name: 'y_shift') double yShift,
      double scale});
}

/// @nodoc
class __$$MaskPositionImplCopyWithImpl<$Res>
    extends _$MaskPositionCopyWithImpl<$Res, _$MaskPositionImpl>
    implements _$$MaskPositionImplCopyWith<$Res> {
  __$$MaskPositionImplCopyWithImpl(
      _$MaskPositionImpl _value, $Res Function(_$MaskPositionImpl) _then)
      : super(_value, _then);

  /// Create a copy of MaskPosition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? point = null,
    Object? xShift = null,
    Object? yShift = null,
    Object? scale = null,
  }) {
    return _then(_$MaskPositionImpl(
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as MaskPositionPoint,
      xShift: null == xShift
          ? _value.xShift
          : xShift // ignore: cast_nullable_to_non_nullable
              as double,
      yShift: null == yShift
          ? _value.yShift
          : yShift // ignore: cast_nullable_to_non_nullable
              as double,
      scale: null == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MaskPositionImpl implements _MaskPosition {
  const _$MaskPositionImpl(
      {required this.point,
      @JsonKey(name: 'x_shift') required this.xShift,
      @JsonKey(name: 'y_shift') required this.yShift,
      required this.scale});

  factory _$MaskPositionImpl.fromJson(Map<String, dynamic> json) =>
      _$$MaskPositionImplFromJson(json);

  /// The part of the face relative to which the mask should be placed. One of
  /// "forehead", "eyes", "mouth", or "chin".
  @override
  final MaskPositionPoint point;

  /// Shift by X-axis measured in widths of the mask scaled to the face size,
  /// from left to right. For example, choosing -1.0 will place mask just to
  /// the left of the default mask position.
  @override
  @JsonKey(name: 'x_shift')
  final double xShift;

  /// Shift by Y-axis measured in heights of the mask scaled to the face size,
  /// from top to bottom. For example, 1.0 will place the mask just below the
  /// default mask position.
  @override
  @JsonKey(name: 'y_shift')
  final double yShift;

  /// Mask scaling coefficient. For example, 2.0 means double size.
  @override
  final double scale;

  @override
  String toString() {
    return 'MaskPosition(point: $point, xShift: $xShift, yShift: $yShift, scale: $scale)';
  }

  /// Create a copy of MaskPosition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MaskPositionImplCopyWith<_$MaskPositionImpl> get copyWith =>
      __$$MaskPositionImplCopyWithImpl<_$MaskPositionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MaskPositionImplToJson(
      this,
    );
  }
}

abstract class _MaskPosition implements MaskPosition {
  const factory _MaskPosition(
      {required final MaskPositionPoint point,
      @JsonKey(name: 'x_shift') required final double xShift,
      @JsonKey(name: 'y_shift') required final double yShift,
      required final double scale}) = _$MaskPositionImpl;

  factory _MaskPosition.fromJson(Map<String, dynamic> json) =
      _$MaskPositionImpl.fromJson;

  /// The part of the face relative to which the mask should be placed. One of
  /// "forehead", "eyes", "mouth", or "chin".
  @override
  MaskPositionPoint get point;

  /// Shift by X-axis measured in widths of the mask scaled to the face size,
  /// from left to right. For example, choosing -1.0 will place mask just to
  /// the left of the default mask position.
  @override
  @JsonKey(name: 'x_shift')
  double get xShift;

  /// Shift by Y-axis measured in heights of the mask scaled to the face size,
  /// from top to bottom. For example, 1.0 will place the mask just below the
  /// default mask position.
  @override
  @JsonKey(name: 'y_shift')
  double get yShift;

  /// Mask scaling coefficient. For example, 2.0 means double size.
  @override
  double get scale;

  /// Create a copy of MaskPosition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MaskPositionImplCopyWith<_$MaskPositionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
