import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/televerse.dart';

part 'bot_command_scope.freezed.dart';
part 'bot_command_scope.g.dart';

/// This object represents the scope to which bot commands are applied.
@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
sealed class BotCommandScope with _$BotCommandScope {
  /// Represents the scope of bot commands, covering all private chats.
  const factory BotCommandScope.default_({
    /// Scope type, always be [BotCommandScopeType.default_]
    @JsonKey(name: 'type')
    @Default(BotCommandScopeType.default_)
    final BotCommandScopeType type,
  }) = BotCommandScopeDefault;

  /// Represents the scope of bot commands, covering all private chats.
  const factory BotCommandScope.allPrivateChats({
    /// Scope type, always be [BotCommandScopeType.allPrivateChats]
    @Default(BotCommandScopeType.allPrivateChats)
    @JsonKey(name: 'type')
    final BotCommandScopeType type,
  }) = BotCommandScopeAllPrivateChats;

  /// Represents the scope of bot commands, covering all group and supergroup chats.
  const factory BotCommandScope.allGroupChats({
    /// Scope type, always be [BotCommandScopeType.allGroupChats]
    @Default(BotCommandScopeType.allGroupChats) final BotCommandScopeType type,
  }) = BotCommandScopeAllGroupChats;

  /// Represents the scope of bot commands, covering all group and supergroup chat administrators.
  const factory BotCommandScope.allChatAdministrators({
    /// Scope type, always be [BotCommandScopeType.allChatAdministrators]
    @Default(BotCommandScopeType.allChatAdministrators)
    @JsonKey(name: 'type')
    final BotCommandScopeType type,
  }) = BotCommandScopeAllChatAdministrators;

  /// Represents the scope of bot commands, covering a specific chat.
  const factory BotCommandScope.chat({
    /// Scope type, always be [BotCommandScopeType.chat]
    @JsonKey(name: 'type')
    @Default(BotCommandScopeType.chat)
    final BotCommandScopeType type,

    /// Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
    @JsonKey(name: 'chat_id') @IDConverter() required final ID chatId,
  }) = BotCommandScopeChat;

  /// Represents the scope of bot commands, covering all administrators of a specific group or supergroup chat.
  const factory BotCommandScope.chatAdministrators({
    /// Scope type, always be [BotCommandScopeType.chatAdministrators]
    @Default(BotCommandScopeType.chatAdministrators)
    @JsonKey(name: 'type')
    final BotCommandScopeType type,

    /// Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
    @JsonKey(name: 'chat_id') @IDConverter() required final ID chatId,
  }) = BotCommandScopeChatAdministrators;

  /// Represents the scope of bot commands, covering a specific member of a group or supergroup chat.
  const factory BotCommandScope.chatMember({
    /// Scope type, always be [BotCommandScopeType.chatMember]
    @JsonKey(name: 'type')
    @Default(BotCommandScopeType.chatMember)
    final BotCommandScopeType type,

    /// Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
    @JsonKey(name: 'chat_id') @IDConverter() required final ID chatId,

    /// Unique identifier of the target user
    @JsonKey(name: 'user_id') required final int userId,
  }) = BotCommandScopeChatMember;

  factory BotCommandScope.fromJson(Map<String, Object?> json) =>
      _$BotCommandScopeFromJson(json);
}
