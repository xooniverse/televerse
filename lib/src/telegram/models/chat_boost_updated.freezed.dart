// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_boost_updated.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatBoostUpdated _$ChatBoostUpdatedFromJson(Map<String, dynamic> json) {
  return _ChatBoostUpdated.fromJson(json);
}

/// @nodoc
mixin _$ChatBoostUpdated {
  /// Chat which was boosted
  Chat get chat => throw _privateConstructorUsedError;

  /// Information about the chat boost
  ChatBoost get boost => throw _privateConstructorUsedError;

  /// Serializes this ChatBoostUpdated to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatBoostUpdated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatBoostUpdatedCopyWith<ChatBoostUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatBoostUpdatedCopyWith<$Res> {
  factory $ChatBoostUpdatedCopyWith(
          ChatBoostUpdated value, $Res Function(ChatBoostUpdated) then) =
      _$ChatBoostUpdatedCopyWithImpl<$Res, ChatBoostUpdated>;
  @useResult
  $Res call({Chat chat, ChatBoost boost});

  $ChatCopyWith<$Res> get chat;
  $ChatBoostCopyWith<$Res> get boost;
}

/// @nodoc
class _$ChatBoostUpdatedCopyWithImpl<$Res, $Val extends ChatBoostUpdated>
    implements $ChatBoostUpdatedCopyWith<$Res> {
  _$ChatBoostUpdatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatBoostUpdated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chat = null,
    Object? boost = null,
  }) {
    return _then(_value.copyWith(
      chat: null == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
      boost: null == boost
          ? _value.boost
          : boost // ignore: cast_nullable_to_non_nullable
              as ChatBoost,
    ) as $Val);
  }

  /// Create a copy of ChatBoostUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_value.chat, (value) {
      return _then(_value.copyWith(chat: value) as $Val);
    });
  }

  /// Create a copy of ChatBoostUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatBoostCopyWith<$Res> get boost {
    return $ChatBoostCopyWith<$Res>(_value.boost, (value) {
      return _then(_value.copyWith(boost: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatBoostUpdatedImplCopyWith<$Res>
    implements $ChatBoostUpdatedCopyWith<$Res> {
  factory _$$ChatBoostUpdatedImplCopyWith(_$ChatBoostUpdatedImpl value,
          $Res Function(_$ChatBoostUpdatedImpl) then) =
      __$$ChatBoostUpdatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Chat chat, ChatBoost boost});

  @override
  $ChatCopyWith<$Res> get chat;
  @override
  $ChatBoostCopyWith<$Res> get boost;
}

/// @nodoc
class __$$ChatBoostUpdatedImplCopyWithImpl<$Res>
    extends _$ChatBoostUpdatedCopyWithImpl<$Res, _$ChatBoostUpdatedImpl>
    implements _$$ChatBoostUpdatedImplCopyWith<$Res> {
  __$$ChatBoostUpdatedImplCopyWithImpl(_$ChatBoostUpdatedImpl _value,
      $Res Function(_$ChatBoostUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatBoostUpdated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chat = null,
    Object? boost = null,
  }) {
    return _then(_$ChatBoostUpdatedImpl(
      chat: null == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
      boost: null == boost
          ? _value.boost
          : boost // ignore: cast_nullable_to_non_nullable
              as ChatBoost,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatBoostUpdatedImpl implements _ChatBoostUpdated {
  const _$ChatBoostUpdatedImpl({required this.chat, required this.boost});

  factory _$ChatBoostUpdatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatBoostUpdatedImplFromJson(json);

  /// Chat which was boosted
  @override
  final Chat chat;

  /// Information about the chat boost
  @override
  final ChatBoost boost;

  @override
  String toString() {
    return 'ChatBoostUpdated(chat: $chat, boost: $boost)';
  }

  /// Create a copy of ChatBoostUpdated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatBoostUpdatedImplCopyWith<_$ChatBoostUpdatedImpl> get copyWith =>
      __$$ChatBoostUpdatedImplCopyWithImpl<_$ChatBoostUpdatedImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatBoostUpdatedImplToJson(
      this,
    );
  }
}

abstract class _ChatBoostUpdated implements ChatBoostUpdated {
  const factory _ChatBoostUpdated(
      {required final Chat chat,
      required final ChatBoost boost}) = _$ChatBoostUpdatedImpl;

  factory _ChatBoostUpdated.fromJson(Map<String, dynamic> json) =
      _$ChatBoostUpdatedImpl.fromJson;

  /// Chat which was boosted
  @override
  Chat get chat;

  /// Information about the chat boost
  @override
  ChatBoost get boost;

  /// Create a copy of ChatBoostUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatBoostUpdatedImplCopyWith<_$ChatBoostUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
