// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_chat_ended.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VideoChatEnded _$VideoChatEndedFromJson(Map<String, dynamic> json) {
  return _VideoChatEnded.fromJson(json);
}

/// @nodoc
mixin _$VideoChatEnded {
  /// Video chat duration in seconds
  int get duration => throw _privateConstructorUsedError;

  /// Serializes this VideoChatEnded to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VideoChatEnded
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoChatEndedCopyWith<VideoChatEnded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoChatEndedCopyWith<$Res> {
  factory $VideoChatEndedCopyWith(
          VideoChatEnded value, $Res Function(VideoChatEnded) then) =
      _$VideoChatEndedCopyWithImpl<$Res, VideoChatEnded>;
  @useResult
  $Res call({int duration});
}

/// @nodoc
class _$VideoChatEndedCopyWithImpl<$Res, $Val extends VideoChatEnded>
    implements $VideoChatEndedCopyWith<$Res> {
  _$VideoChatEndedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoChatEnded
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_value.copyWith(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoChatEndedImplCopyWith<$Res>
    implements $VideoChatEndedCopyWith<$Res> {
  factory _$$VideoChatEndedImplCopyWith(_$VideoChatEndedImpl value,
          $Res Function(_$VideoChatEndedImpl) then) =
      __$$VideoChatEndedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int duration});
}

/// @nodoc
class __$$VideoChatEndedImplCopyWithImpl<$Res>
    extends _$VideoChatEndedCopyWithImpl<$Res, _$VideoChatEndedImpl>
    implements _$$VideoChatEndedImplCopyWith<$Res> {
  __$$VideoChatEndedImplCopyWithImpl(
      _$VideoChatEndedImpl _value, $Res Function(_$VideoChatEndedImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoChatEnded
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$VideoChatEndedImpl(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoChatEndedImpl implements _VideoChatEnded {
  const _$VideoChatEndedImpl({required this.duration});

  factory _$VideoChatEndedImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoChatEndedImplFromJson(json);

  /// Video chat duration in seconds
  @override
  final int duration;

  @override
  String toString() {
    return 'VideoChatEnded(duration: $duration)';
  }

  /// Create a copy of VideoChatEnded
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoChatEndedImplCopyWith<_$VideoChatEndedImpl> get copyWith =>
      __$$VideoChatEndedImplCopyWithImpl<_$VideoChatEndedImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoChatEndedImplToJson(
      this,
    );
  }
}

abstract class _VideoChatEnded implements VideoChatEnded {
  const factory _VideoChatEnded({required final int duration}) =
      _$VideoChatEndedImpl;

  factory _VideoChatEnded.fromJson(Map<String, dynamic> json) =
      _$VideoChatEndedImpl.fromJson;

  /// Video chat duration in seconds
  @override
  int get duration;

  /// Create a copy of VideoChatEnded
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoChatEndedImplCopyWith<_$VideoChatEndedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
