// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'background_fill.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
  BackgroundFillType get type => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BackgroundFillSolid value) solid,
    required TResult Function(BackgroundFillGradient value) gradient,
    required TResult Function(BackgroundFillFreeformGradient value)
        freeformGradient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BackgroundFillSolid value)? solid,
    TResult? Function(BackgroundFillGradient value)? gradient,
    TResult? Function(BackgroundFillFreeformGradient value)? freeformGradient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BackgroundFillSolid value)? solid,
    TResult Function(BackgroundFillGradient value)? gradient,
    TResult Function(BackgroundFillFreeformGradient value)? freeformGradient,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this BackgroundFill to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BackgroundFill
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BackgroundFillCopyWith<BackgroundFill> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BackgroundFillCopyWith<$Res> {
  factory $BackgroundFillCopyWith(
          BackgroundFill value, $Res Function(BackgroundFill) then) =
      _$BackgroundFillCopyWithImpl<$Res, BackgroundFill>;
  @useResult
  $Res call({@JsonKey(name: 'type') BackgroundFillType type});
}

/// @nodoc
class _$BackgroundFillCopyWithImpl<$Res, $Val extends BackgroundFill>
    implements $BackgroundFillCopyWith<$Res> {
  _$BackgroundFillCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BackgroundFill
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BackgroundFillType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BackgroundFillSolidImplCopyWith<$Res>
    implements $BackgroundFillCopyWith<$Res> {
  factory _$$BackgroundFillSolidImplCopyWith(_$BackgroundFillSolidImpl value,
          $Res Function(_$BackgroundFillSolidImpl) then) =
      __$$BackgroundFillSolidImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') BackgroundFillType type,
      @JsonKey(name: 'color') int color});
}

/// @nodoc
class __$$BackgroundFillSolidImplCopyWithImpl<$Res>
    extends _$BackgroundFillCopyWithImpl<$Res, _$BackgroundFillSolidImpl>
    implements _$$BackgroundFillSolidImplCopyWith<$Res> {
  __$$BackgroundFillSolidImplCopyWithImpl(_$BackgroundFillSolidImpl _value,
      $Res Function(_$BackgroundFillSolidImpl) _then)
      : super(_value, _then);

  /// Create a copy of BackgroundFill
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? color = null,
  }) {
    return _then(_$BackgroundFillSolidImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BackgroundFillType,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BackgroundFillSolidImpl implements BackgroundFillSolid {
  const _$BackgroundFillSolidImpl(
      {@JsonKey(name: 'type') this.type = BackgroundFillType.solid,
      @JsonKey(name: 'color') required this.color});

  factory _$BackgroundFillSolidImpl.fromJson(Map<String, dynamic> json) =>
      _$$BackgroundFillSolidImplFromJson(json);

  /// Type of the background fill - always `solid`
  @override
  @JsonKey(name: 'type')
  final BackgroundFillType type;
  @override
  @JsonKey(name: 'color')
  final int color;

  @override
  String toString() {
    return 'BackgroundFill.solid(type: $type, color: $color)';
  }

  /// Create a copy of BackgroundFill
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BackgroundFillSolidImplCopyWith<_$BackgroundFillSolidImpl> get copyWith =>
      __$$BackgroundFillSolidImplCopyWithImpl<_$BackgroundFillSolidImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BackgroundFillSolid value) solid,
    required TResult Function(BackgroundFillGradient value) gradient,
    required TResult Function(BackgroundFillFreeformGradient value)
        freeformGradient,
  }) {
    return solid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BackgroundFillSolid value)? solid,
    TResult? Function(BackgroundFillGradient value)? gradient,
    TResult? Function(BackgroundFillFreeformGradient value)? freeformGradient,
  }) {
    return solid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BackgroundFillSolid value)? solid,
    TResult Function(BackgroundFillGradient value)? gradient,
    TResult Function(BackgroundFillFreeformGradient value)? freeformGradient,
    required TResult orElse(),
  }) {
    if (solid != null) {
      return solid(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BackgroundFillSolidImplToJson(
      this,
    );
  }
}

abstract class BackgroundFillSolid implements BackgroundFill {
  const factory BackgroundFillSolid(
          {@JsonKey(name: 'type') final BackgroundFillType type,
          @JsonKey(name: 'color') required final int color}) =
      _$BackgroundFillSolidImpl;

  factory BackgroundFillSolid.fromJson(Map<String, dynamic> json) =
      _$BackgroundFillSolidImpl.fromJson;

  /// Type of the background fill - always `solid`
  @override
  @JsonKey(name: 'type')
  BackgroundFillType get type;
  @JsonKey(name: 'color')
  int get color;

  /// Create a copy of BackgroundFill
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BackgroundFillSolidImplCopyWith<_$BackgroundFillSolidImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BackgroundFillGradientImplCopyWith<$Res>
    implements $BackgroundFillCopyWith<$Res> {
  factory _$$BackgroundFillGradientImplCopyWith(
          _$BackgroundFillGradientImpl value,
          $Res Function(_$BackgroundFillGradientImpl) then) =
      __$$BackgroundFillGradientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') BackgroundFillType type,
      @JsonKey(name: 'top_color') int topColor,
      @JsonKey(name: 'bottom_color') int bottomColor,
      @JsonKey(name: 'rotation_angle') int rotationAngle});
}

/// @nodoc
class __$$BackgroundFillGradientImplCopyWithImpl<$Res>
    extends _$BackgroundFillCopyWithImpl<$Res, _$BackgroundFillGradientImpl>
    implements _$$BackgroundFillGradientImplCopyWith<$Res> {
  __$$BackgroundFillGradientImplCopyWithImpl(
      _$BackgroundFillGradientImpl _value,
      $Res Function(_$BackgroundFillGradientImpl) _then)
      : super(_value, _then);

  /// Create a copy of BackgroundFill
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? topColor = null,
    Object? bottomColor = null,
    Object? rotationAngle = null,
  }) {
    return _then(_$BackgroundFillGradientImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BackgroundFillType,
      topColor: null == topColor
          ? _value.topColor
          : topColor // ignore: cast_nullable_to_non_nullable
              as int,
      bottomColor: null == bottomColor
          ? _value.bottomColor
          : bottomColor // ignore: cast_nullable_to_non_nullable
              as int,
      rotationAngle: null == rotationAngle
          ? _value.rotationAngle
          : rotationAngle // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BackgroundFillGradientImpl implements BackgroundFillGradient {
  const _$BackgroundFillGradientImpl(
      {@JsonKey(name: 'type') this.type = BackgroundFillType.gradient,
      @JsonKey(name: 'top_color') required this.topColor,
      @JsonKey(name: 'bottom_color') required this.bottomColor,
      @JsonKey(name: 'rotation_angle') required this.rotationAngle});

  factory _$BackgroundFillGradientImpl.fromJson(Map<String, dynamic> json) =>
      _$$BackgroundFillGradientImplFromJson(json);

  /// Type of the background fill - always `gradient`
  @override
  @JsonKey(name: 'type')
  final BackgroundFillType type;

  /// Top color of the gradient in the RGB24 format.
  @override
  @JsonKey(name: 'top_color')
  final int topColor;

  /// Bottom color of the gradient in the RGB24 format.
  @override
  @JsonKey(name: 'bottom_color')
  final int bottomColor;

  /// Clockwise rotation angle of the background fill in degrees, 0-359.
  @override
  @JsonKey(name: 'rotation_angle')
  final int rotationAngle;

  @override
  String toString() {
    return 'BackgroundFill.gradient(type: $type, topColor: $topColor, bottomColor: $bottomColor, rotationAngle: $rotationAngle)';
  }

  /// Create a copy of BackgroundFill
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BackgroundFillGradientImplCopyWith<_$BackgroundFillGradientImpl>
      get copyWith => __$$BackgroundFillGradientImplCopyWithImpl<
          _$BackgroundFillGradientImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BackgroundFillSolid value) solid,
    required TResult Function(BackgroundFillGradient value) gradient,
    required TResult Function(BackgroundFillFreeformGradient value)
        freeformGradient,
  }) {
    return gradient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BackgroundFillSolid value)? solid,
    TResult? Function(BackgroundFillGradient value)? gradient,
    TResult? Function(BackgroundFillFreeformGradient value)? freeformGradient,
  }) {
    return gradient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BackgroundFillSolid value)? solid,
    TResult Function(BackgroundFillGradient value)? gradient,
    TResult Function(BackgroundFillFreeformGradient value)? freeformGradient,
    required TResult orElse(),
  }) {
    if (gradient != null) {
      return gradient(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BackgroundFillGradientImplToJson(
      this,
    );
  }
}

abstract class BackgroundFillGradient implements BackgroundFill {
  const factory BackgroundFillGradient(
          {@JsonKey(name: 'type') final BackgroundFillType type,
          @JsonKey(name: 'top_color') required final int topColor,
          @JsonKey(name: 'bottom_color') required final int bottomColor,
          @JsonKey(name: 'rotation_angle') required final int rotationAngle}) =
      _$BackgroundFillGradientImpl;

  factory BackgroundFillGradient.fromJson(Map<String, dynamic> json) =
      _$BackgroundFillGradientImpl.fromJson;

  /// Type of the background fill - always `gradient`
  @override
  @JsonKey(name: 'type')
  BackgroundFillType get type;

  /// Top color of the gradient in the RGB24 format.
  @JsonKey(name: 'top_color')
  int get topColor;

  /// Bottom color of the gradient in the RGB24 format.
  @JsonKey(name: 'bottom_color')
  int get bottomColor;

  /// Clockwise rotation angle of the background fill in degrees, 0-359.
  @JsonKey(name: 'rotation_angle')
  int get rotationAngle;

  /// Create a copy of BackgroundFill
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BackgroundFillGradientImplCopyWith<_$BackgroundFillGradientImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BackgroundFillFreeformGradientImplCopyWith<$Res>
    implements $BackgroundFillCopyWith<$Res> {
  factory _$$BackgroundFillFreeformGradientImplCopyWith(
          _$BackgroundFillFreeformGradientImpl value,
          $Res Function(_$BackgroundFillFreeformGradientImpl) then) =
      __$$BackgroundFillFreeformGradientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') BackgroundFillType type,
      @JsonKey(name: 'colors') List<int> colors});
}

/// @nodoc
class __$$BackgroundFillFreeformGradientImplCopyWithImpl<$Res>
    extends _$BackgroundFillCopyWithImpl<$Res,
        _$BackgroundFillFreeformGradientImpl>
    implements _$$BackgroundFillFreeformGradientImplCopyWith<$Res> {
  __$$BackgroundFillFreeformGradientImplCopyWithImpl(
      _$BackgroundFillFreeformGradientImpl _value,
      $Res Function(_$BackgroundFillFreeformGradientImpl) _then)
      : super(_value, _then);

  /// Create a copy of BackgroundFill
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? colors = null,
  }) {
    return _then(_$BackgroundFillFreeformGradientImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BackgroundFillType,
      colors: null == colors
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BackgroundFillFreeformGradientImpl
    implements BackgroundFillFreeformGradient {
  const _$BackgroundFillFreeformGradientImpl(
      {@JsonKey(name: 'type') this.type = BackgroundFillType.freeformGradient,
      @JsonKey(name: 'colors') required final List<int> colors})
      : _colors = colors;

  factory _$BackgroundFillFreeformGradientImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BackgroundFillFreeformGradientImplFromJson(json);

  /// Type of the background fill - always `freeform_gradient`
  @override
  @JsonKey(name: 'type')
  final BackgroundFillType type;

  /// A list of the 3 or 4 base colors that are used to generate the freeform
  /// gradient in the RGB24 format.
  final List<int> _colors;

  /// A list of the 3 or 4 base colors that are used to generate the freeform
  /// gradient in the RGB24 format.
  @override
  @JsonKey(name: 'colors')
  List<int> get colors {
    if (_colors is EqualUnmodifiableListView) return _colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_colors);
  }

  @override
  String toString() {
    return 'BackgroundFill.freeformGradient(type: $type, colors: $colors)';
  }

  /// Create a copy of BackgroundFill
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BackgroundFillFreeformGradientImplCopyWith<
          _$BackgroundFillFreeformGradientImpl>
      get copyWith => __$$BackgroundFillFreeformGradientImplCopyWithImpl<
          _$BackgroundFillFreeformGradientImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BackgroundFillSolid value) solid,
    required TResult Function(BackgroundFillGradient value) gradient,
    required TResult Function(BackgroundFillFreeformGradient value)
        freeformGradient,
  }) {
    return freeformGradient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BackgroundFillSolid value)? solid,
    TResult? Function(BackgroundFillGradient value)? gradient,
    TResult? Function(BackgroundFillFreeformGradient value)? freeformGradient,
  }) {
    return freeformGradient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BackgroundFillSolid value)? solid,
    TResult Function(BackgroundFillGradient value)? gradient,
    TResult Function(BackgroundFillFreeformGradient value)? freeformGradient,
    required TResult orElse(),
  }) {
    if (freeformGradient != null) {
      return freeformGradient(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BackgroundFillFreeformGradientImplToJson(
      this,
    );
  }
}

abstract class BackgroundFillFreeformGradient implements BackgroundFill {
  const factory BackgroundFillFreeformGradient(
          {@JsonKey(name: 'type') final BackgroundFillType type,
          @JsonKey(name: 'colors') required final List<int> colors}) =
      _$BackgroundFillFreeformGradientImpl;

  factory BackgroundFillFreeformGradient.fromJson(Map<String, dynamic> json) =
      _$BackgroundFillFreeformGradientImpl.fromJson;

  /// Type of the background fill - always `freeform_gradient`
  @override
  @JsonKey(name: 'type')
  BackgroundFillType get type;

  /// A list of the 3 or 4 base colors that are used to generate the freeform
  /// gradient in the RGB24 format.
  @JsonKey(name: 'colors')
  List<int> get colors;

  /// Create a copy of BackgroundFill
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BackgroundFillFreeformGradientImplCopyWith<
          _$BackgroundFillFreeformGradientImpl>
      get copyWith => throw _privateConstructorUsedError;
}
