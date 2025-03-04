// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forum_topic_closed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForumTopicClosed _$ForumTopicClosedFromJson(Map<String, dynamic> json) {
  return _ForumTopicClosed.fromJson(json);
}

/// @nodoc
mixin _$ForumTopicClosed {
  /// Serializes this ForumTopicClosed to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForumTopicClosedCopyWith<$Res> {
  factory $ForumTopicClosedCopyWith(
          ForumTopicClosed value, $Res Function(ForumTopicClosed) then) =
      _$ForumTopicClosedCopyWithImpl<$Res, ForumTopicClosed>;
}

/// @nodoc
class _$ForumTopicClosedCopyWithImpl<$Res, $Val extends ForumTopicClosed>
    implements $ForumTopicClosedCopyWith<$Res> {
  _$ForumTopicClosedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForumTopicClosed
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ForumTopicClosedImplCopyWith<$Res> {
  factory _$$ForumTopicClosedImplCopyWith(_$ForumTopicClosedImpl value,
          $Res Function(_$ForumTopicClosedImpl) then) =
      __$$ForumTopicClosedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ForumTopicClosedImplCopyWithImpl<$Res>
    extends _$ForumTopicClosedCopyWithImpl<$Res, _$ForumTopicClosedImpl>
    implements _$$ForumTopicClosedImplCopyWith<$Res> {
  __$$ForumTopicClosedImplCopyWithImpl(_$ForumTopicClosedImpl _value,
      $Res Function(_$ForumTopicClosedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForumTopicClosed
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$ForumTopicClosedImpl implements _ForumTopicClosed {
  const _$ForumTopicClosedImpl();

  factory _$ForumTopicClosedImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForumTopicClosedImplFromJson(json);

  @override
  String toString() {
    return 'ForumTopicClosed()';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ForumTopicClosedImplToJson(
      this,
    );
  }
}

abstract class _ForumTopicClosed implements ForumTopicClosed {
  const factory _ForumTopicClosed() = _$ForumTopicClosedImpl;

  factory _ForumTopicClosed.fromJson(Map<String, dynamic> json) =
      _$ForumTopicClosedImpl.fromJson;
}
