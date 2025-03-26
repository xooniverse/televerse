// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_chat_ended.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VideoChatEnded {
  /// Video chat duration in seconds
  @JsonKey(name: 'duration')
  int get duration;

  /// Create a copy of VideoChatEnded
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VideoChatEndedCopyWith<VideoChatEnded> get copyWith =>
      _$VideoChatEndedCopyWithImpl<VideoChatEnded>(
          this as VideoChatEnded, _$identity);

  /// Serializes this VideoChatEnded to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'VideoChatEnded(duration: $duration)';
  }
}

/// @nodoc
abstract mixin class $VideoChatEndedCopyWith<$Res> {
  factory $VideoChatEndedCopyWith(
          VideoChatEnded value, $Res Function(VideoChatEnded) _then) =
      _$VideoChatEndedCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'duration') int duration});
}

/// @nodoc
class _$VideoChatEndedCopyWithImpl<$Res>
    implements $VideoChatEndedCopyWith<$Res> {
  _$VideoChatEndedCopyWithImpl(this._self, this._then);

  final VideoChatEnded _self;
  final $Res Function(VideoChatEnded) _then;

  /// Create a copy of VideoChatEnded
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_self.copyWith(
      duration: null == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _VideoChatEnded implements VideoChatEnded {
  const _VideoChatEnded({@JsonKey(name: 'duration') required this.duration});
  factory _VideoChatEnded.fromJson(Map<String, dynamic> json) =>
      _$VideoChatEndedFromJson(json);

  /// Video chat duration in seconds
  @override
  @JsonKey(name: 'duration')
  final int duration;

  /// Create a copy of VideoChatEnded
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VideoChatEndedCopyWith<_VideoChatEnded> get copyWith =>
      __$VideoChatEndedCopyWithImpl<_VideoChatEnded>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VideoChatEndedToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'VideoChatEnded(duration: $duration)';
  }
}

/// @nodoc
abstract mixin class _$VideoChatEndedCopyWith<$Res>
    implements $VideoChatEndedCopyWith<$Res> {
  factory _$VideoChatEndedCopyWith(
          _VideoChatEnded value, $Res Function(_VideoChatEnded) _then) =
      __$VideoChatEndedCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'duration') int duration});
}

/// @nodoc
class __$VideoChatEndedCopyWithImpl<$Res>
    implements _$VideoChatEndedCopyWith<$Res> {
  __$VideoChatEndedCopyWithImpl(this._self, this._then);

  final _VideoChatEnded _self;
  final $Res Function(_VideoChatEnded) _then;

  /// Create a copy of VideoChatEnded
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? duration = null,
  }) {
    return _then(_VideoChatEnded(
      duration: null == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}
