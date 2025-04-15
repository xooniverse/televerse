// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'story_area.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StoryArea {
  /// Position of the area
  @JsonKey(name: 'position')
  StoryAreaPosition get position;

  /// Type of the area
  @JsonKey(name: 'type')
  StoryAreaType get type;

  /// Create a copy of StoryArea
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StoryAreaCopyWith<StoryArea> get copyWith =>
      _$StoryAreaCopyWithImpl<StoryArea>(this as StoryArea, _$identity);

  /// Serializes this StoryArea to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'StoryArea(position: $position, type: $type)';
  }
}

/// @nodoc
abstract mixin class $StoryAreaCopyWith<$Res> {
  factory $StoryAreaCopyWith(StoryArea value, $Res Function(StoryArea) _then) =
      _$StoryAreaCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'position') StoryAreaPosition position,
      @JsonKey(name: 'type') StoryAreaType type});

  $StoryAreaPositionCopyWith<$Res> get position;
  $StoryAreaTypeCopyWith<$Res> get type;
}

/// @nodoc
class _$StoryAreaCopyWithImpl<$Res> implements $StoryAreaCopyWith<$Res> {
  _$StoryAreaCopyWithImpl(this._self, this._then);

  final StoryArea _self;
  final $Res Function(StoryArea) _then;

  /// Create a copy of StoryArea
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? type = null,
  }) {
    return _then(_self.copyWith(
      position: null == position
          ? _self.position
          : position // ignore: cast_nullable_to_non_nullable
              as StoryAreaPosition,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as StoryAreaType,
    ));
  }

  /// Create a copy of StoryArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoryAreaPositionCopyWith<$Res> get position {
    return $StoryAreaPositionCopyWith<$Res>(_self.position, (value) {
      return _then(_self.copyWith(position: value));
    });
  }

  /// Create a copy of StoryArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoryAreaTypeCopyWith<$Res> get type {
    return $StoryAreaTypeCopyWith<$Res>(_self.type, (value) {
      return _then(_self.copyWith(type: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StoryArea implements StoryArea {
  const _StoryArea(
      {@JsonKey(name: 'position') required this.position,
      @JsonKey(name: 'type') required this.type});
  factory _StoryArea.fromJson(Map<String, dynamic> json) =>
      _$StoryAreaFromJson(json);

  /// Position of the area
  @override
  @JsonKey(name: 'position')
  final StoryAreaPosition position;

  /// Type of the area
  @override
  @JsonKey(name: 'type')
  final StoryAreaType type;

  /// Create a copy of StoryArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StoryAreaCopyWith<_StoryArea> get copyWith =>
      __$StoryAreaCopyWithImpl<_StoryArea>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StoryAreaToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'StoryArea(position: $position, type: $type)';
  }
}

/// @nodoc
abstract mixin class _$StoryAreaCopyWith<$Res>
    implements $StoryAreaCopyWith<$Res> {
  factory _$StoryAreaCopyWith(
          _StoryArea value, $Res Function(_StoryArea) _then) =
      __$StoryAreaCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'position') StoryAreaPosition position,
      @JsonKey(name: 'type') StoryAreaType type});

  @override
  $StoryAreaPositionCopyWith<$Res> get position;
  @override
  $StoryAreaTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$StoryAreaCopyWithImpl<$Res> implements _$StoryAreaCopyWith<$Res> {
  __$StoryAreaCopyWithImpl(this._self, this._then);

  final _StoryArea _self;
  final $Res Function(_StoryArea) _then;

  /// Create a copy of StoryArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? position = null,
    Object? type = null,
  }) {
    return _then(_StoryArea(
      position: null == position
          ? _self.position
          : position // ignore: cast_nullable_to_non_nullable
              as StoryAreaPosition,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as StoryAreaType,
    ));
  }

  /// Create a copy of StoryArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoryAreaPositionCopyWith<$Res> get position {
    return $StoryAreaPositionCopyWith<$Res>(_self.position, (value) {
      return _then(_self.copyWith(position: value));
    });
  }

  /// Create a copy of StoryArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoryAreaTypeCopyWith<$Res> get type {
    return $StoryAreaTypeCopyWith<$Res>(_self.type, (value) {
      return _then(_self.copyWith(type: value));
    });
  }
}
