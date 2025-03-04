// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_reaction_count_updated.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageReactionCountUpdated _$MessageReactionCountUpdatedFromJson(
    Map<String, dynamic> json) {
  return _MessageReactionCountUpdated.fromJson(json);
}

/// @nodoc
mixin _$MessageReactionCountUpdated {
  /// The chat containing the message.
  @JsonKey(name: 'chat')
  Chat get chat => throw _privateConstructorUsedError;

  /// Unique message identifier inside the chat.
  @JsonKey(name: 'message_id')
  int get messageId => throw _privateConstructorUsedError;

  /// Date of the change in Unix time.
  @JsonKey(name: 'date')
  int get date => throw _privateConstructorUsedError;

  /// List of reactions that are present on the message.
  @JsonKey(name: 'reactions')
  List<ReactionCount> get reactions => throw _privateConstructorUsedError;

  /// Serializes this MessageReactionCountUpdated to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageReactionCountUpdated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageReactionCountUpdatedCopyWith<MessageReactionCountUpdated>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageReactionCountUpdatedCopyWith<$Res> {
  factory $MessageReactionCountUpdatedCopyWith(
          MessageReactionCountUpdated value,
          $Res Function(MessageReactionCountUpdated) then) =
      _$MessageReactionCountUpdatedCopyWithImpl<$Res,
          MessageReactionCountUpdated>;
  @useResult
  $Res call(
      {@JsonKey(name: 'chat') Chat chat,
      @JsonKey(name: 'message_id') int messageId,
      @JsonKey(name: 'date') int date,
      @JsonKey(name: 'reactions') List<ReactionCount> reactions});

  $ChatCopyWith<$Res> get chat;
}

/// @nodoc
class _$MessageReactionCountUpdatedCopyWithImpl<$Res,
        $Val extends MessageReactionCountUpdated>
    implements $MessageReactionCountUpdatedCopyWith<$Res> {
  _$MessageReactionCountUpdatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageReactionCountUpdated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chat = null,
    Object? messageId = null,
    Object? date = null,
    Object? reactions = null,
  }) {
    return _then(_value.copyWith(
      chat: null == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      reactions: null == reactions
          ? _value.reactions
          : reactions // ignore: cast_nullable_to_non_nullable
              as List<ReactionCount>,
    ) as $Val);
  }

  /// Create a copy of MessageReactionCountUpdated
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
abstract class _$$MessageReactionCountUpdatedImplCopyWith<$Res>
    implements $MessageReactionCountUpdatedCopyWith<$Res> {
  factory _$$MessageReactionCountUpdatedImplCopyWith(
          _$MessageReactionCountUpdatedImpl value,
          $Res Function(_$MessageReactionCountUpdatedImpl) then) =
      __$$MessageReactionCountUpdatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'chat') Chat chat,
      @JsonKey(name: 'message_id') int messageId,
      @JsonKey(name: 'date') int date,
      @JsonKey(name: 'reactions') List<ReactionCount> reactions});

  @override
  $ChatCopyWith<$Res> get chat;
}

/// @nodoc
class __$$MessageReactionCountUpdatedImplCopyWithImpl<$Res>
    extends _$MessageReactionCountUpdatedCopyWithImpl<$Res,
        _$MessageReactionCountUpdatedImpl>
    implements _$$MessageReactionCountUpdatedImplCopyWith<$Res> {
  __$$MessageReactionCountUpdatedImplCopyWithImpl(
      _$MessageReactionCountUpdatedImpl _value,
      $Res Function(_$MessageReactionCountUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageReactionCountUpdated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chat = null,
    Object? messageId = null,
    Object? date = null,
    Object? reactions = null,
  }) {
    return _then(_$MessageReactionCountUpdatedImpl(
      chat: null == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      reactions: null == reactions
          ? _value._reactions
          : reactions // ignore: cast_nullable_to_non_nullable
              as List<ReactionCount>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageReactionCountUpdatedImpl
    implements _MessageReactionCountUpdated {
  const _$MessageReactionCountUpdatedImpl(
      {@JsonKey(name: 'chat') required this.chat,
      @JsonKey(name: 'message_id') required this.messageId,
      @JsonKey(name: 'date') required this.date,
      @JsonKey(name: 'reactions') required final List<ReactionCount> reactions})
      : _reactions = reactions;

  factory _$MessageReactionCountUpdatedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MessageReactionCountUpdatedImplFromJson(json);

  /// The chat containing the message.
  @override
  @JsonKey(name: 'chat')
  final Chat chat;

  /// Unique message identifier inside the chat.
  @override
  @JsonKey(name: 'message_id')
  final int messageId;

  /// Date of the change in Unix time.
  @override
  @JsonKey(name: 'date')
  final int date;

  /// List of reactions that are present on the message.
  final List<ReactionCount> _reactions;

  /// List of reactions that are present on the message.
  @override
  @JsonKey(name: 'reactions')
  List<ReactionCount> get reactions {
    if (_reactions is EqualUnmodifiableListView) return _reactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reactions);
  }

  @override
  String toString() {
    return 'MessageReactionCountUpdated(chat: $chat, messageId: $messageId, date: $date, reactions: $reactions)';
  }

  /// Create a copy of MessageReactionCountUpdated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageReactionCountUpdatedImplCopyWith<_$MessageReactionCountUpdatedImpl>
      get copyWith => __$$MessageReactionCountUpdatedImplCopyWithImpl<
          _$MessageReactionCountUpdatedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageReactionCountUpdatedImplToJson(
      this,
    );
  }
}

abstract class _MessageReactionCountUpdated
    implements MessageReactionCountUpdated {
  const factory _MessageReactionCountUpdated(
          {@JsonKey(name: 'chat') required final Chat chat,
          @JsonKey(name: 'message_id') required final int messageId,
          @JsonKey(name: 'date') required final int date,
          @JsonKey(name: 'reactions')
          required final List<ReactionCount> reactions}) =
      _$MessageReactionCountUpdatedImpl;

  factory _MessageReactionCountUpdated.fromJson(Map<String, dynamic> json) =
      _$MessageReactionCountUpdatedImpl.fromJson;

  /// The chat containing the message.
  @override
  @JsonKey(name: 'chat')
  Chat get chat;

  /// Unique message identifier inside the chat.
  @override
  @JsonKey(name: 'message_id')
  int get messageId;

  /// Date of the change in Unix time.
  @override
  @JsonKey(name: 'date')
  int get date;

  /// List of reactions that are present on the message.
  @override
  @JsonKey(name: 'reactions')
  List<ReactionCount> get reactions;

  /// Create a copy of MessageReactionCountUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageReactionCountUpdatedImplCopyWith<_$MessageReactionCountUpdatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
