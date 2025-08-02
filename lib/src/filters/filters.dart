// File: lib/src/filters/filters.dart

part of '../../televerse.dart';

/// Convenience class for creating common filters.
///
/// This class provides static constants and factory methods for creating
/// frequently used filters in a more readable and convenient way.
///
/// Example:
/// ```dart
/// // Using static constants
/// composer.filter(Filters.privateChat, handler);
/// composer.filter(Filters.photo, photoHandler);
///
/// // Using factory methods
/// composer.filter(Filters.command('start'), startHandler);
/// composer.filter(Filters.textEquals('hello'), helloHandler);
/// composer.filter(Filters.user(123456), specificUserHandler);
///
/// // Combining filters
/// composer.filter(
///   Filters.command('admin').and(Filters.privateChat),
///   adminHandler,
/// );
/// ```
class Filters {
  // Private constructor to prevent instantiation
  const Filters._();

  // ===============================
  // Update Type Filters
  // ===============================

  /// Matches regular messages (not edited).
  static const MessageFilter message = MessageFilter();

  /// Matches edited messages.
  static const EditedMessageFilter editedMessage = EditedMessageFilter();

  /// Matches any message (regular or edited).
  static const AnyMessageFilter anyMessage = AnyMessageFilter();

  /// Matches channel posts.
  static const ChannelPostFilter channelPost = ChannelPostFilter();

  /// Matches edited channel posts.
  static const EditedChannelPostFilter editedChannelPost =
      EditedChannelPostFilter();

  /// Matches any callback query.
  static const CallbackQueryFilter callbackQuery = CallbackQueryFilter();

  /// Matches any inline query.
  static const InlineQueryFilter inlineQuery = InlineQueryFilter();

  // ===============================
  // Text Content Filters
  // ===============================

  /// Matches messages with text content.
  static const TextMessageFilter text = TextMessageFilter();

  /// Matches messages with caption content.
  static const CaptionMessageFilter caption = CaptionMessageFilter();

  /// Matches any text content (text or caption).
  static const AnyTextFilter anyText = AnyTextFilter();

  // ===============================
  // Command Filters
  // ===============================

  /// Matches any bot command.
  static const AnyCommandFilter command = AnyCommandFilter();

  /// Creates a filter that matches a specific command.
  ///
  /// Parameters:
  /// - [cmd]: The command name (without leading slash)
  /// - [caseSensitive]: Whether matching should be case sensitive
  ///
  /// Example:
  /// ```dart
  /// Filters.command('start') // matches /start
  /// Filters.command('Help', caseSensitive: true) // matches /Help exactly
  /// ```
  static CommandFilter cmd(String cmd, {bool caseSensitive = false}) {
    return CommandFilter(cmd, caseSensitive: caseSensitive);
  }

  // ===============================
  // Chat Type Filters
  // ===============================

  /// Matches private chats.
  static const PrivateChatFilter privateChat = PrivateChatFilter();

  /// Matches group chats (including supergroups).
  static const GroupChatFilter groupChat = GroupChatFilter();

  /// Matches channel posts.
  static const ChannelFilter channel = ChannelFilter();

  /// Creates a filter that matches a specific chat type.
  ///
  /// Example:
  /// ```dart
  /// Filters.chatType(ChatType.supergroup)
  /// ```
  static ChatTypeFilter chatType(ChatType type) {
    return ChatTypeFilter.single(type);
  }

  /// Creates a filter that matches multiple chat types.
  ///
  /// Example:
  /// ```dart
  /// Filters.chatTypes({ChatType.group, ChatType.supergroup})
  /// ```
  static ChatTypeFilter chatTypes(Set<ChatType> types) {
    return ChatTypeFilter(types);
  }

  // ===============================
  // User Filters
  // ===============================

  /// Matches messages from bot users.
  static const BotUserFilter bot = BotUserFilter();

  /// Matches messages from human users (non-bots).
  static const HumanUserFilter human = HumanUserFilter();

  /// Creates a filter that matches a specific user.
  ///
  /// Parameters:
  /// - [userId]: The user ID to match
  ///
  /// Example:
  /// ```dart
  /// Filters.user(123456789)
  /// ```
  static UserFilter user(int userId) {
    return UserFilter.single(userId);
  }

  /// Creates a filter that matches multiple users.
  ///
  /// Parameters:
  /// - [userIds]: The set of user IDs to match
  ///
  /// Example:
  /// ```dart
  /// Filters.users({123456, 789012, 345678})
  /// ```
  static UserFilter users(Set<int> userIds) {
    return UserFilter(userIds);
  }

  // ===============================
  // Media Type Filters
  // ===============================

  /// Matches messages with photos.
  static const PhotoFilter photo = PhotoFilter();

  /// Matches messages with videos.
  static const VideoFilter video = VideoFilter();

  /// Matches messages with documents.
  static const DocumentFilter document = DocumentFilter();

  /// Matches messages with audio files.
  static const AudioFilter audio = AudioFilter();

  /// Matches messages with voice notes.
  static const VoiceFilter voice = VoiceFilter();

  /// Matches messages with video notes.
  static const VideoNoteFilter videoNote = VideoNoteFilter();

  /// Matches messages with stickers.
  static const StickerFilter sticker = StickerFilter();

  /// Matches messages with location data.
  static const LocationFilter location = LocationFilter();

  /// Matches messages with contact information.
  static const ContactFilter contact = ContactFilter();

  /// Matches messages with any media type.
  static const MediaFilter media = MediaFilter();

  // ===============================
  // Entity Filters
  // ===============================

  /// Matches messages with URLs.
  static const UrlFilter url = UrlFilter();

  /// Matches messages with mentions.
  static const MentionFilter mention = MentionFilter();

  /// Matches messages with any hashtag.
  static const HashtagFilter hashtag = HashtagFilter();

  /// Creates a filter that matches a specific hashtag.
  ///
  /// Parameters:
  /// - [tag]: The hashtag to match (without the # symbol)
  ///
  /// Example:
  /// ```dart
  /// Filters.tag('programming') // matches #programming
  /// ```
  static HashtagFilter tag(String tag) {
    return HashtagFilter(hashtag: tag);
  }

  /// Creates a filter that matches specific entity types.
  ///
  /// Parameters:
  /// - [type]: The entity type to match
  ///
  /// Example:
  /// ```dart
  /// Filters.entity(MessageEntityType.bold)
  /// ```
  static EntityFilter entity(MessageEntityType type) {
    return EntityFilter.single(type);
  }

  /// Creates a filter that matches multiple entity types.
  ///
  /// Parameters:
  /// - [types]: The set of entity types to match
  ///
  /// Example:
  /// ```dart
  /// Filters.entities({MessageEntityType.bold, MessageEntityType.italic})
  /// ```
  static EntityFilter entities(Set<MessageEntityType> types) {
    return EntityFilter(types);
  }

  // ===============================
  // Content Filters
  // ===============================

  /// Matches forwarded messages.
  static const ForwardedFilter forwarded = ForwardedFilter();

  /// Matches reply messages.
  static const ReplyFilter reply = ReplyFilter();

  /// Matches pinned messages.
  static const PinnedMessageFilter pinned = PinnedMessageFilter();

  // ===============================
  // Utility Filters
  // ===============================

  /// A filter that always matches (useful for debugging).
  static const AlwaysFilter always = AlwaysFilter();

  /// A filter that never matches (useful for temporarily disabling handlers).
  static const NeverFilter never = NeverFilter();

  // ===============================
  // Text Matching Factory Methods
  // ===============================

  /// Creates a filter that matches exact text.
  ///
  /// Parameters:
  /// - [text]: The exact text to match
  /// - [caseSensitive]: Whether matching should be case sensitive
  ///
  /// Example:
  /// ```dart
  /// Filters.textEquals('hello') // matches "hello" exactly
  /// Filters.textEquals('Hello', caseSensitive: false) // matches "hello", "Hello", "HELLO"
  /// ```
  static TextFilter textEquals(String text, {bool caseSensitive = true}) {
    return TextFilter(text: text, caseSensitive: caseSensitive);
  }

  /// Creates a filter that matches text starting with a prefix.
  ///
  /// Parameters:
  /// - [prefix]: The prefix to match
  /// - [caseSensitive]: Whether matching should be case sensitive
  ///
  /// Example:
  /// ```dart
  /// Filters.startsWith('/') // matches any text starting with '/'
  /// Filters.startsWith('Hello', caseSensitive: false) // matches "Hello world", "hello there"
  /// ```
  static StartsWithFilter startsWith(String prefix,
      {bool caseSensitive = true}) {
    return StartsWithFilter(prefix, caseSensitive: caseSensitive);
  }

  /// Creates a filter that matches text containing a substring.
  ///
  /// Parameters:
  /// - [substring]: The substring to match
  /// - [caseSensitive]: Whether matching should be case sensitive
  ///
  /// Example:
  /// ```dart
  /// Filters.contains('hello') // matches "say hello", "hello world", "well hello there"
  /// ```
  static ContainsFilter contains(String substring,
      {bool caseSensitive = true}) {
    return ContainsFilter(substring, caseSensitive: caseSensitive);
  }

  /// Creates a filter that matches text using a regular expression.
  ///
  /// Parameters:
  /// - [pattern]: The regex pattern as a string
  /// - [caseSensitive]: Whether matching should be case sensitive
  /// - [multiLine]: Whether . matches newlines
  /// - [dotAll]: Whether ^ and $ match line boundaries
  ///
  /// Example:
  /// ```dart
  /// Filters.regex(r'\d+') // matches any text containing numbers
  /// Filters.regex(r'^/\w+', caseSensitive: false) // matches commands
  /// ```
  static RegexFilter regex(
    String pattern, {
    bool caseSensitive = true,
    bool multiLine = false,
    bool dotAll = false,
  }) {
    return RegexFilter.fromString(
      pattern,
      caseSensitive: caseSensitive,
      multiLine: multiLine,
      dotAll: dotAll,
    );
  }

  /// Creates a filter that matches text using a compiled RegExp.
  ///
  /// Parameters:
  /// - [pattern]: The compiled RegExp pattern
  ///
  /// Example:
  /// ```dart
  /// final pattern = RegExp(r'\b\w+@\w+\.\w+\b'); // email pattern
  /// Filters.regexPattern(pattern) // matches emails
  /// ```
  static RegexFilter regexPattern(RegExp pattern) {
    return RegexFilter(pattern);
  }

  // ===============================
  // Callback Query Factory Methods
  // ===============================

  /// Creates a filter that matches callback queries with specific data.
  ///
  /// Parameters:
  /// - [data]: The callback data to match
  ///
  /// Example:
  /// ```dart
  /// Filters.callbackData('button_clicked')
  /// ```
  static CallbackQueryFilter callbackData(String data) {
    return CallbackQueryFilter(data: data);
  }

  // ===============================
  // Inline Query Factory Methods
  // ===============================

  /// Creates a filter that matches inline queries with specific text.
  ///
  /// Parameters:
  /// - [query]: The query text to match
  ///
  /// Example:
  /// ```dart
  /// Filters.inlineQueryText('search')
  /// ```
  static InlineQueryFilter inlineQueryText(String query) {
    return InlineQueryFilter(query: query);
  }

  // ===============================
  // Custom Filter Factory Methods
  // ===============================

  /// Creates a filter based on a custom predicate function.
  ///
  /// This is useful for creating complex custom filters that don't fit
  /// into the standard categories.
  ///
  /// Parameters:
  /// - [predicate]: A function that takes a context and returns whether it matches
  /// - [name]: Optional name for debugging purposes
  ///
  /// Example:
  /// ```dart
  /// // Filter for messages longer than 100 characters
  /// Filters.predicate(
  ///   (ctx) => (ctx.text?.length ?? 0) > 100,
  ///   name: 'long-message',
  /// )
  ///
  /// // Filter for weekend messages
  /// Filters.predicate(
  ///   (ctx) {
  ///     final weekday = DateTime.now().weekday;
  ///     return weekday == DateTime.saturday || weekday == DateTime.sunday;
  ///   },
  ///   name: 'weekend-only',
  /// )
  /// ```
  static PredicateFilter<CTX> predicate<CTX extends Context>(
    bool Function(CTX ctx) predicate, {
    String? name,
  }) {
    return PredicateFilter<CTX>(predicate, name: name);
  }

  // ===============================
  // Commonly Used Combined Filters
  // ===============================

  /// Creates a filter that matches commands in private chats only.
  ///
  /// Parameters:
  /// - [cmd]: The command name (without leading slash)
  ///
  /// Example:
  /// ```dart
  /// Filters.privateCommand('admin') // matches /admin only in private chats
  /// ```
  static Filter<CTX> privateCommand<CTX extends Context>(String cmd) {
    return CommandFilter<CTX>(cmd).and(const PrivateChatFilter());
  }

  /// Creates a filter that matches commands in group chats only.
  ///
  /// Parameters:
  /// - [cmd]: The command name (without leading slash)
  ///
  /// Example:
  /// ```dart
  /// Filters.groupCommand('stats') // matches /stats only in groups
  /// ```
  static Filter<CTX> groupCommand<CTX extends Context>(String cmd) {
    return CommandFilter<CTX>(cmd).and(const GroupChatFilter());
  }

  /// Creates a filter that matches text from specific users.
  ///
  /// Parameters:
  /// - [userId]: The user ID to match
  ///
  /// Example:
  /// ```dart
  /// Filters.textFromUser(123456) // matches text messages from user 123456
  /// ```
  static Filter<CTX> textFromUser<CTX extends Context>(int userId) {
    return TextMessageFilter<CTX>().and(UserFilter<CTX>.single(userId));
  }

  /// Creates a filter that matches media from human users (not bots).
  ///
  /// Example:
  /// ```dart
  /// Filters.humanMedia<Context>() // matches any media sent by human users
  /// ```
  static Filter<CTX> humanMedia<CTX extends Context>() {
    return MediaFilter<CTX>().and(HumanUserFilter<CTX>());
  }

  /// Creates a filter that matches forwarded text messages.
  ///
  /// Example:
  /// ```dart
  /// Filters.forwardedText<Context>() // matches forwarded messages with text
  /// ```
  static Filter<CTX> forwardedText<CTX extends Context>() {
    return ForwardedFilter<CTX>().and(TextMessageFilter<CTX>());
  }

  /// Creates a filter that matches any media in private chats.
  ///
  /// Example:
  /// ```dart
  /// Filters.privateMedia<Context>() // matches media in private chats only
  /// ```
  static Filter<CTX> privateMedia<CTX extends Context>() {
    return MediaFilter<CTX>().and(PrivateChatFilter<CTX>());
  }

  /// Creates a filter that matches any media in group chats.
  ///
  /// Example:
  /// ```dart
  /// Filters.groupMedia<Context>() // matches media in group chats only
  /// ```
  static Filter<CTX> groupMedia<CTX extends Context>() {
    return MediaFilter<CTX>().and(GroupChatFilter<CTX>());
  }

  /// Creates a filter that matches commands from human users (not bots).
  ///
  /// Parameters:
  /// - [cmd]: The command name (without leading slash)
  ///
  /// Example:
  /// ```dart
  /// Filters.humanCommand<Context>('start') // matches /start from humans only
  /// ```
  static Filter<CTX> humanCommand<CTX extends Context>(String cmd) {
    return CommandFilter<CTX>(cmd).and(HumanUserFilter<CTX>());
  }

  /// Creates a filter that matches text messages in private chats.
  ///
  /// Example:
  /// ```dart
  /// Filters.privateText<Context>() // matches text in private chats only
  /// ```
  static Filter<CTX> privateText<CTX extends Context>() {
    return TextMessageFilter<CTX>().and(PrivateChatFilter<CTX>());
  }

  /// Creates a filter that matches text messages in group chats.
  ///
  /// Example:
  /// ```dart
  /// Filters.groupText<Context>() // matches text in group chats only
  /// ```
  static Filter<CTX> groupText<CTX extends Context>() {
    return TextMessageFilter<CTX>().and(GroupChatFilter<CTX>());
  }
}
