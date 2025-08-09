// File: lib/src/filters/common_filters.dart

part of '../../televerse.dart';

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
  bool matches(CTX ctx) =>
      ctx.msg != null && ctx.callbackQuery?.message == null;

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
  /// Optional callback data pattern to match.
  ///
  /// Can be either a [String] for exact matching or a [RegExp] for pattern matching.
  final Pattern? data;

  /// Creates a filter that matches callback queries.
  ///
  /// Parameters:
  /// - [data]: Optional specific callback data pattern to match.
  ///   Can be a [String] for exact matching or a [RegExp] for pattern matching.
  const CallbackQueryFilter({this.data});

  @override
  bool matches(CTX ctx) {
    final callbackQuery = ctx.callbackQuery;
    if (callbackQuery == null) return false;

    if (data != null) {
      final callbackData = callbackQuery.data;
      if (callbackData == null) return false;

      if (data is String) {
        return callbackData == data;
      } else if (data is RegExp) {
        return (data as RegExp).hasMatch(callbackData);
      }

      // Fallback for other Pattern implementations
      return callbackData.contains(data!);
    }

    return true;
  }

  @override
  String toString() => data != null
      ? 'CallbackQueryFilter(data: ${data is RegExp ? '/${data.toString()}/' : '"$data"'})'
      : 'CallbackQueryFilter()';
}

/// Filter that matches inline queries.
class InlineQueryFilter<CTX extends Context> extends Filter<CTX> {
  /// Optional query text pattern to match.
  ///
  /// Can be either a [String] for exact matching or a [RegExp] for pattern matching.
  final Pattern? query;

  /// Creates a filter that matches inline queries.
  ///
  /// Parameters:
  /// - [query]: Optional specific query text pattern to match.
  ///   Can be a [String] for exact matching or a [RegExp] for pattern matching.
  const InlineQueryFilter({this.query});

  @override
  bool matches(CTX ctx) {
    final inlineQuery = ctx.inlineQuery;
    if (inlineQuery == null) return false;

    if (query != null) {
      final queryText = inlineQuery.query;

      if (query is String) {
        return queryText == query;
      } else if (query is RegExp) {
        return (query as RegExp).hasMatch(queryText);
      }

      // Fallback for other Pattern implementations
      return queryText.contains(query!);
    }

    return true;
  }

  @override
  String toString() => query != null
      ? 'InlineQueryFilter(query: ${query is RegExp ? '/${query.toString()}/' : '"$query"'})'
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
    return RegexFilter(
      RegExp(
        pattern,
        caseSensitive: caseSensitive,
        multiLine: multiLine,
        dotAll: dotAll,
      ),
    );
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

/// Filter that matches messages with any media.
class MediaFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches any media messages.
  const MediaFilter();

  @override
  bool matches(CTX ctx) {
    final msg = ctx.msg;
    if (msg == null) return false;

    return msg.photo != null ||
        msg.video != null ||
        msg.document != null ||
        msg.audio != null ||
        msg.voice != null ||
        msg.videoNote != null ||
        msg.sticker != null ||
        msg.animation != null;
  }

  @override
  String toString() => 'MediaFilter()';
}

// ===============================
// Entity Filters
// ===============================

/// Filter that matches messages with specific entity types.
class EntityFilter<CTX extends Context> extends Filter<CTX> {
  /// The entity types to match.
  final Set<MessageEntityType> entityTypes;

  /// Creates a filter that matches messages with specific entities.
  ///
  /// Parameters:
  /// - [entityTypes]: The set of entity types to match
  const EntityFilter(this.entityTypes);

  /// Creates a filter that matches a single entity type.
  ///
  /// Parameters:
  /// - [entityType]: The entity type to match
  EntityFilter.single(MessageEntityType entityType)
      : entityTypes = {entityType};

  @override
  bool matches(CTX ctx) {
    final entities = ctx.entities;
    if (entities == null || entities.isEmpty) return false;

    return entities.any((entity) => entityTypes.contains(entity.type));
  }

  @override
  String toString() => 'EntityFilter(types: $entityTypes)';
}

/// Filter that matches messages with URLs.
class UrlFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches messages with URLs.
  const UrlFilter();

  @override
  bool matches(CTX ctx) {
    final entities = ctx.entities;
    if (entities == null) return false;

    return entities.any(
      (entity) =>
          entity.type == MessageEntityType.url ||
          entity.type == MessageEntityType.textLink,
    );
  }

  @override
  String toString() => 'UrlFilter()';
}

/// Filter that matches messages with mentions.
class MentionFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches messages with mentions.
  const MentionFilter();

  @override
  bool matches(CTX ctx) {
    final entities = ctx.entities;
    if (entities == null) return false;

    return entities.any(
      (entity) =>
          entity.type == MessageEntityType.mention ||
          entity.type == MessageEntityType.textMention,
    );
  }

  @override
  String toString() => 'MentionFilter()';
}

/// Filter that matches messages with hashtags.
class HashtagFilter<CTX extends Context> extends Filter<CTX> {
  /// Optional specific hashtag to match (without #).
  final String? hashtag;

  /// Creates a filter that matches messages with hashtags.
  ///
  /// Parameters:
  /// - [hashtag]: Optional specific hashtag to match (without #)
  const HashtagFilter({this.hashtag});

  @override
  bool matches(CTX ctx) {
    final entities = ctx.entities;
    final text = ctx.text;

    if (entities == null || text == null) return false;

    final hashtagEntities =
        entities.where((entity) => entity.type == MessageEntityType.hashtag);

    if (hashtagEntities.isEmpty) return false;

    if (hashtag != null) {
      return hashtagEntities.any((entity) {
        final entityText = text.substring(
          entity.offset + 1, // Skip the #
          entity.offset + entity.length,
        );
        return entityText.toLowerCase() == hashtag!.toLowerCase();
      });
    }

    return true;
  }

  @override
  String toString() => hashtag != null
      ? 'HashtagFilter(hashtag: "#$hashtag")'
      : 'HashtagFilter()';
}

// ===============================
// Combined and Complex Filters
// ===============================

/// Filter that matches text messages (messages with text content).
class TextMessageFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches text messages.
  const TextMessageFilter();

  @override
  bool matches(CTX ctx) => ctx.text != null;

  @override
  String toString() => 'TextMessageFilter()';
}

/// Filter that matches caption messages (messages with caption content).
class CaptionMessageFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches messages with captions.
  const CaptionMessageFilter();

  @override
  bool matches(CTX ctx) => ctx.caption != null;

  @override
  String toString() => 'CaptionMessageFilter()';
}

/// Filter that matches any text content (text or caption).
class AnyTextFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches any text content.
  const AnyTextFilter();

  @override
  bool matches(CTX ctx) => ctx.text != null || ctx.caption != null;

  @override
  String toString() => 'AnyTextFilter()';
}

/// Filter that matches forwarded messages.
class ForwardedFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches forwarded messages.
  const ForwardedFilter();

  @override
  bool matches(CTX ctx) => ctx.msg?.forwardOrigin != null;

  @override
  String toString() => 'ForwardedFilter()';
}

/// Filter that matches reply messages.
class ReplyFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches reply messages.
  const ReplyFilter();

  @override
  bool matches(CTX ctx) => ctx.msg?.replyToMessage != null;

  @override
  String toString() => 'ReplyFilter()';
}

/// Filter that matches pinned messages.
class PinnedMessageFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches pinned messages.
  const PinnedMessageFilter();

  @override
  bool matches(CTX ctx) => ctx.msg?.pinnedMessage != null;

  @override
  String toString() => 'PinnedMessageFilter()';
}

// ===============================
// Update Type Filters
// ===============================

/// Filter that matches chosen inline results.
class ChosenInlineResultFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches chosen inline results.
  const ChosenInlineResultFilter();

  @override
  bool matches(CTX ctx) => ctx.chosenInlineResult != null;

  @override
  String toString() => 'ChosenInlineResultFilter()';
}

/// Filter that matches shipping queries.
class ShippingQueryFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches shipping queries.
  const ShippingQueryFilter();

  @override
  bool matches(CTX ctx) => ctx.shippingQuery != null;

  @override
  String toString() => 'ShippingQueryFilter()';
}

/// Filter that matches pre-checkout queries.
class PreCheckoutQueryFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches pre-checkout queries.
  const PreCheckoutQueryFilter();

  @override
  bool matches(CTX ctx) => ctx.preCheckoutQuery != null;

  @override
  String toString() => 'PreCheckoutQueryFilter()';
}

/// Filter that matches poll updates.
class PollFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches poll updates.
  const PollFilter();

  @override
  bool matches(CTX ctx) => ctx.update.poll != null;

  @override
  String toString() => 'PollFilter()';
}

/// Filter that matches poll answer updates.
class PollAnswerFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches poll answer updates.
  const PollAnswerFilter();

  @override
  bool matches(CTX ctx) => ctx.update.pollAnswer != null;

  @override
  String toString() => 'PollAnswerFilter()';
}

/// Filter that matches chat member updates.
class ChatMemberFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches chat member updates.
  const ChatMemberFilter();

  @override
  bool matches(CTX ctx) => ctx.update.chatMember != null;

  @override
  String toString() => 'ChatMemberFilter()';
}

/// Filter that matches my chat member updates.
class MyChatMemberFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches bot's chat member updates.
  const MyChatMemberFilter();

  @override
  bool matches(CTX ctx) => ctx.update.myChatMember != null;

  @override
  String toString() => 'MyChatMemberFilter()';
}

/// Filter that matches chat join request updates.
class ChatJoinRequestFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches chat join request updates.
  const ChatJoinRequestFilter();

  @override
  bool matches(CTX ctx) => ctx.update.chatJoinRequest != null;

  @override
  String toString() => 'ChatJoinRequestFilter()';
}

/// Filter that matches message reaction updates.
class MessageReactionFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches message reaction updates.
  const MessageReactionFilter();

  @override
  bool matches(CTX ctx) => ctx.update.messageReaction != null;

  @override
  String toString() => 'MessageReactionFilter()';
}

/// Filter that matches message reaction count updates.
class MessageReactionCountFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches message reaction count updates.
  const MessageReactionCountFilter();

  @override
  bool matches(CTX ctx) => ctx.update.messageReactionCount != null;

  @override
  String toString() => 'MessageReactionCountFilter()';
}

/// Filter that matches chat boost updates.
class ChatBoostFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches chat boost updates.
  const ChatBoostFilter();

  @override
  bool matches(CTX ctx) => ctx.update.chatBoost != null;

  @override
  String toString() => 'ChatBoostFilter()';
}

/// Filter that matches removed chat boost updates.
class RemovedChatBoostFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches removed chat boost updates.
  const RemovedChatBoostFilter();

  @override
  bool matches(CTX ctx) => ctx.update.removedChatBoost != null;

  @override
  String toString() => 'RemovedChatBoostFilter()';
}

/// Filter that matches business connection updates.
class BusinessConnectionFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches business connection updates.
  const BusinessConnectionFilter();

  @override
  bool matches(CTX ctx) => ctx.update.businessConnection != null;

  @override
  String toString() => 'BusinessConnectionFilter()';
}

/// Filter that matches business message updates.
class BusinessMessageFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches business message updates.
  const BusinessMessageFilter();

  @override
  bool matches(CTX ctx) => ctx.update.businessMessage != null;

  @override
  String toString() => 'BusinessMessageFilter()';
}

/// Filter that matches edited business message updates.
class EditedBusinessMessageFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches edited business message updates.
  const EditedBusinessMessageFilter();

  @override
  bool matches(CTX ctx) => ctx.update.editedBusinessMessage != null;

  @override
  String toString() => 'EditedBusinessMessageFilter()';
}

/// Filter that matches deleted business message updates.
class DeletedBusinessMessagesFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches deleted business message updates.
  const DeletedBusinessMessagesFilter();

  @override
  bool matches(CTX ctx) => ctx.update.deletedBusinessMessages != null;

  @override
  String toString() => 'DeletedBusinessMessagesFilter()';
}

// ===============================
// Content-Specific Filters
// ===============================

/// Filter that matches messages with animations.
class AnimationFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches animation messages.
  const AnimationFilter();

  @override
  bool matches(CTX ctx) => ctx.msg?.animation != null;

  @override
  String toString() => 'AnimationFilter()';
}

/// Filter that matches messages with games.
class GameFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches game messages.
  const GameFilter();

  @override
  bool matches(CTX ctx) => ctx.msg?.game != null;

  @override
  String toString() => 'GameFilter()';
}

/// Filter that matches messages with venue information.
class VenueFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches venue messages.
  const VenueFilter();

  @override
  bool matches(CTX ctx) => ctx.msg?.venue != null;

  @override
  String toString() => 'VenueFilter()';
}

/// Filter that matches messages with dice.
class DiceFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches dice messages.
  const DiceFilter();

  @override
  bool matches(CTX ctx) => ctx.msg?.dice != null;

  @override
  String toString() => 'DiceFilter()';
}

/// Filter that matches messages with poll content.
class PollMessageFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches poll messages.
  const PollMessageFilter();

  @override
  bool matches(CTX ctx) => ctx.msg?.poll != null;

  @override
  String toString() => 'PollMessageFilter()';
}

/// Filter that matches messages with successful payment.
class SuccessfulPaymentFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches successful payment messages.
  const SuccessfulPaymentFilter();

  @override
  bool matches(CTX ctx) => ctx.msg?.successfulPayment != null;

  @override
  String toString() => 'SuccessfulPaymentFilter()';
}

/// Filter that matches messages with web app data.
class WebAppDataFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches web app data messages.
  const WebAppDataFilter();

  @override
  bool matches(CTX ctx) => ctx.msg?.webAppData != null;

  @override
  String toString() => 'WebAppDataFilter()';
}

/// Filter that matches messages with paid media.
class PaidMediaFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches paid media messages.
  const PaidMediaFilter();

  @override
  bool matches(CTX ctx) => ctx.msg?.paidMedia != null;

  @override
  String toString() => 'PaidMediaFilter()';
}

/// Filter that matches messages with user shared information.
class UsersSharedFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches user shared messages.
  const UsersSharedFilter();

  @override
  bool matches(CTX ctx) => ctx.msg?.usersShared != null;

  @override
  String toString() => 'UsersSharedFilter()';
}

/// Filter that matches messages with chat shared information.
class ChatSharedFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches chat shared messages.
  const ChatSharedFilter();

  @override
  bool matches(CTX ctx) => ctx.msg?.chatShared != null;

  @override
  String toString() => 'ChatSharedFilter()';
}

// ===============================
// Service Message Filters
// ===============================

/// Filter that matches new chat title service messages.
class NewChatTitleFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches new chat title messages.
  const NewChatTitleFilter();

  @override
  bool matches(CTX ctx) => ctx.msg?.newChatTitle != null;

  @override
  String toString() => 'NewChatTitleFilter()';
}

/// Filter that matches new chat photo service messages.
class NewChatPhotoFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches new chat photo messages.
  const NewChatPhotoFilter();

  @override
  bool matches(CTX ctx) => ctx.msg?.newChatPhoto != null;

  @override
  String toString() => 'NewChatPhotoFilter()';
}

/// Filter that matches delete chat photo service messages.
class DeleteChatPhotoFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches delete chat photo messages.
  const DeleteChatPhotoFilter();

  @override
  bool matches(CTX ctx) => ctx.msg?.deleteChatPhoto != null;

  @override
  String toString() => 'DeleteChatPhotoFilter()';
}

/// Filter that matches video chat scheduled service messages.
class VideoChatScheduledFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches video chat scheduled messages.
  const VideoChatScheduledFilter();

  @override
  bool matches(CTX ctx) => ctx.msg?.videoChatScheduled != null;

  @override
  String toString() => 'VideoChatScheduledFilter()';
}

/// Filter that matches video chat started service messages.
class VideoChatStartedFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches video chat started messages.
  const VideoChatStartedFilter();

  @override
  bool matches(CTX ctx) => ctx.msg?.videoChatStarted != null;

  @override
  String toString() => 'VideoChatStartedFilter()';
}

/// Filter that matches video chat ended service messages.
class VideoChatEndedFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches video chat ended messages.
  const VideoChatEndedFilter();

  @override
  bool matches(CTX ctx) => ctx.msg?.videoChatEnded != null;

  @override
  String toString() => 'VideoChatEndedFilter()';
}

/// Filter that matches video chat participants invited service messages.
class VideoChatParticipantsInvitedFilter<CTX extends Context>
    extends Filter<CTX> {
  /// Creates a filter that matches video chat participants invited messages.
  const VideoChatParticipantsInvitedFilter();

  @override
  bool matches(CTX ctx) => ctx.msg?.videoChatParticipantsInvited != null;

  @override
  String toString() => 'VideoChatParticipantsInvitedFilter()';
}

/// Filter that matches forum topic created service messages.
class ForumTopicCreatedFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches forum topic created messages.
  const ForumTopicCreatedFilter();

  @override
  bool matches(CTX ctx) => ctx.msg?.forumTopicCreated != null;

  @override
  String toString() => 'ForumTopicCreatedFilter()';
}

/// Filter that matches forum topic edited service messages.
class ForumTopicEditedFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches forum topic edited messages.
  const ForumTopicEditedFilter();

  @override
  bool matches(CTX ctx) => ctx.msg?.forumTopicEdited != null;

  @override
  String toString() => 'ForumTopicEditedFilter()';
}

/// Filter that matches forum topic closed service messages.
class ForumTopicClosedFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches forum topic closed messages.
  const ForumTopicClosedFilter();

  @override
  bool matches(CTX ctx) => ctx.msg?.forumTopicClosed != null;

  @override
  String toString() => 'ForumTopicClosedFilter()';
}

/// Filter that matches forum topic reopened service messages.
class ForumTopicReopenedFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches forum topic reopened messages.
  const ForumTopicReopenedFilter();

  @override
  bool matches(CTX ctx) => ctx.msg?.forumTopicReopened != null;

  @override
  String toString() => 'ForumTopicReopenedFilter()';
}

/// Filter that matches live location messages.
class LiveLocationFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches live location messages.
  const LiveLocationFilter();

  @override
  bool matches(CTX ctx) {
    final location = ctx.msg?.location;
    return location != null &&
        (location.livePeriod != null || location.horizontalAccuracy != null);
  }

  @override
  String toString() => 'LiveLocationFilter()';
}

/// Filter that matches specific emoji reactions.
class EmojiReactionFilter<CTX extends Context> extends Filter<CTX> {
  /// The emoji to match in reactions.
  final String emoji;

  /// Creates a filter that matches specific emoji reactions.
  ///
  /// Parameters:
  /// - [emoji]: The emoji to match (e.g., '👍', '❤️')
  const EmojiReactionFilter(this.emoji);

  @override
  bool matches(CTX ctx) {
    final reaction = ctx.update.messageReaction;
    if (reaction == null) return false;

    final newReaction = reaction.newReaction;
    if (newReaction.isEmpty) return false;

    return newReaction.any((reactionType) {
      if (reactionType is ReactionTypeEmoji) {
        return reactionType.emoji == emoji;
      }
      return false;
    });
  }

  @override
  String toString() => 'EmojiReactionFilter(emoji: "$emoji")';
}

/// Filter for paid media purchase updates.
class PurchasedPaidMediaFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches paid media purchase updates.
  const PurchasedPaidMediaFilter();

  @override
  bool matches(CTX ctx) => ctx.update.purchasedPaidMedia != null;

  @override
  String toString() => 'PurchasedPaidMediaFilter()';
}

/// Filter for paid media with videos.
class PaidMediaVideoFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches paid media with videos.
  const PaidMediaVideoFilter();

  @override
  bool matches(CTX ctx) {
    final paidMedia = ctx.msg?.paidMedia;
    if (paidMedia == null) return false;

    return paidMedia.paidMedia.any((media) => media is PaidMediaVideo);
  }

  @override
  String toString() => 'PaidMediaVideoFilter()';
}

/// Filter for paid media with photos.
class PaidMediaPhotoFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that matches paid media with photos.
  const PaidMediaPhotoFilter();

  @override
  bool matches(CTX ctx) {
    final paidMedia = ctx.msg?.paidMedia;
    if (paidMedia == null) return false;

    return paidMedia.paidMedia.any((media) => media is PaidMediaPhoto);
  }

  @override
  String toString() => 'PaidMediaPhotoFilter()';
}
