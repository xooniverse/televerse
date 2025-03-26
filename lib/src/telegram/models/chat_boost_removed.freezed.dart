// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_boost_removed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatBoostRemoved {
  /// Chat which was boosted
  @JsonKey(name: 'chat')
  Chat get chat;

  /// Unique identifier of the boost
  @JsonKey(name: 'boost_id')
  String get boostId;

  /// Point in time (Unix timestamp) when the boost was removed
  @JsonKey(name: 'remove_date')
  int get removeDate;

  /// Source of the removed boost
  ChatBoostSource get source;

  /// Create a copy of ChatBoostRemoved
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatBoostRemovedCopyWith<ChatBoostRemoved> get copyWith =>
      _$ChatBoostRemovedCopyWithImpl<ChatBoostRemoved>(
          this as ChatBoostRemoved, _$identity);

  /// Serializes this ChatBoostRemoved to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'ChatBoostRemoved(chat: $chat, boostId: $boostId, removeDate: $removeDate, source: $source)';
  }
}

/// @nodoc
abstract mixin class $ChatBoostRemovedCopyWith<$Res> {
  factory $ChatBoostRemovedCopyWith(
          ChatBoostRemoved value, $Res Function(ChatBoostRemoved) _then) =
      _$ChatBoostRemovedCopyWithImpl;
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
class _$ChatBoostRemovedCopyWithImpl<$Res>
    implements $ChatBoostRemovedCopyWith<$Res> {
  _$ChatBoostRemovedCopyWithImpl(this._self, this._then);

  final ChatBoostRemoved _self;
  final $Res Function(ChatBoostRemoved) _then;

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
    return _then(_self.copyWith(
      chat: null == chat
          ? _self.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
      boostId: null == boostId
          ? _self.boostId
          : boostId // ignore: cast_nullable_to_non_nullable
              as String,
      removeDate: null == removeDate
          ? _self.removeDate
          : removeDate // ignore: cast_nullable_to_non_nullable
              as int,
      source: null == source
          ? _self.source
          : source // ignore: cast_nullable_to_non_nullable
              as ChatBoostSource,
    ));
  }

  /// Create a copy of ChatBoostRemoved
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_self.chat, (value) {
      return _then(_self.copyWith(chat: value));
    });
  }

  /// Create a copy of ChatBoostRemoved
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatBoostSourceCopyWith<$Res> get source {
    return $ChatBoostSourceCopyWith<$Res>(_self.source, (value) {
      return _then(_self.copyWith(source: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _ChatBoostRemoved implements ChatBoostRemoved {
  const _ChatBoostRemoved(
      {@JsonKey(name: 'chat') required this.chat,
      @JsonKey(name: 'boost_id') required this.boostId,
      @JsonKey(name: 'remove_date') required this.removeDate,
      required this.source});
  factory _ChatBoostRemoved.fromJson(Map<String, dynamic> json) =>
      _$ChatBoostRemovedFromJson(json);

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

  /// Create a copy of ChatBoostRemoved
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChatBoostRemovedCopyWith<_ChatBoostRemoved> get copyWith =>
      __$ChatBoostRemovedCopyWithImpl<_ChatBoostRemoved>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChatBoostRemovedToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'ChatBoostRemoved(chat: $chat, boostId: $boostId, removeDate: $removeDate, source: $source)';
  }
}

/// @nodoc
abstract mixin class _$ChatBoostRemovedCopyWith<$Res>
    implements $ChatBoostRemovedCopyWith<$Res> {
  factory _$ChatBoostRemovedCopyWith(
          _ChatBoostRemoved value, $Res Function(_ChatBoostRemoved) _then) =
      __$ChatBoostRemovedCopyWithImpl;
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
class __$ChatBoostRemovedCopyWithImpl<$Res>
    implements _$ChatBoostRemovedCopyWith<$Res> {
  __$ChatBoostRemovedCopyWithImpl(this._self, this._then);

  final _ChatBoostRemoved _self;
  final $Res Function(_ChatBoostRemoved) _then;

  /// Create a copy of ChatBoostRemoved
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? chat = null,
    Object? boostId = null,
    Object? removeDate = null,
    Object? source = null,
  }) {
    return _then(_ChatBoostRemoved(
      chat: null == chat
          ? _self.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
      boostId: null == boostId
          ? _self.boostId
          : boostId // ignore: cast_nullable_to_non_nullable
              as String,
      removeDate: null == removeDate
          ? _self.removeDate
          : removeDate // ignore: cast_nullable_to_non_nullable
              as int,
      source: null == source
          ? _self.source
          : source // ignore: cast_nullable_to_non_nullable
              as ChatBoostSource,
    ));
  }

  /// Create a copy of ChatBoostRemoved
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_self.chat, (value) {
      return _then(_self.copyWith(chat: value));
    });
  }

  /// Create a copy of ChatBoostRemoved
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatBoostSourceCopyWith<$Res> get source {
    return $ChatBoostSourceCopyWith<$Res>(_self.source, (value) {
      return _then(_self.copyWith(source: value));
    });
  }
}
