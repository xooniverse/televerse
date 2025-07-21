// File: lib/src/filters/common_filters.dart

import 'package:televerse/src/filters/filter.dart';
import 'package:televerse/src/bot/context.dart';
import 'package:televerse/telegram.dart';

// ===============================
// Update Type Filters
// ===============================

/// Filter that matches messages (not edited messages).
class MessageFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches regular messages.
  const MessageFilter();

  @override
  bool matches(CTX ctx) => ctx.message != null;

  @override
  String toString() => 'MessageFilter()';
}

/// Filter that matches edited messages.
class EditedMessageFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches edited messages.
  const EditedMessageFilter();

  @override
  bool matches(CTX ctx) => ctx.editedMessage != null;

  @override
  String toString() => 'EditedMessageFilter()';
}

/// Filter that matches any message (regular or edited).
class AnyMessageFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches any message.
  const AnyMessageFilter();

  @override
  bool matches(CTX ctx) => ctx.message != null || ctx.editedMessage != null;

  @override
  String toString() => 'AnyMessageFilter()';
}

/// Filter that matches channel posts.
class ChannelPostFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches channel posts.
  const ChannelPostFilter();

  @override
  bool matches(CTX ctx) => ctx.channelPost != null;

  @override
  String toString() => 'ChannelPostFilter()';
}

/// Filter that matches edited channel posts.
class EditedChannelPostFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches edited channel posts.
  const EditedChannelPostFilter();

  @override
  bool matches(CTX ctx) => ctx.editedChannelPost != null;

  @override
  String toString() => 'EditedChannelPostFilter()';
}

/// Filter that matches callback queries.
class CallbackQueryFilter<CTX extends Context> extends Filter<CTX> {
  /// Optional callback data to match.
  final String? data;

  /// Creates a filter that matches callback queries.
  ///
  /// Parameters:
  /// - [data]: Optional specific callback data to match
  const CallbackQueryFilter({this.data});

  @override
  bool matches(CTX ctx) {
    final callbackQuery = ctx.callbackQuery;
    if (callbackQuery == null) return false;

    if (data != null) {
      return callbackQuery.data == data;
    }

    return true;
  }

  @override
  String toString() => data != null
      ? 'CallbackQueryFilter(data: "$data")'
      : 'CallbackQueryFilter()';
}

/// Filter that matches inline queries.
class InlineQueryFilter<CTX extends Context> extends Filter<CTX> {
  /// Optional query text to match.
  final String? query;

  /// Creates a filter that matches inline queries.
  ///
  /// Parameters:
  /// - [query]: Optional specific query text to match
  const InlineQueryFilter({this.query});

  @override
  bool matches(CTX ctx) {
    final inlineQuery = ctx.inlineQuery;
    if (inlineQuery == null) return false;

    if (query != null) {
      return inlineQuery.query == query;
    }

    return true;
  }

  @override
  String toString() => query != null
      ? 'InlineQueryFilter(query: "$query")'
      : 'InlineQueryFilter()';
}

// ===============================
// Text Content Filters
// ===============================

/// Filter that matches messages or channel posts with text.
class TextFilter<CTX extends Context> extends Filter<CTX> {
  /// The text to match (if any).
  final String? text;

  /// Whether the match should be case sensitive.
  final bool caseSensitive;

  /// Creates a filter that matches text content.
  ///
  /// Parameters:
  /// - [text]: Optional specific text to match
  /// - [caseSensitive]: Whether matching should be case sensitive
  const TextFilter({this.text, this.caseSensitive = true});

  @override
  bool matches(CTX ctx) {
    final messageText = ctx.text;
    if (messageText == null) return false;

    if (text != null) {
      if (caseSensitive) {
        return messageText == text;
      } else {
        return messageText.toLowerCase() == text!.toLowerCase();
      }
    }

    return true;
  }

  @override
  String toString() => text != null
      ? 'TextFilter(text: "$text", caseSensitive: $caseSensitive)'
      : 'TextFilter()';
}

/// Filter that matches text using regular expressions.
class RegexFilter<CTX extends Context> extends Filter<CTX> {
  /// The regular expression pattern.
  final RegExp pattern;

  /// Creates a filter that matches text using regex.
  ///
  /// Parameters:
  /// - [pattern]: The regular expression pattern to match
  const RegexFilter(this.pattern);

  /// Creates a filter with a string pattern.
  ///
  /// Parameters:
  /// - [pattern]: The string pattern to compile
  /// - [caseSensitive]: Whether matching should be case sensitive
  /// - [multiLine]: Whether to enable multiline mode
  /// - [dotAll]: Whether . matches newlines
  factory RegexFilter.fromString(
    String pattern, {
    bool caseSensitive = true,
    bool multiLine = false,
    bool dotAll = false,
  }) {
    return RegexFilter(RegExp(
      pattern,
      caseSensitive: caseSensitive,
      multiLine: multiLine,
      dotAll: dotAll,
    ));
  }

  @override
  bool matches(CTX ctx) {
    final text = ctx.text ?? ctx.caption;
    return text != null && pattern.hasMatch(text);
  }

  @override
  String toString() => 'RegexFilter(pattern: ${pattern.pattern})';
}

/// Filter that matches text starting with a specific prefix.
class StartsWithFilter<CTX extends Context> extends Filter<CTX> {
  /// The prefix to match.
  final String prefix;

  /// Whether the match should be case sensitive.
  final bool caseSensitive;

  /// Creates a filter that matches text with a specific prefix.
  ///
  /// Parameters:
  /// - [prefix]: The prefix to match
  /// - [caseSensitive]: Whether matching should be case sensitive
  const StartsWithFilter(this.prefix, {this.caseSensitive = true});

  @override
  bool matches(CTX ctx) {
    final text = ctx.text;
    if (text == null) return false;

    if (caseSensitive) {
      return text.startsWith(prefix);
    } else {
      return text.toLowerCase().startsWith(prefix.toLowerCase());
    }
  }

  @override
  String toString() =>
      'StartsWithFilter(prefix: "$prefix", caseSensitive: $caseSensitive)';
}

/// Filter that matches text containing a specific substring.
class ContainsFilter<CTX extends Context> extends Filter<CTX> {
  /// The substring to match.
  final String substring;

  /// Whether the match should be case sensitive.
  final bool caseSensitive;

  /// Creates a filter that matches text containing a substring.
  ///
  /// Parameters:
  /// - [substring]: The substring to match
  /// - [caseSensitive]: Whether matching should be case sensitive
  const ContainsFilter(this.substring, {this.caseSensitive = true});

  @override
  bool matches(CTX ctx) {
    final text = ctx.text;
    if (text == null) return false;

    if (caseSensitive) {
      return text.contains(substring);
    } else {
      return text.toLowerCase().contains(substring.toLowerCase());
    }
  }

  @override
  String toString() =>
      'ContainsFilter(substring: "$substring", caseSensitive: $caseSensitive)';
}

// ===============================
// Command Filters
// ===============================

/// Filter that matches bot commands.
class CommandFilter<CTX extends Context> extends Filter<CTX> {
  /// The command to match (without the leading slash).
  final String command;

  /// Whether the match should be case sensitive.
  final bool caseSensitive;

  /// Creates a filter that matches a specific bot command.
  ///
  /// Parameters:
  /// - [command]: The command to match (without leading slash)
  /// - [caseSensitive]: Whether matching should be case sensitive
  const CommandFilter(this.command, {this.caseSensitive = false});

  @override
  bool matches(CTX ctx) {
    if (!ctx.hasCommand) return false;

    final ctxCommand = ctx.command;
    if (ctxCommand == null) return false;

    if (caseSensitive) {
      return ctxCommand == command;
    } else {
      return ctxCommand.toLowerCase() == command.toLowerCase();
    }
  }

  @override
  String toString() =>
      'CommandFilter(command: "/$command", caseSensitive: $caseSensitive)';
}

/// Filter that matches any bot command.
class AnyCommandFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches any bot command.
  const AnyCommandFilter();

  @override
  bool matches(CTX ctx) => ctx.hasCommand;

  @override
  String toString() => 'AnyCommandFilter()';
}

// ===============================
// Chat Type Filters
// ===============================

/// Filter that matches private chats.
class PrivateChatFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches private chats.
  const PrivateChatFilter();

  @override
  bool matches(CTX ctx) => ctx.isPrivateChat;

  @override
  String toString() => 'PrivateChatFilter()';
}

/// Filter that matches group chats (including supergroups).
class GroupChatFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches group chats.
  const GroupChatFilter();

  @override
  bool matches(CTX ctx) => ctx.isGroupChat;

  @override
  String toString() => 'GroupChatFilter()';
}

/// Filter that matches channel posts.
class ChannelFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches channels.
  const ChannelFilter();

  @override
  bool matches(CTX ctx) => ctx.isChannelPost;

  @override
  String toString() => 'ChannelFilter()';
}

/// Filter that matches specific chat types.
class ChatTypeFilter<CTX extends Context> extends Filter<CTX> {
  /// The chat types to match.
  final Set<ChatType> chatTypes;

  /// Creates a filter that matches specific chat types.
  ///
  /// Parameters:
  /// - [chatTypes]: The set of chat types to match
  const ChatTypeFilter(this.chatTypes);

  /// Creates a filter that matches a single chat type.
  ///
  /// Parameters:
  /// - [chatType]: The chat type to match
  ChatTypeFilter.single(ChatType chatType) : chatTypes = {chatType};

  @override
  bool matches(CTX ctx) {
    final chatType = ctx.chat?.type;
    return chatType != null && chatTypes.contains(chatType);
  }

  @override
  String toString() => 'ChatTypeFilter(types: $chatTypes)';
}

// ===============================
// User Filters
// ===============================

/// Filter that matches messages from specific users.
class UserFilter<CTX extends Context> extends Filter<CTX> {
  /// The user IDs to match.
  final Set<int> userIds;

  /// Creates a filter that matches specific users.
  ///
  /// Parameters:
  /// - [userIds]: The set of user IDs to match
  const UserFilter(this.userIds);

  /// Creates a filter that matches a single user.
  ///
  /// Parameters:
  /// - [userId]: The user ID to match
  UserFilter.single(int userId) : userIds = {userId};

  @override
  bool matches(CTX ctx) {
    final userId = ctx.from?.id;
    return userId != null && userIds.contains(userId);
  }

  @override
  String toString() => 'UserFilter(userIds: $userIds)';
}

/// Filter that matches messages from bot users.
class BotUserFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches messages from bots.
  const BotUserFilter();

  @override
  bool matches(CTX ctx) => ctx.from?.isBot ?? false;

  @override
  String toString() => 'BotUserFilter()';
}

/// Filter that matches messages from human users (non-bots).
class HumanUserFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches messages from human users.
  const HumanUserFilter();

  @override
  bool matches(CTX ctx) => !(ctx.from?.isBot ?? true);

  @override
  String toString() => 'HumanUserFilter()';
}

// ===============================
// Media Type Filters
// ===============================

/// Filter that matches messages with photos.
class PhotoFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches photo messages.
  const PhotoFilter();

  @override
  bool matches(CTX ctx) => ctx.msg?.photo != null;

  @override
  String toString() => 'PhotoFilter()';
}

/// Filter that matches messages with videos.
class VideoFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches video messages.
  const VideoFilter();

  @override
  bool matches(CTX ctx) => ctx.msg?.video != null;

  @override
  String toString() => 'VideoFilter()';
}

/// Filter that matches messages with documents.
class DocumentFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches document messages.
  const DocumentFilter();

  @override
  bool matches(CTX ctx) => ctx.msg?.document != null;

  @override
  String toString() => 'DocumentFilter()';
}

/// Filter that matches messages with audio.
class AudioFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches audio messages.
  const AudioFilter();

  @override
  bool matches(CTX ctx) => ctx.msg?.audio != null;

  @override
  String toString() => 'AudioFilter()';
}

/// Filter that matches messages with voice notes.
class VoiceFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches voice messages.
  const VoiceFilter();

  @override
  bool matches(CTX ctx) => ctx.msg?.voice != null;

  @override
  String toString() => 'VoiceFilter()';
}

/// Filter that matches messages with video notes.
class VideoNoteFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches video note messages.
  const VideoNoteFilter();

  @override
  bool matches(CTX ctx) => ctx.msg?.videoNote != null;

  @override
  String toString() => 'VideoNoteFilter()';
}

/// Filter that matches messages with stickers.
class StickerFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches sticker messages.
  const StickerFilter();

  @override
  bool matches(CTX ctx) => ctx.msg?.sticker != null;

  @override
  String toString() => 'StickerFilter()';
}

/// Filter that matches messages with locations.
class LocationFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches location messages.
  const LocationFilter();

  @override
  bool matches(CTX ctx) => ctx.msg?.location != null;

  @override
  String toString() => 'LocationFilter()';
}

/// Filter that matches messages with contacts.
class ContactFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches contact messages.
  const ContactFilter();

  @override
  bool matches(CTX ctx) => ctx.msg?.contact != null;

  @override
  String toString() => 'ContactFilter()';
}
