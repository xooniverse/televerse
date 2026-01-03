// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'story_area_position.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StoryAreaPosition {
  /// The abscissa of the area's center, as a percentage of the media width
  @JsonKey(name: 'x_percentage')
  double get xPercentage;

  /// The ordinate of the area's center, as a percentage of the media height
  @JsonKey(name: 'y_percentage')
  double get yPercentage;

  /// The width of the area's rectangle, as a percentage of the media width
  @JsonKey(name: 'width_percentage')
  double get widthPercentage;

  /// The height of the area's rectangle, as a percentage of the media height
  @JsonKey(name: 'height_percentage')
  double get heightPercentage;

  /// The clockwise rotation angle of the rectangle, in degrees; 0-360
  @JsonKey(name: 'rotation_angle')
  double get rotationAngle;

  /// The radius of the rectangle corner rounding, as a percentage of the media width
  @JsonKey(name: 'corner_radius_percentage')
  double get cornerRadiusPercentage;

  /// Create a copy of StoryAreaPosition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StoryAreaPositionCopyWith<StoryAreaPosition> get copyWith =>
      _$StoryAreaPositionCopyWithImpl<StoryAreaPosition>(
        this as StoryAreaPosition,
        _$identity,
      );

  /// Serializes this StoryAreaPosition to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'StoryAreaPosition(xPercentage: $xPercentage, yPercentage: $yPercentage, widthPercentage: $widthPercentage, heightPercentage: $heightPercentage, rotationAngle: $rotationAngle, cornerRadiusPercentage: $cornerRadiusPercentage)';
  }
}

/// @nodoc
abstract mixin class $StoryAreaPositionCopyWith<$Res> {
  factory $StoryAreaPositionCopyWith(
    StoryAreaPosition value,
    $Res Function(StoryAreaPosition) _then,
  ) = _$StoryAreaPositionCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'x_percentage') double xPercentage,
    @JsonKey(name: 'y_percentage') double yPercentage,
    @JsonKey(name: 'width_percentage') double widthPercentage,
    @JsonKey(name: 'height_percentage') double heightPercentage,
    @JsonKey(name: 'rotation_angle') double rotationAngle,
    @JsonKey(name: 'corner_radius_percentage') double cornerRadiusPercentage,
  });
}

/// @nodoc
class _$StoryAreaPositionCopyWithImpl<$Res>
    implements $StoryAreaPositionCopyWith<$Res> {
  _$StoryAreaPositionCopyWithImpl(this._self, this._then);

  final StoryAreaPosition _self;
  final $Res Function(StoryAreaPosition) _then;

  /// Create a copy of StoryAreaPosition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xPercentage = null,
    Object? yPercentage = null,
    Object? widthPercentage = null,
    Object? heightPercentage = null,
    Object? rotationAngle = null,
    Object? cornerRadiusPercentage = null,
  }) {
    return _then(
      _self.copyWith(
        xPercentage: null == xPercentage
            ? _self.xPercentage
            : xPercentage // ignore: cast_nullable_to_non_nullable
                  as double,
        yPercentage: null == yPercentage
            ? _self.yPercentage
            : yPercentage // ignore: cast_nullable_to_non_nullable
                  as double,
        widthPercentage: null == widthPercentage
            ? _self.widthPercentage
            : widthPercentage // ignore: cast_nullable_to_non_nullable
                  as double,
        heightPercentage: null == heightPercentage
            ? _self.heightPercentage
            : heightPercentage // ignore: cast_nullable_to_non_nullable
                  as double,
        rotationAngle: null == rotationAngle
            ? _self.rotationAngle
            : rotationAngle // ignore: cast_nullable_to_non_nullable
                  as double,
        cornerRadiusPercentage: null == cornerRadiusPercentage
            ? _self.cornerRadiusPercentage
            : cornerRadiusPercentage // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [StoryAreaPosition].
extension StoryAreaPositionPatterns on StoryAreaPosition {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_StoryAreaPosition value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StoryAreaPosition() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_StoryAreaPosition value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StoryAreaPosition():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_StoryAreaPosition value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StoryAreaPosition() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StoryAreaPosition implements StoryAreaPosition {
  const _StoryAreaPosition({
    @JsonKey(name: 'x_percentage') required this.xPercentage,
    @JsonKey(name: 'y_percentage') required this.yPercentage,
    @JsonKey(name: 'width_percentage') required this.widthPercentage,
    @JsonKey(name: 'height_percentage') required this.heightPercentage,
    @JsonKey(name: 'rotation_angle') required this.rotationAngle,
    @JsonKey(name: 'corner_radius_percentage')
    required this.cornerRadiusPercentage,
  });
  factory _StoryAreaPosition.fromJson(Map<String, dynamic> json) =>
      _$StoryAreaPositionFromJson(json);

  /// The abscissa of the area's center, as a percentage of the media width
  @override
  @JsonKey(name: 'x_percentage')
  final double xPercentage;

  /// The ordinate of the area's center, as a percentage of the media height
  @override
  @JsonKey(name: 'y_percentage')
  final double yPercentage;

  /// The width of the area's rectangle, as a percentage of the media width
  @override
  @JsonKey(name: 'width_percentage')
  final double widthPercentage;

  /// The height of the area's rectangle, as a percentage of the media height
  @override
  @JsonKey(name: 'height_percentage')
  final double heightPercentage;

  /// The clockwise rotation angle of the rectangle, in degrees; 0-360
  @override
  @JsonKey(name: 'rotation_angle')
  final double rotationAngle;

  /// The radius of the rectangle corner rounding, as a percentage of the media width
  @override
  @JsonKey(name: 'corner_radius_percentage')
  final double cornerRadiusPercentage;

  /// Create a copy of StoryAreaPosition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StoryAreaPositionCopyWith<_StoryAreaPosition> get copyWith =>
      __$StoryAreaPositionCopyWithImpl<_StoryAreaPosition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StoryAreaPositionToJson(this);
  }

  @override
  String toString() {
    return 'StoryAreaPosition(xPercentage: $xPercentage, yPercentage: $yPercentage, widthPercentage: $widthPercentage, heightPercentage: $heightPercentage, rotationAngle: $rotationAngle, cornerRadiusPercentage: $cornerRadiusPercentage)';
  }
}

/// @nodoc
abstract mixin class _$StoryAreaPositionCopyWith<$Res>
    implements $StoryAreaPositionCopyWith<$Res> {
  factory _$StoryAreaPositionCopyWith(
    _StoryAreaPosition value,
    $Res Function(_StoryAreaPosition) _then,
  ) = __$StoryAreaPositionCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'x_percentage') double xPercentage,
    @JsonKey(name: 'y_percentage') double yPercentage,
    @JsonKey(name: 'width_percentage') double widthPercentage,
    @JsonKey(name: 'height_percentage') double heightPercentage,
    @JsonKey(name: 'rotation_angle') double rotationAngle,
    @JsonKey(name: 'corner_radius_percentage') double cornerRadiusPercentage,
  });
}

/// @nodoc
class __$StoryAreaPositionCopyWithImpl<$Res>
    implements _$StoryAreaPositionCopyWith<$Res> {
  __$StoryAreaPositionCopyWithImpl(this._self, this._then);

  final _StoryAreaPosition _self;
  final $Res Function(_StoryAreaPosition) _then;

  /// Create a copy of StoryAreaPosition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? xPercentage = null,
    Object? yPercentage = null,
    Object? widthPercentage = null,
    Object? heightPercentage = null,
    Object? rotationAngle = null,
    Object? cornerRadiusPercentage = null,
  }) {
    return _then(
      _StoryAreaPosition(
        xPercentage: null == xPercentage
            ? _self.xPercentage
            : xPercentage // ignore: cast_nullable_to_non_nullable
                  as double,
        yPercentage: null == yPercentage
            ? _self.yPercentage
            : yPercentage // ignore: cast_nullable_to_non_nullable
                  as double,
        widthPercentage: null == widthPercentage
            ? _self.widthPercentage
            : widthPercentage // ignore: cast_nullable_to_non_nullable
                  as double,
        heightPercentage: null == heightPercentage
            ? _self.heightPercentage
            : heightPercentage // ignore: cast_nullable_to_non_nullable
                  as double,
        rotationAngle: null == rotationAngle
            ? _self.rotationAngle
            : rotationAngle // ignore: cast_nullable_to_non_nullable
                  as double,
        cornerRadiusPercentage: null == cornerRadiusPercentage
            ? _self.cornerRadiusPercentage
            : cornerRadiusPercentage // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}
