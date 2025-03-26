// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mask_position.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MaskPosition {
  /// The part of the face relative to which the mask should be placed. One of
  /// "forehead", "eyes", "mouth", or "chin".
  @JsonKey(name: 'point')
  MaskPositionPoint get point;

  /// Shift by X-axis measured in widths of the mask scaled to the face size,
  /// from left to right. For example, choosing -1.0 will place mask just to
  /// the left of the default mask position.
  @JsonKey(name: 'x_shift')
  double get xShift;

  /// Shift by Y-axis measured in heights of the mask scaled to the face size,
  /// from top to bottom. For example, 1.0 will place the mask just below the
  /// default mask position.
  @JsonKey(name: 'y_shift')
  double get yShift;

  /// Mask scaling coefficient. For example, 2.0 means double size.
  @JsonKey(name: 'scale')
  double get scale;

  /// Create a copy of MaskPosition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MaskPositionCopyWith<MaskPosition> get copyWith =>
      _$MaskPositionCopyWithImpl<MaskPosition>(
          this as MaskPosition, _$identity);

  /// Serializes this MaskPosition to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'MaskPosition(point: $point, xShift: $xShift, yShift: $yShift, scale: $scale)';
  }
}

/// @nodoc
abstract mixin class $MaskPositionCopyWith<$Res> {
  factory $MaskPositionCopyWith(
          MaskPosition value, $Res Function(MaskPosition) _then) =
      _$MaskPositionCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'point') MaskPositionPoint point,
      @JsonKey(name: 'x_shift') double xShift,
      @JsonKey(name: 'y_shift') double yShift,
      @JsonKey(name: 'scale') double scale});
}

/// @nodoc
class _$MaskPositionCopyWithImpl<$Res> implements $MaskPositionCopyWith<$Res> {
  _$MaskPositionCopyWithImpl(this._self, this._then);

  final MaskPosition _self;
  final $Res Function(MaskPosition) _then;

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
    return _then(_self.copyWith(
      point: null == point
          ? _self.point
          : point // ignore: cast_nullable_to_non_nullable
              as MaskPositionPoint,
      xShift: null == xShift
          ? _self.xShift
          : xShift // ignore: cast_nullable_to_non_nullable
              as double,
      yShift: null == yShift
          ? _self.yShift
          : yShift // ignore: cast_nullable_to_non_nullable
              as double,
      scale: null == scale
          ? _self.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _MaskPosition implements MaskPosition {
  const _MaskPosition(
      {@JsonKey(name: 'point') required this.point,
      @JsonKey(name: 'x_shift') required this.xShift,
      @JsonKey(name: 'y_shift') required this.yShift,
      @JsonKey(name: 'scale') required this.scale});
  factory _MaskPosition.fromJson(Map<String, dynamic> json) =>
      _$MaskPositionFromJson(json);

  /// The part of the face relative to which the mask should be placed. One of
  /// "forehead", "eyes", "mouth", or "chin".
  @override
  @JsonKey(name: 'point')
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
  @JsonKey(name: 'scale')
  final double scale;

  /// Create a copy of MaskPosition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MaskPositionCopyWith<_MaskPosition> get copyWith =>
      __$MaskPositionCopyWithImpl<_MaskPosition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MaskPositionToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'MaskPosition(point: $point, xShift: $xShift, yShift: $yShift, scale: $scale)';
  }
}

/// @nodoc
abstract mixin class _$MaskPositionCopyWith<$Res>
    implements $MaskPositionCopyWith<$Res> {
  factory _$MaskPositionCopyWith(
          _MaskPosition value, $Res Function(_MaskPosition) _then) =
      __$MaskPositionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'point') MaskPositionPoint point,
      @JsonKey(name: 'x_shift') double xShift,
      @JsonKey(name: 'y_shift') double yShift,
      @JsonKey(name: 'scale') double scale});
}

/// @nodoc
class __$MaskPositionCopyWithImpl<$Res>
    implements _$MaskPositionCopyWith<$Res> {
  __$MaskPositionCopyWithImpl(this._self, this._then);

  final _MaskPosition _self;
  final $Res Function(_MaskPosition) _then;

  /// Create a copy of MaskPosition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? point = null,
    Object? xShift = null,
    Object? yShift = null,
    Object? scale = null,
  }) {
    return _then(_MaskPosition(
      point: null == point
          ? _self.point
          : point // ignore: cast_nullable_to_non_nullable
              as MaskPositionPoint,
      xShift: null == xShift
          ? _self.xShift
          : xShift // ignore: cast_nullable_to_non_nullable
              as double,
      yShift: null == yShift
          ? _self.yShift
          : yShift // ignore: cast_nullable_to_non_nullable
              as double,
      scale: null == scale
          ? _self.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}
