// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_boost_removed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatBoostRemoved _$ChatBoostRemovedFromJson(Map<String, dynamic> json) {
  return _ChatBoostRemoved.fromJson(json);
}

/// @nodoc
mixin _$ChatBoostRemoved {
  /// Chat which was boosted
  @JsonKey(name: 'chat')
  Chat get chat => throw _privateConstructorUsedError;

  /// Unique identifier of the boost
  @JsonKey(name: 'boost_id')
  String get boostId => throw _privateConstructorUsedError;

  /// Point in time (Unix timestamp) when the boost was removed
  @JsonKey(name: 'remove_date')
  int get removeDate => throw _privateConstructorUsedError;

  /// Source of the removed boost
  ChatBoostSource get source => throw _privateConstructorUsedError;

  /// Serializes this ChatBoostRemoved to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatBoostRemoved
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatBoostRemovedCopyWith<ChatBoostRemoved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatBoostRemovedCopyWith<$Res> {
  factory $ChatBoostRemovedCopyWith(
          ChatBoostRemoved value, $Res Function(ChatBoostRemoved) then) =
      _$ChatBoostRemovedCopyWithImpl<$Res, ChatBoostRemoved>;
  @useResult
  $Res call(
      {@JsonKey(name: 'chat') Chat chat,
      @JsonKey(name: 'boost_id') String boostId,
      @JsonKey(name: 'remove_date') int removeDate,
      ChatBoostSource source});

  $ChatCopyWith<$Res> get chat;
  $ChatBoostSourceCopyWith<$Res> get source;
}

/// @nodoc
class _$ChatBoostRemovedCopyWithImpl<$Res, $Val extends ChatBoostRemoved>
    implements $ChatBoostRemovedCopyWith<$Res> {
  _$ChatBoostRemovedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatBoostRemoved
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chat = null,
    Object? boostId = null,
    Object? removeDate = null,
    Object? source = null,
  }) {
    return _then(_value.copyWith(
      chat: null == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
      boostId: null == boostId
          ? _value.boostId
          : boostId // ignore: cast_nullable_to_non_nullable
              as String,
      removeDate: null == removeDate
          ? _value.removeDate
          : removeDate // ignore: cast_nullable_to_non_nullable
              as int,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as ChatBoostSource,
    ) as $Val);
  }

  /// Create a copy of ChatBoostRemoved
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_value.chat, (value) {
      return _then(_value.copyWith(chat: value) as $Val);
    });
  }

  /// Create a copy of ChatBoostRemoved
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatBoostSourceCopyWith<$Res> get source {
    return $ChatBoostSourceCopyWith<$Res>(_value.source, (value) {
      return _then(_value.copyWith(source: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatBoostRemovedImplCopyWith<$Res>
    implements $ChatBoostRemovedCopyWith<$Res> {
  factory _$$ChatBoostRemovedImplCopyWith(_$ChatBoostRemovedImpl value,
          $Res Function(_$ChatBoostRemovedImpl) then) =
      __$$ChatBoostRemovedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'chat') Chat chat,
      @JsonKey(name: 'boost_id') String boostId,
      @JsonKey(name: 'remove_date') int removeDate,
      ChatBoostSource source});

  @override
  $ChatCopyWith<$Res> get chat;
  @override
  $ChatBoostSourceCopyWith<$Res> get source;
}

/// @nodoc
class __$$ChatBoostRemovedImplCopyWithImpl<$Res>
    extends _$ChatBoostRemovedCopyWithImpl<$Res, _$ChatBoostRemovedImpl>
    implements _$$ChatBoostRemovedImplCopyWith<$Res> {
  __$$ChatBoostRemovedImplCopyWithImpl(_$ChatBoostRemovedImpl _value,
      $Res Function(_$ChatBoostRemovedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatBoostRemoved
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chat = null,
    Object? boostId = null,
    Object? removeDate = null,
    Object? source = null,
  }) {
    return _then(_$ChatBoostRemovedImpl(
      chat: null == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
      boostId: null == boostId
          ? _value.boostId
          : boostId // ignore: cast_nullable_to_non_nullable
              as String,
      removeDate: null == removeDate
          ? _value.removeDate
          : removeDate // ignore: cast_nullable_to_non_nullable
              as int,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as ChatBoostSource,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatBoostRemovedImpl implements _ChatBoostRemoved {
  const _$ChatBoostRemovedImpl(
      {@JsonKey(name: 'chat') required this.chat,
      @JsonKey(name: 'boost_id') required this.boostId,
      @JsonKey(name: 'remove_date') required this.removeDate,
      required this.source});

  factory _$ChatBoostRemovedImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatBoostRemovedImplFromJson(json);

  /// Chat which was boosted
  @override
  @JsonKey(name: 'chat')
  final Chat chat;

  /// Unique identifier of the boost
  @override
  @JsonKey(name: 'boost_id')
  final String boostId;

  /// Point in time (Unix timestamp) when the boost was removed
  @override
  @JsonKey(name: 'remove_date')
  final int removeDate;

  /// Source of the removed boost
  @override
  final ChatBoostSource source;

  @override
  String toString() {
    return 'ChatBoostRemoved(chat: $chat, boostId: $boostId, removeDate: $removeDate, source: $source)';
  }

  /// Create a copy of ChatBoostRemoved
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatBoostRemovedImplCopyWith<_$ChatBoostRemovedImpl> get copyWith =>
      __$$ChatBoostRemovedImplCopyWithImpl<_$ChatBoostRemovedImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatBoostRemovedImplToJson(
      this,
    );
  }
}

abstract class _ChatBoostRemoved implements ChatBoostRemoved {
  const factory _ChatBoostRemoved(
      {@JsonKey(name: 'chat') required final Chat chat,
      @JsonKey(name: 'boost_id') required final String boostId,
      @JsonKey(name: 'remove_date') required final int removeDate,
      required final ChatBoostSource source}) = _$ChatBoostRemovedImpl;

  factory _ChatBoostRemoved.fromJson(Map<String, dynamic> json) =
      _$ChatBoostRemovedImpl.fromJson;

  /// Chat which was boosted
  @override
  @JsonKey(name: 'chat')
  Chat get chat;

  /// Unique identifier of the boost
  @override
  @JsonKey(name: 'boost_id')
  String get boostId;

  /// Point in time (Unix timestamp) when the boost was removed
  @override
  @JsonKey(name: 'remove_date')
  int get removeDate;

  /// Source of the removed boost
  @override
  ChatBoostSource get source;

  /// Create a copy of ChatBoostRemoved
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatBoostRemovedImplCopyWith<_$ChatBoostRemovedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
