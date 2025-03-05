// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'switch_inline_query_chosen_chat.freezed.dart';
part 'switch_inline_query_chosen_chat.g.dart';

/// This object represents an inline button that switches the current user to
/// inline mode in a chosen chat, with an optional default inline query.
@freezed
class SwitchInlineQueryChosenChat with _$SwitchInlineQueryChosenChat {
  /// Constructs a [SwitchInlineQueryChosenChat]
  const factory SwitchInlineQueryChosenChat({
    /// Optional. The default inline query to be inserted in the input field. If
    /// left empty, only the bot's username will be inserted
    @JsonKey(name: 'query') String? query,

    /// Optional. True, if private chats with users can be chosen
    @JsonKey(name: 'allow_user_chats') bool? allowUserChats,

    /// Optional. True, if private chats with bots can be chosen
    @JsonKey(name: 'allow_bot_chats') bool? allowBotChats,

    /// Optional. True, if group and supergroup chats can be chosen
    @JsonKey(name: 'allow_group_chats') bool? allowGroupChats,

    /// Optional. True, if channel chats can be chosen
    @JsonKey(name: 'allow_channel_chats') bool? allowChannelChats,
  }) = _SwitchInlineQueryChosenChat;

  /// Creates a [SwitchInlineQueryChosenChat] object from JSON object
  factory SwitchInlineQueryChosenChat.fromJson(Map<String, dynamic> json) =>
      _$SwitchInlineQueryChosenChatFromJson(json);
}
