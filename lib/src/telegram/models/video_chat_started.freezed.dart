// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_chat_started.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VideoChatStarted _$VideoChatStartedFromJson(Map<String, dynamic> json) {
  return _VideoChatStarted.fromJson(json);
}

/// @nodoc
mixin _$VideoChatStarted {
  /// Serializes this VideoChatStarted to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoChatStartedCopyWith<$Res> {
  factory $VideoChatStartedCopyWith(
          VideoChatStarted value, $Res Function(VideoChatStarted) then) =
      _$VideoChatStartedCopyWithImpl<$Res, VideoChatStarted>;
}

/// @nodoc
class _$VideoChatStartedCopyWithImpl<$Res, $Val extends VideoChatStarted>
    implements $VideoChatStartedCopyWith<$Res> {
  _$VideoChatStartedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoChatStarted
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$VideoChatStartedImplCopyWith<$Res> {
  factory _$$VideoChatStartedImplCopyWith(_$VideoChatStartedImpl value,
          $Res Function(_$VideoChatStartedImpl) then) =
      __$$VideoChatStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VideoChatStartedImplCopyWithImpl<$Res>
    extends _$VideoChatStartedCopyWithImpl<$Res, _$VideoChatStartedImpl>
    implements _$$VideoChatStartedImplCopyWith<$Res> {
  __$$VideoChatStartedImplCopyWithImpl(_$VideoChatStartedImpl _value,
      $Res Function(_$VideoChatStartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoChatStarted
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$VideoChatStartedImpl implements _VideoChatStarted {
  const _$VideoChatStartedImpl();

  factory _$VideoChatStartedImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoChatStartedImplFromJson(json);

  @override
  String toString() {
    return 'VideoChatStarted()';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoChatStartedImplToJson(
      this,
    );
  }
}

abstract class _VideoChatStarted implements VideoChatStarted {
  const factory _VideoChatStarted() = _$VideoChatStartedImpl;

  factory _VideoChatStarted.fromJson(Map<String, dynamic> json) =
      _$VideoChatStartedImpl.fromJson;
}
