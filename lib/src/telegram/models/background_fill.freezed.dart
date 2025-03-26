// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'background_fill.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
BackgroundFill _$BackgroundFillFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'solid':
      return BackgroundFillSolid.fromJson(json);
    case 'gradient':
      return BackgroundFillGradient.fromJson(json);
    case 'freeform_gradient':
      return BackgroundFillFreeformGradient.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'BackgroundFill',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$BackgroundFill {
  /// Type of the background fill - always `solid`
  @JsonKey(name: 'type')
  BackgroundFillType get type;

  /// Create a copy of BackgroundFill
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BackgroundFillCopyWith<BackgroundFill> get copyWith =>
      _$BackgroundFillCopyWithImpl<BackgroundFill>(
          this as BackgroundFill, _$identity);

  /// Serializes this BackgroundFill to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'BackgroundFill(type: $type)';
  }
}

/// @nodoc
abstract mixin class $BackgroundFillCopyWith<$Res> {
  factory $BackgroundFillCopyWith(
          BackgroundFill value, $Res Function(BackgroundFill) _then) =
      _$BackgroundFillCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'type') BackgroundFillType type});
}

/// @nodoc
class _$BackgroundFillCopyWithImpl<$Res>
    implements $BackgroundFillCopyWith<$Res> {
  _$BackgroundFillCopyWithImpl(this._self, this._then);

  final BackgroundFill _self;
  final $Res Function(BackgroundFill) _then;

  /// Create a copy of BackgroundFill
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as BackgroundFillType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class BackgroundFillSolid implements BackgroundFill {
  const BackgroundFillSolid(
      {@JsonKey(name: 'type') this.type = BackgroundFillType.solid,
      @JsonKey(name: 'color') required this.color});
  factory BackgroundFillSolid.fromJson(Map<String, dynamic> json) =>
      _$BackgroundFillSolidFromJson(json);

  /// Type of the background fill - always `solid`
  @override
  @JsonKey(name: 'type')
  final BackgroundFillType type;
  @JsonKey(name: 'color')
  final int color;

  /// Create a copy of BackgroundFill
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BackgroundFillSolidCopyWith<BackgroundFillSolid> get copyWith =>
      _$BackgroundFillSolidCopyWithImpl<BackgroundFillSolid>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BackgroundFillSolidToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'BackgroundFill.solid(type: $type, color: $color)';
  }
}

/// @nodoc
abstract mixin class $BackgroundFillSolidCopyWith<$Res>
    implements $BackgroundFillCopyWith<$Res> {
  factory $BackgroundFillSolidCopyWith(
          BackgroundFillSolid value, $Res Function(BackgroundFillSolid) _then) =
      _$BackgroundFillSolidCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') BackgroundFillType type,
      @JsonKey(name: 'color') int color});
}

/// @nodoc
class _$BackgroundFillSolidCopyWithImpl<$Res>
    implements $BackgroundFillSolidCopyWith<$Res> {
  _$BackgroundFillSolidCopyWithImpl(this._self, this._then);

  final BackgroundFillSolid _self;
  final $Res Function(BackgroundFillSolid) _then;

  /// Create a copy of BackgroundFill
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? color = null,
  }) {
    return _then(BackgroundFillSolid(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as BackgroundFillType,
      color: null == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class BackgroundFillGradient implements BackgroundFill {
  const BackgroundFillGradient(
      {@JsonKey(name: 'type') this.type = BackgroundFillType.gradient,
      @JsonKey(name: 'top_color') required this.topColor,
      @JsonKey(name: 'bottom_color') required this.bottomColor,
      @JsonKey(name: 'rotation_angle') required this.rotationAngle});
  factory BackgroundFillGradient.fromJson(Map<String, dynamic> json) =>
      _$BackgroundFillGradientFromJson(json);

  /// Type of the background fill - always `gradient`
  @override
  @JsonKey(name: 'type')
  final BackgroundFillType type;

  /// Top color of the gradient in the RGB24 format.
  @JsonKey(name: 'top_color')
  final int topColor;

  /// Bottom color of the gradient in the RGB24 format.
  @JsonKey(name: 'bottom_color')
  final int bottomColor;

  /// Clockwise rotation angle of the background fill in degrees, 0-359.
  @JsonKey(name: 'rotation_angle')
  final int rotationAngle;

  /// Create a copy of BackgroundFill
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BackgroundFillGradientCopyWith<BackgroundFillGradient> get copyWith =>
      _$BackgroundFillGradientCopyWithImpl<BackgroundFillGradient>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BackgroundFillGradientToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'BackgroundFill.gradient(type: $type, topColor: $topColor, bottomColor: $bottomColor, rotationAngle: $rotationAngle)';
  }
}

/// @nodoc
abstract mixin class $BackgroundFillGradientCopyWith<$Res>
    implements $BackgroundFillCopyWith<$Res> {
  factory $BackgroundFillGradientCopyWith(BackgroundFillGradient value,
          $Res Function(BackgroundFillGradient) _then) =
      _$BackgroundFillGradientCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') BackgroundFillType type,
      @JsonKey(name: 'top_color') int topColor,
      @JsonKey(name: 'bottom_color') int bottomColor,
      @JsonKey(name: 'rotation_angle') int rotationAngle});
}

/// @nodoc
class _$BackgroundFillGradientCopyWithImpl<$Res>
    implements $BackgroundFillGradientCopyWith<$Res> {
  _$BackgroundFillGradientCopyWithImpl(this._self, this._then);

  final BackgroundFillGradient _self;
  final $Res Function(BackgroundFillGradient) _then;

  /// Create a copy of BackgroundFill
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? topColor = null,
    Object? bottomColor = null,
    Object? rotationAngle = null,
  }) {
    return _then(BackgroundFillGradient(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as BackgroundFillType,
      topColor: null == topColor
          ? _self.topColor
          : topColor // ignore: cast_nullable_to_non_nullable
              as int,
      bottomColor: null == bottomColor
          ? _self.bottomColor
          : bottomColor // ignore: cast_nullable_to_non_nullable
              as int,
      rotationAngle: null == rotationAngle
          ? _self.rotationAngle
          : rotationAngle // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class BackgroundFillFreeformGradient implements BackgroundFill {
  const BackgroundFillFreeformGradient(
      {@JsonKey(name: 'type') this.type = BackgroundFillType.freeformGradient,
      @JsonKey(name: 'colors') required final List<int> colors})
      : _colors = colors;
  factory BackgroundFillFreeformGradient.fromJson(Map<String, dynamic> json) =>
      _$BackgroundFillFreeformGradientFromJson(json);

  /// Type of the background fill - always `freeform_gradient`
  @override
  @JsonKey(name: 'type')
  final BackgroundFillType type;

  /// A list of the 3 or 4 base colors that are used to generate the freeform
  /// gradient in the RGB24 format.
  final List<int> _colors;

  /// A list of the 3 or 4 base colors that are used to generate the freeform
  /// gradient in the RGB24 format.
  @JsonKey(name: 'colors')
  List<int> get colors {
    if (_colors is EqualUnmodifiableListView) return _colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_colors);
  }

  /// Create a copy of BackgroundFill
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BackgroundFillFreeformGradientCopyWith<BackgroundFillFreeformGradient>
      get copyWith => _$BackgroundFillFreeformGradientCopyWithImpl<
          BackgroundFillFreeformGradient>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BackgroundFillFreeformGradientToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'BackgroundFill.freeformGradient(type: $type, colors: $colors)';
  }
}

/// @nodoc
abstract mixin class $BackgroundFillFreeformGradientCopyWith<$Res>
    implements $BackgroundFillCopyWith<$Res> {
  factory $BackgroundFillFreeformGradientCopyWith(
          BackgroundFillFreeformGradient value,
          $Res Function(BackgroundFillFreeformGradient) _then) =
      _$BackgroundFillFreeformGradientCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') BackgroundFillType type,
      @JsonKey(name: 'colors') List<int> colors});
}

/// @nodoc
class _$BackgroundFillFreeformGradientCopyWithImpl<$Res>
    implements $BackgroundFillFreeformGradientCopyWith<$Res> {
  _$BackgroundFillFreeformGradientCopyWithImpl(this._self, this._then);

  final BackgroundFillFreeformGradient _self;
  final $Res Function(BackgroundFillFreeformGradient) _then;

  /// Create a copy of BackgroundFill
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? colors = null,
  }) {
    return _then(BackgroundFillFreeformGradient(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as BackgroundFillType,
      colors: null == colors
          ? _self._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}
