// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_messages_deleted.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BusinessMessagesDeleted _$BusinessMessagesDeletedFromJson(
    Map<String, dynamic> json) {
  return _BusinessMessagesDeleted.fromJson(json);
}

/// @nodoc
mixin _$BusinessMessagesDeleted {
  /// Unique identifier of the business connection.
  @JsonKey(name: 'business_connection_id')
  String get businessConnectionId => throw _privateConstructorUsedError;

  /// Information about a chat in the business account. The bot may not have
  /// access to the chat or the corresponding user.
  Chat get chat => throw _privateConstructorUsedError;

  /// A JSON-serialized list of identifiers of deleted messages in the chat of
  /// the business account.
  @JsonKey(name: 'message_ids')
  List<int> get messageIds => throw _privateConstructorUsedError;

  /// Serializes this BusinessMessagesDeleted to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BusinessMessagesDeleted
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BusinessMessagesDeletedCopyWith<BusinessMessagesDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessMessagesDeletedCopyWith<$Res> {
  factory $BusinessMessagesDeletedCopyWith(BusinessMessagesDeleted value,
          $Res Function(BusinessMessagesDeleted) then) =
      _$BusinessMessagesDeletedCopyWithImpl<$Res, BusinessMessagesDeleted>;
  @useResult
  $Res call(
      {@JsonKey(name: 'business_connection_id') String businessConnectionId,
      Chat chat,
      @JsonKey(name: 'message_ids') List<int> messageIds});

  $ChatCopyWith<$Res> get chat;
}

/// @nodoc
class _$BusinessMessagesDeletedCopyWithImpl<$Res,
        $Val extends BusinessMessagesDeleted>
    implements $BusinessMessagesDeletedCopyWith<$Res> {
  _$BusinessMessagesDeletedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BusinessMessagesDeleted
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? businessConnectionId = null,
    Object? chat = null,
    Object? messageIds = null,
  }) {
    return _then(_value.copyWith(
      businessConnectionId: null == businessConnectionId
          ? _value.businessConnectionId
          : businessConnectionId // ignore: cast_nullable_to_non_nullable
              as String,
      chat: null == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
      messageIds: null == messageIds
          ? _value.messageIds
          : messageIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }

  /// Create a copy of BusinessMessagesDeleted
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_value.chat, (value) {
      return _then(_value.copyWith(chat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BusinessMessagesDeletedImplCopyWith<$Res>
    implements $BusinessMessagesDeletedCopyWith<$Res> {
  factory _$$BusinessMessagesDeletedImplCopyWith(
          _$BusinessMessagesDeletedImpl value,
          $Res Function(_$BusinessMessagesDeletedImpl) then) =
      __$$BusinessMessagesDeletedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'business_connection_id') String businessConnectionId,
      Chat chat,
      @JsonKey(name: 'message_ids') List<int> messageIds});

  @override
  $ChatCopyWith<$Res> get chat;
}

/// @nodoc
class __$$BusinessMessagesDeletedImplCopyWithImpl<$Res>
    extends _$BusinessMessagesDeletedCopyWithImpl<$Res,
        _$BusinessMessagesDeletedImpl>
    implements _$$BusinessMessagesDeletedImplCopyWith<$Res> {
  __$$BusinessMessagesDeletedImplCopyWithImpl(
      _$BusinessMessagesDeletedImpl _value,
      $Res Function(_$BusinessMessagesDeletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessMessagesDeleted
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? businessConnectionId = null,
    Object? chat = null,
    Object? messageIds = null,
  }) {
    return _then(_$BusinessMessagesDeletedImpl(
      businessConnectionId: null == businessConnectionId
          ? _value.businessConnectionId
          : businessConnectionId // ignore: cast_nullable_to_non_nullable
              as String,
      chat: null == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
      messageIds: null == messageIds
          ? _value._messageIds
          : messageIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessMessagesDeletedImpl implements _BusinessMessagesDeleted {
  const _$BusinessMessagesDeletedImpl(
      {@JsonKey(name: 'business_connection_id')
      required this.businessConnectionId,
      required this.chat,
      @JsonKey(name: 'message_ids') required final List<int> messageIds})
      : _messageIds = messageIds;

  factory _$BusinessMessagesDeletedImpl.fromJson(Map<String, dynamic> json) =>
      _$$BusinessMessagesDeletedImplFromJson(json);

  /// Unique identifier of the business connection.
  @override
  @JsonKey(name: 'business_connection_id')
  final String businessConnectionId;

  /// Information about a chat in the business account. The bot may not have
  /// access to the chat or the corresponding user.
  @override
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

  @override
  String toString() {
    return 'BusinessMessagesDeleted(businessConnectionId: $businessConnectionId, chat: $chat, messageIds: $messageIds)';
  }

  /// Create a copy of BusinessMessagesDeleted
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessMessagesDeletedImplCopyWith<_$BusinessMessagesDeletedImpl>
      get copyWith => __$$BusinessMessagesDeletedImplCopyWithImpl<
          _$BusinessMessagesDeletedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessMessagesDeletedImplToJson(
      this,
    );
  }
}

abstract class _BusinessMessagesDeleted implements BusinessMessagesDeleted {
  const factory _BusinessMessagesDeleted(
          {@JsonKey(name: 'business_connection_id')
          required final String businessConnectionId,
          required final Chat chat,
          @JsonKey(name: 'message_ids') required final List<int> messageIds}) =
      _$BusinessMessagesDeletedImpl;

  factory _BusinessMessagesDeleted.fromJson(Map<String, dynamic> json) =
      _$BusinessMessagesDeletedImpl.fromJson;

  /// Unique identifier of the business connection.
  @override
  @JsonKey(name: 'business_connection_id')
  String get businessConnectionId;

  /// Information about a chat in the business account. The bot may not have
  /// access to the chat or the corresponding user.
  @override
  Chat get chat;

  /// A JSON-serialized list of identifiers of deleted messages in the chat of
  /// the business account.
  @override
  @JsonKey(name: 'message_ids')
  List<int> get messageIds;

  /// Create a copy of BusinessMessagesDeleted
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessMessagesDeletedImplCopyWith<_$BusinessMessagesDeletedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
