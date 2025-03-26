// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MessageId {
  /// Unique message identifier
  @JsonKey(name: 'message_id')
  int get messageId;

  /// Create a copy of MessageId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MessageIdCopyWith<MessageId> get copyWith =>
      _$MessageIdCopyWithImpl<MessageId>(this as MessageId, _$identity);

  /// Serializes this MessageId to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'MessageId(messageId: $messageId)';
  }
}

/// @nodoc
abstract mixin class $MessageIdCopyWith<$Res> {
  factory $MessageIdCopyWith(MessageId value, $Res Function(MessageId) _then) =
      _$MessageIdCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'message_id') int messageId});
}

/// @nodoc
class _$MessageIdCopyWithImpl<$Res> implements $MessageIdCopyWith<$Res> {
  _$MessageIdCopyWithImpl(this._self, this._then);

  final MessageId _self;
  final $Res Function(MessageId) _then;

  /// Create a copy of MessageId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
  }) {
    return _then(_self.copyWith(
      messageId: null == messageId
          ? _self.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _MessageId implements MessageId {
  const _MessageId({@JsonKey(name: 'message_id') required this.messageId});
  factory _MessageId.fromJson(Map<String, dynamic> json) =>
      _$MessageIdFromJson(json);

  /// Unique message identifier
  @override
  @JsonKey(name: 'message_id')
  final int messageId;

  /// Create a copy of MessageId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MessageIdCopyWith<_MessageId> get copyWith =>
      __$MessageIdCopyWithImpl<_MessageId>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MessageIdToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'MessageId(messageId: $messageId)';
  }
}

/// @nodoc
abstract mixin class _$MessageIdCopyWith<$Res>
    implements $MessageIdCopyWith<$Res> {
  factory _$MessageIdCopyWith(
          _MessageId value, $Res Function(_MessageId) _then) =
      __$MessageIdCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'message_id') int messageId});
}

/// @nodoc
class __$MessageIdCopyWithImpl<$Res> implements _$MessageIdCopyWith<$Res> {
  __$MessageIdCopyWithImpl(this._self, this._then);

  final _MessageId _self;
  final $Res Function(_MessageId) _then;

  /// Create a copy of MessageId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? messageId = null,
  }) {
    return _then(_MessageId(
      messageId: null == messageId
          ? _self.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}
