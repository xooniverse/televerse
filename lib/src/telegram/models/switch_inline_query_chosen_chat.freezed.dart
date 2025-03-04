// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'switch_inline_query_chosen_chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SwitchInlineQueryChosenChat _$SwitchInlineQueryChosenChatFromJson(
    Map<String, dynamic> json) {
  return _SwitchInlineQueryChosenChat.fromJson(json);
}

/// @nodoc
mixin _$SwitchInlineQueryChosenChat {
  /// Optional. The default inline query to be inserted in the input field. If
  /// left empty, only the bot's username will be inserted
  @JsonKey(name: 'query')
  String? get query => throw _privateConstructorUsedError;

  /// Optional. True, if private chats with users can be chosen
  @JsonKey(name: 'allow_user_chats')
  bool? get allowUserChats => throw _privateConstructorUsedError;

  /// Optional. True, if private chats with bots can be chosen
  @JsonKey(name: 'allow_bot_chats')
  bool? get allowBotChats => throw _privateConstructorUsedError;

  /// Optional. True, if group and supergroup chats can be chosen
  @JsonKey(name: 'allow_group_chats')
  bool? get allowGroupChats => throw _privateConstructorUsedError;

  /// Optional. True, if channel chats can be chosen
  @JsonKey(name: 'allow_channel_chats')
  bool? get allowChannelChats => throw _privateConstructorUsedError;

  /// Serializes this SwitchInlineQueryChosenChat to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SwitchInlineQueryChosenChat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SwitchInlineQueryChosenChatCopyWith<SwitchInlineQueryChosenChat>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwitchInlineQueryChosenChatCopyWith<$Res> {
  factory $SwitchInlineQueryChosenChatCopyWith(
          SwitchInlineQueryChosenChat value,
          $Res Function(SwitchInlineQueryChosenChat) then) =
      _$SwitchInlineQueryChosenChatCopyWithImpl<$Res,
          SwitchInlineQueryChosenChat>;
  @useResult
  $Res call(
      {@JsonKey(name: 'query') String? query,
      @JsonKey(name: 'allow_user_chats') bool? allowUserChats,
      @JsonKey(name: 'allow_bot_chats') bool? allowBotChats,
      @JsonKey(name: 'allow_group_chats') bool? allowGroupChats,
      @JsonKey(name: 'allow_channel_chats') bool? allowChannelChats});
}

/// @nodoc
class _$SwitchInlineQueryChosenChatCopyWithImpl<$Res,
        $Val extends SwitchInlineQueryChosenChat>
    implements $SwitchInlineQueryChosenChatCopyWith<$Res> {
  _$SwitchInlineQueryChosenChatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SwitchInlineQueryChosenChat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? allowUserChats = freezed,
    Object? allowBotChats = freezed,
    Object? allowGroupChats = freezed,
    Object? allowChannelChats = freezed,
  }) {
    return _then(_value.copyWith(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      allowUserChats: freezed == allowUserChats
          ? _value.allowUserChats
          : allowUserChats // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowBotChats: freezed == allowBotChats
          ? _value.allowBotChats
          : allowBotChats // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowGroupChats: freezed == allowGroupChats
          ? _value.allowGroupChats
          : allowGroupChats // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowChannelChats: freezed == allowChannelChats
          ? _value.allowChannelChats
          : allowChannelChats // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SwitchInlineQueryChosenChatImplCopyWith<$Res>
    implements $SwitchInlineQueryChosenChatCopyWith<$Res> {
  factory _$$SwitchInlineQueryChosenChatImplCopyWith(
          _$SwitchInlineQueryChosenChatImpl value,
          $Res Function(_$SwitchInlineQueryChosenChatImpl) then) =
      __$$SwitchInlineQueryChosenChatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'query') String? query,
      @JsonKey(name: 'allow_user_chats') bool? allowUserChats,
      @JsonKey(name: 'allow_bot_chats') bool? allowBotChats,
      @JsonKey(name: 'allow_group_chats') bool? allowGroupChats,
      @JsonKey(name: 'allow_channel_chats') bool? allowChannelChats});
}

/// @nodoc
class __$$SwitchInlineQueryChosenChatImplCopyWithImpl<$Res>
    extends _$SwitchInlineQueryChosenChatCopyWithImpl<$Res,
        _$SwitchInlineQueryChosenChatImpl>
    implements _$$SwitchInlineQueryChosenChatImplCopyWith<$Res> {
  __$$SwitchInlineQueryChosenChatImplCopyWithImpl(
      _$SwitchInlineQueryChosenChatImpl _value,
      $Res Function(_$SwitchInlineQueryChosenChatImpl) _then)
      : super(_value, _then);

  /// Create a copy of SwitchInlineQueryChosenChat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? allowUserChats = freezed,
    Object? allowBotChats = freezed,
    Object? allowGroupChats = freezed,
    Object? allowChannelChats = freezed,
  }) {
    return _then(_$SwitchInlineQueryChosenChatImpl(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      allowUserChats: freezed == allowUserChats
          ? _value.allowUserChats
          : allowUserChats // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowBotChats: freezed == allowBotChats
          ? _value.allowBotChats
          : allowBotChats // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowGroupChats: freezed == allowGroupChats
          ? _value.allowGroupChats
          : allowGroupChats // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowChannelChats: freezed == allowChannelChats
          ? _value.allowChannelChats
          : allowChannelChats // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SwitchInlineQueryChosenChatImpl
    implements _SwitchInlineQueryChosenChat {
  const _$SwitchInlineQueryChosenChatImpl(
      {@JsonKey(name: 'query') this.query,
      @JsonKey(name: 'allow_user_chats') this.allowUserChats,
      @JsonKey(name: 'allow_bot_chats') this.allowBotChats,
      @JsonKey(name: 'allow_group_chats') this.allowGroupChats,
      @JsonKey(name: 'allow_channel_chats') this.allowChannelChats});

  factory _$SwitchInlineQueryChosenChatImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SwitchInlineQueryChosenChatImplFromJson(json);

  /// Optional. The default inline query to be inserted in the input field. If
  /// left empty, only the bot's username will be inserted
  @override
  @JsonKey(name: 'query')
  final String? query;

  /// Optional. True, if private chats with users can be chosen
  @override
  @JsonKey(name: 'allow_user_chats')
  final bool? allowUserChats;

  /// Optional. True, if private chats with bots can be chosen
  @override
  @JsonKey(name: 'allow_bot_chats')
  final bool? allowBotChats;

  /// Optional. True, if group and supergroup chats can be chosen
  @override
  @JsonKey(name: 'allow_group_chats')
  final bool? allowGroupChats;

  /// Optional. True, if channel chats can be chosen
  @override
  @JsonKey(name: 'allow_channel_chats')
  final bool? allowChannelChats;

  @override
  String toString() {
    return 'SwitchInlineQueryChosenChat(query: $query, allowUserChats: $allowUserChats, allowBotChats: $allowBotChats, allowGroupChats: $allowGroupChats, allowChannelChats: $allowChannelChats)';
  }

  /// Create a copy of SwitchInlineQueryChosenChat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SwitchInlineQueryChosenChatImplCopyWith<_$SwitchInlineQueryChosenChatImpl>
      get copyWith => __$$SwitchInlineQueryChosenChatImplCopyWithImpl<
          _$SwitchInlineQueryChosenChatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SwitchInlineQueryChosenChatImplToJson(
      this,
    );
  }
}

abstract class _SwitchInlineQueryChosenChat
    implements SwitchInlineQueryChosenChat {
  const factory _SwitchInlineQueryChosenChat(
      {@JsonKey(name: 'query') final String? query,
      @JsonKey(name: 'allow_user_chats') final bool? allowUserChats,
      @JsonKey(name: 'allow_bot_chats') final bool? allowBotChats,
      @JsonKey(name: 'allow_group_chats') final bool? allowGroupChats,
      @JsonKey(name: 'allow_channel_chats')
      final bool? allowChannelChats}) = _$SwitchInlineQueryChosenChatImpl;

  factory _SwitchInlineQueryChosenChat.fromJson(Map<String, dynamic> json) =
      _$SwitchInlineQueryChosenChatImpl.fromJson;

  /// Optional. The default inline query to be inserted in the input field. If
  /// left empty, only the bot's username will be inserted
  @override
  @JsonKey(name: 'query')
  String? get query;

  /// Optional. True, if private chats with users can be chosen
  @override
  @JsonKey(name: 'allow_user_chats')
  bool? get allowUserChats;

  /// Optional. True, if private chats with bots can be chosen
  @override
  @JsonKey(name: 'allow_bot_chats')
  bool? get allowBotChats;

  /// Optional. True, if group and supergroup chats can be chosen
  @override
  @JsonKey(name: 'allow_group_chats')
  bool? get allowGroupChats;

  /// Optional. True, if channel chats can be chosen
  @override
  @JsonKey(name: 'allow_channel_chats')
  bool? get allowChannelChats;

  /// Create a copy of SwitchInlineQueryChosenChat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SwitchInlineQueryChosenChatImplCopyWith<_$SwitchInlineQueryChosenChatImpl>
      get copyWith => throw _privateConstructorUsedError;
}
