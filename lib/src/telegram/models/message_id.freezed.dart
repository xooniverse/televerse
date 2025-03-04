// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageId _$MessageIdFromJson(Map<String, dynamic> json) {
  return _MessageId.fromJson(json);
}

/// @nodoc
mixin _$MessageId {
  /// Unique message identifier
  @JsonKey(name: 'message_id')
  int get messageId => throw _privateConstructorUsedError;

  /// Serializes this MessageId to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageIdCopyWith<MessageId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageIdCopyWith<$Res> {
  factory $MessageIdCopyWith(MessageId value, $Res Function(MessageId) then) =
      _$MessageIdCopyWithImpl<$Res, MessageId>;
  @useResult
  $Res call({@JsonKey(name: 'message_id') int messageId});
}

/// @nodoc
class _$MessageIdCopyWithImpl<$Res, $Val extends MessageId>
    implements $MessageIdCopyWith<$Res> {
  _$MessageIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
  }) {
    return _then(_value.copyWith(
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageIdImplCopyWith<$Res>
    implements $MessageIdCopyWith<$Res> {
  factory _$$MessageIdImplCopyWith(
          _$MessageIdImpl value, $Res Function(_$MessageIdImpl) then) =
      __$$MessageIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'message_id') int messageId});
}

/// @nodoc
class __$$MessageIdImplCopyWithImpl<$Res>
    extends _$MessageIdCopyWithImpl<$Res, _$MessageIdImpl>
    implements _$$MessageIdImplCopyWith<$Res> {
  __$$MessageIdImplCopyWithImpl(
      _$MessageIdImpl _value, $Res Function(_$MessageIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
  }) {
    return _then(_$MessageIdImpl(
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageIdImpl implements _MessageId {
  const _$MessageIdImpl({@JsonKey(name: 'message_id') required this.messageId});

  factory _$MessageIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageIdImplFromJson(json);

  /// Unique message identifier
  @override
  @JsonKey(name: 'message_id')
  final int messageId;

  @override
  String toString() {
    return 'MessageId(messageId: $messageId)';
  }

  /// Create a copy of MessageId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageIdImplCopyWith<_$MessageIdImpl> get copyWith =>
      __$$MessageIdImplCopyWithImpl<_$MessageIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageIdImplToJson(
      this,
    );
  }
}

abstract class _MessageId implements MessageId {
  const factory _MessageId(
          {@JsonKey(name: 'message_id') required final int messageId}) =
      _$MessageIdImpl;

  factory _MessageId.fromJson(Map<String, dynamic> json) =
      _$MessageIdImpl.fromJson;

  /// Unique message identifier
  @override
  @JsonKey(name: 'message_id')
  int get messageId;

  /// Create a copy of MessageId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageIdImplCopyWith<_$MessageIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
