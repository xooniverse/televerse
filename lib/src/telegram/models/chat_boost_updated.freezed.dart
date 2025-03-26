// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_boost_updated.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatBoostUpdated {
  /// Chat which was boosted
  @JsonKey(name: 'chat')
  Chat get chat;

  /// Information about the chat boost
  @JsonKey(name: 'boost')
  ChatBoost get boost;

  /// Create a copy of ChatBoostUpdated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatBoostUpdatedCopyWith<ChatBoostUpdated> get copyWith =>
      _$ChatBoostUpdatedCopyWithImpl<ChatBoostUpdated>(
          this as ChatBoostUpdated, _$identity);

  /// Serializes this ChatBoostUpdated to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'ChatBoostUpdated(chat: $chat, boost: $boost)';
  }
}

/// @nodoc
abstract mixin class $ChatBoostUpdatedCopyWith<$Res> {
  factory $ChatBoostUpdatedCopyWith(
          ChatBoostUpdated value, $Res Function(ChatBoostUpdated) _then) =
      _$ChatBoostUpdatedCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'chat') Chat chat,
      @JsonKey(name: 'boost') ChatBoost boost});

  $ChatCopyWith<$Res> get chat;
  $ChatBoostCopyWith<$Res> get boost;
}

/// @nodoc
class _$ChatBoostUpdatedCopyWithImpl<$Res>
    implements $ChatBoostUpdatedCopyWith<$Res> {
  _$ChatBoostUpdatedCopyWithImpl(this._self, this._then);

  final ChatBoostUpdated _self;
  final $Res Function(ChatBoostUpdated) _then;

  /// Create a copy of ChatBoostUpdated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chat = null,
    Object? boost = null,
  }) {
    return _then(_self.copyWith(
      chat: null == chat
          ? _self.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
      boost: null == boost
          ? _self.boost
          : boost // ignore: cast_nullable_to_non_nullable
              as ChatBoost,
    ));
  }

  /// Create a copy of ChatBoostUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_self.chat, (value) {
      return _then(_self.copyWith(chat: value));
    });
  }

  /// Create a copy of ChatBoostUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatBoostCopyWith<$Res> get boost {
    return $ChatBoostCopyWith<$Res>(_self.boost, (value) {
      return _then(_self.copyWith(boost: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _ChatBoostUpdated implements ChatBoostUpdated {
  const _ChatBoostUpdated(
      {@JsonKey(name: 'chat') required this.chat,
      @JsonKey(name: 'boost') required this.boost});
  factory _ChatBoostUpdated.fromJson(Map<String, dynamic> json) =>
      _$ChatBoostUpdatedFromJson(json);

  /// Chat which was boosted
  @override
  @JsonKey(name: 'chat')
  final Chat chat;

  /// Information about the chat boost
  @override
  @JsonKey(name: 'boost')
  final ChatBoost boost;

  /// Create a copy of ChatBoostUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChatBoostUpdatedCopyWith<_ChatBoostUpdated> get copyWith =>
      __$ChatBoostUpdatedCopyWithImpl<_ChatBoostUpdated>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChatBoostUpdatedToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'ChatBoostUpdated(chat: $chat, boost: $boost)';
  }
}

/// @nodoc
abstract mixin class _$ChatBoostUpdatedCopyWith<$Res>
    implements $ChatBoostUpdatedCopyWith<$Res> {
  factory _$ChatBoostUpdatedCopyWith(
          _ChatBoostUpdated value, $Res Function(_ChatBoostUpdated) _then) =
      __$ChatBoostUpdatedCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'chat') Chat chat,
      @JsonKey(name: 'boost') ChatBoost boost});

  @override
  $ChatCopyWith<$Res> get chat;
  @override
  $ChatBoostCopyWith<$Res> get boost;
}

/// @nodoc
class __$ChatBoostUpdatedCopyWithImpl<$Res>
    implements _$ChatBoostUpdatedCopyWith<$Res> {
  __$ChatBoostUpdatedCopyWithImpl(this._self, this._then);

  final _ChatBoostUpdated _self;
  final $Res Function(_ChatBoostUpdated) _then;

  /// Create a copy of ChatBoostUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? chat = null,
    Object? boost = null,
  }) {
    return _then(_ChatBoostUpdated(
      chat: null == chat
          ? _self.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
      boost: null == boost
          ? _self.boost
          : boost // ignore: cast_nullable_to_non_nullable
              as ChatBoost,
    ));
  }

  /// Create a copy of ChatBoostUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_self.chat, (value) {
      return _then(_self.copyWith(chat: value));
    });
  }

  /// Create a copy of ChatBoostUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatBoostCopyWith<$Res> get boost {
    return $ChatBoostCopyWith<$Res>(_self.boost, (value) {
      return _then(_self.copyWith(boost: value));
    });
  }
}
