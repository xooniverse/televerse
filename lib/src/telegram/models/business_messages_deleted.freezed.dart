// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_messages_deleted.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BusinessMessagesDeleted {
  /// Unique identifier of the business connection.
  @JsonKey(name: 'business_connection_id')
  String get businessConnectionId;

  /// Information about a chat in the business account. The bot may not have
  /// access to the chat or the corresponding user.
  @JsonKey(name: 'chat')
  Chat get chat;

  /// A JSON-serialized list of identifiers of deleted messages in the chat of
  /// the business account.
  @JsonKey(name: 'message_ids')
  List<int> get messageIds;

  /// Create a copy of BusinessMessagesDeleted
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BusinessMessagesDeletedCopyWith<BusinessMessagesDeleted> get copyWith =>
      _$BusinessMessagesDeletedCopyWithImpl<BusinessMessagesDeleted>(
          this as BusinessMessagesDeleted, _$identity);

  /// Serializes this BusinessMessagesDeleted to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'BusinessMessagesDeleted(businessConnectionId: $businessConnectionId, chat: $chat, messageIds: $messageIds)';
  }
}

/// @nodoc
abstract mixin class $BusinessMessagesDeletedCopyWith<$Res> {
  factory $BusinessMessagesDeletedCopyWith(BusinessMessagesDeleted value,
          $Res Function(BusinessMessagesDeleted) _then) =
      _$BusinessMessagesDeletedCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'business_connection_id') String businessConnectionId,
      @JsonKey(name: 'chat') Chat chat,
      @JsonKey(name: 'message_ids') List<int> messageIds});

  $ChatCopyWith<$Res> get chat;
}

/// @nodoc
class _$BusinessMessagesDeletedCopyWithImpl<$Res>
    implements $BusinessMessagesDeletedCopyWith<$Res> {
  _$BusinessMessagesDeletedCopyWithImpl(this._self, this._then);

  final BusinessMessagesDeleted _self;
  final $Res Function(BusinessMessagesDeleted) _then;

  /// Create a copy of BusinessMessagesDeleted
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? businessConnectionId = null,
    Object? chat = null,
    Object? messageIds = null,
  }) {
    return _then(_self.copyWith(
      businessConnectionId: null == businessConnectionId
          ? _self.businessConnectionId
          : businessConnectionId // ignore: cast_nullable_to_non_nullable
              as String,
      chat: null == chat
          ? _self.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
      messageIds: null == messageIds
          ? _self.messageIds
          : messageIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }

  /// Create a copy of BusinessMessagesDeleted
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_self.chat, (value) {
      return _then(_self.copyWith(chat: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _BusinessMessagesDeleted implements BusinessMessagesDeleted {
  const _BusinessMessagesDeleted(
      {@JsonKey(name: 'business_connection_id')
      required this.businessConnectionId,
      @JsonKey(name: 'chat') required this.chat,
      @JsonKey(name: 'message_ids') required final List<int> messageIds})
      : _messageIds = messageIds;
  factory _BusinessMessagesDeleted.fromJson(Map<String, dynamic> json) =>
      _$BusinessMessagesDeletedFromJson(json);

  /// Unique identifier of the business connection.
  @override
  @JsonKey(name: 'business_connection_id')
  final String businessConnectionId;

  /// Information about a chat in the business account. The bot may not have
  /// access to the chat or the corresponding user.
  @override
  @JsonKey(name: 'chat')
  final Chat chat;

  /// A JSON-serialized list of identifiers of deleted messages in the chat of
  /// the business account.
  final List<int> _messageIds;

  /// A JSON-serialized list of identifiers of deleted messages in the chat of
  /// the business account.
  @override
  @JsonKey(name: 'message_ids')
  List<int> get messageIds {
    if (_messageIds is EqualUnmodifiableListView) return _messageIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messageIds);
  }

  /// Create a copy of BusinessMessagesDeleted
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BusinessMessagesDeletedCopyWith<_BusinessMessagesDeleted> get copyWith =>
      __$BusinessMessagesDeletedCopyWithImpl<_BusinessMessagesDeleted>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BusinessMessagesDeletedToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'BusinessMessagesDeleted(businessConnectionId: $businessConnectionId, chat: $chat, messageIds: $messageIds)';
  }
}

/// @nodoc
abstract mixin class _$BusinessMessagesDeletedCopyWith<$Res>
    implements $BusinessMessagesDeletedCopyWith<$Res> {
  factory _$BusinessMessagesDeletedCopyWith(_BusinessMessagesDeleted value,
          $Res Function(_BusinessMessagesDeleted) _then) =
      __$BusinessMessagesDeletedCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'business_connection_id') String businessConnectionId,
      @JsonKey(name: 'chat') Chat chat,
      @JsonKey(name: 'message_ids') List<int> messageIds});

  @override
  $ChatCopyWith<$Res> get chat;
}

/// @nodoc
class __$BusinessMessagesDeletedCopyWithImpl<$Res>
    implements _$BusinessMessagesDeletedCopyWith<$Res> {
  __$BusinessMessagesDeletedCopyWithImpl(this._self, this._then);

  final _BusinessMessagesDeleted _self;
  final $Res Function(_BusinessMessagesDeleted) _then;

  /// Create a copy of BusinessMessagesDeleted
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? businessConnectionId = null,
    Object? chat = null,
    Object? messageIds = null,
  }) {
    return _then(_BusinessMessagesDeleted(
      businessConnectionId: null == businessConnectionId
          ? _self.businessConnectionId
          : businessConnectionId // ignore: cast_nullable_to_non_nullable
              as String,
      chat: null == chat
          ? _self.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
      messageIds: null == messageIds
          ? _self._messageIds
          : messageIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }

  /// Create a copy of BusinessMessagesDeleted
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_self.chat, (value) {
      return _then(_self.copyWith(chat: value));
    });
  }
}
