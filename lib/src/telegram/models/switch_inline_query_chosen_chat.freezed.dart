// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'switch_inline_query_chosen_chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SwitchInlineQueryChosenChat {
  /// Optional. The default inline query to be inserted in the input field. If
  /// left empty, only the bot's username will be inserted
  @JsonKey(name: 'query')
  String? get query;

  /// Optional. True, if private chats with users can be chosen
  @JsonKey(name: 'allow_user_chats')
  bool? get allowUserChats;

  /// Optional. True, if private chats with bots can be chosen
  @JsonKey(name: 'allow_bot_chats')
  bool? get allowBotChats;

  /// Optional. True, if group and supergroup chats can be chosen
  @JsonKey(name: 'allow_group_chats')
  bool? get allowGroupChats;

  /// Optional. True, if channel chats can be chosen
  @JsonKey(name: 'allow_channel_chats')
  bool? get allowChannelChats;

  /// Create a copy of SwitchInlineQueryChosenChat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SwitchInlineQueryChosenChatCopyWith<SwitchInlineQueryChosenChat>
      get copyWith => _$SwitchInlineQueryChosenChatCopyWithImpl<
              SwitchInlineQueryChosenChat>(
          this as SwitchInlineQueryChosenChat, _$identity);

  /// Serializes this SwitchInlineQueryChosenChat to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'SwitchInlineQueryChosenChat(query: $query, allowUserChats: $allowUserChats, allowBotChats: $allowBotChats, allowGroupChats: $allowGroupChats, allowChannelChats: $allowChannelChats)';
  }
}

/// @nodoc
abstract mixin class $SwitchInlineQueryChosenChatCopyWith<$Res> {
  factory $SwitchInlineQueryChosenChatCopyWith(
          SwitchInlineQueryChosenChat value,
          $Res Function(SwitchInlineQueryChosenChat) _then) =
      _$SwitchInlineQueryChosenChatCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'query') String? query,
      @JsonKey(name: 'allow_user_chats') bool? allowUserChats,
      @JsonKey(name: 'allow_bot_chats') bool? allowBotChats,
      @JsonKey(name: 'allow_group_chats') bool? allowGroupChats,
      @JsonKey(name: 'allow_channel_chats') bool? allowChannelChats});
}

/// @nodoc
class _$SwitchInlineQueryChosenChatCopyWithImpl<$Res>
    implements $SwitchInlineQueryChosenChatCopyWith<$Res> {
  _$SwitchInlineQueryChosenChatCopyWithImpl(this._self, this._then);

  final SwitchInlineQueryChosenChat _self;
  final $Res Function(SwitchInlineQueryChosenChat) _then;

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
    return _then(_self.copyWith(
      query: freezed == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      allowUserChats: freezed == allowUserChats
          ? _self.allowUserChats
          : allowUserChats // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowBotChats: freezed == allowBotChats
          ? _self.allowBotChats
          : allowBotChats // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowGroupChats: freezed == allowGroupChats
          ? _self.allowGroupChats
          : allowGroupChats // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowChannelChats: freezed == allowChannelChats
          ? _self.allowChannelChats
          : allowChannelChats // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SwitchInlineQueryChosenChat implements SwitchInlineQueryChosenChat {
  const _SwitchInlineQueryChosenChat(
      {@JsonKey(name: 'query') this.query,
      @JsonKey(name: 'allow_user_chats') this.allowUserChats,
      @JsonKey(name: 'allow_bot_chats') this.allowBotChats,
      @JsonKey(name: 'allow_group_chats') this.allowGroupChats,
      @JsonKey(name: 'allow_channel_chats') this.allowChannelChats});
  factory _SwitchInlineQueryChosenChat.fromJson(Map<String, dynamic> json) =>
      _$SwitchInlineQueryChosenChatFromJson(json);

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

  /// Create a copy of SwitchInlineQueryChosenChat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SwitchInlineQueryChosenChatCopyWith<_SwitchInlineQueryChosenChat>
      get copyWith => __$SwitchInlineQueryChosenChatCopyWithImpl<
          _SwitchInlineQueryChosenChat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SwitchInlineQueryChosenChatToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'SwitchInlineQueryChosenChat(query: $query, allowUserChats: $allowUserChats, allowBotChats: $allowBotChats, allowGroupChats: $allowGroupChats, allowChannelChats: $allowChannelChats)';
  }
}

/// @nodoc
abstract mixin class _$SwitchInlineQueryChosenChatCopyWith<$Res>
    implements $SwitchInlineQueryChosenChatCopyWith<$Res> {
  factory _$SwitchInlineQueryChosenChatCopyWith(
          _SwitchInlineQueryChosenChat value,
          $Res Function(_SwitchInlineQueryChosenChat) _then) =
      __$SwitchInlineQueryChosenChatCopyWithImpl;
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
class __$SwitchInlineQueryChosenChatCopyWithImpl<$Res>
    implements _$SwitchInlineQueryChosenChatCopyWith<$Res> {
  __$SwitchInlineQueryChosenChatCopyWithImpl(this._self, this._then);

  final _SwitchInlineQueryChosenChat _self;
  final $Res Function(_SwitchInlineQueryChosenChat) _then;

  /// Create a copy of SwitchInlineQueryChosenChat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? query = freezed,
    Object? allowUserChats = freezed,
    Object? allowBotChats = freezed,
    Object? allowGroupChats = freezed,
    Object? allowChannelChats = freezed,
  }) {
    return _then(_SwitchInlineQueryChosenChat(
      query: freezed == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      allowUserChats: freezed == allowUserChats
          ? _self.allowUserChats
          : allowUserChats // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowBotChats: freezed == allowBotChats
          ? _self.allowBotChats
          : allowBotChats // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowGroupChats: freezed == allowGroupChats
          ? _self.allowGroupChats
          : allowGroupChats // ignore: cast_nullable_to_non_nullable
              as bool?,
      allowChannelChats: freezed == allowChannelChats
          ? _self.allowChannelChats
          : allowChannelChats // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}
