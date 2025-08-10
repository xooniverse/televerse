// File: lib/src/filters/filters.dart

part of '../../televerse.dart';

/// Context-aware filters factory that provides properly typed filters.
///
/// This class is instantiated with a specific context type and provides
/// filter instances that are correctly typed for that context. This eliminates
/// the need to specify generic types when using filters.
///
/// Example:
/// ```dart
/// final bot = Bot<MyContext>('token');
///
/// // Use bot.filters for type-safe filter access
/// bot.on(bot.filters.cmd('start'), startHandler);
/// bot.on(bot.filters.privateChat, privateHandler);
/// bot.on(bot.filters.photo, photoHandler);
///
/// // Combining filters
/// bot.on(
///   bot.filters.command('admin').and(bot.filters.privateChat),
///   adminHandler,
/// );
/// ```
class Filters<CTX extends Context> {
  /// Creates a new filters factory for the specified context type.
  const Filters();

  // ===============================
  // Update Type Filters
  // ===============================

  /// Filter that matches regular messages (not edited).
  MessageFilter<CTX> get message => MessageFilter<CTX>();

  /// Filter that matches edited messages.
  EditedMessageFilter<CTX> get editedMessage => EditedMessageFilter<CTX>();

  /// Filter that matches any message (regular or edited).
  AnyMessageFilter<CTX> get anyMessage => AnyMessageFilter<CTX>();

  /// Filter that matches channel posts.
  ChannelPostFilter<CTX> get channelPost => ChannelPostFilter<CTX>();

  /// Filter that matches edited channel posts.
  EditedChannelPostFilter<CTX> get editedChannelPost =>
      EditedChannelPostFilter<CTX>();

  /// Filter that matches any callback query.
  CallbackQueryFilter<CTX> get callbackQuery => CallbackQueryFilter<CTX>();

  /// Filter that matches any inline query.
  InlineQueryFilter<CTX> get inlineQuery => InlineQueryFilter<CTX>();

  // ===============================
  // Text Content Filters
  // ===============================

  /// Filter that matches messages with text content.
  TextMessageFilter<CTX> get text => TextMessageFilter<CTX>();

  /// Filter that matches messages with caption content.
  CaptionMessageFilter<CTX> get caption => CaptionMessageFilter<CTX>();

  /// Filter that matches any text content (text or caption).
  AnyTextFilter<CTX> get anyText => AnyTextFilter<CTX>();

  // ===============================
  // Command Filters
  // ===============================

  /// Filter that matches any bot command.
  AnyCommandFilter<CTX> get command => AnyCommandFilter<CTX>();

  /// Creates a filter that matches a specific command.
  ///
  /// Parameters:
  /// - [cmd]: The command name (without leading slash)
  /// - [caseSensitive]: Whether matching should be case sensitive
  ///
  /// Example:
  /// ```dart
  /// bot.filters.cmd('start') // matches /start
  /// bot.filters.cmd('Help', caseSensitive: true) // matches /Help exactly
  /// ```
  CommandFilter<CTX> cmd(String cmd, {bool caseSensitive = false}) {
    return CommandFilter<CTX>(cmd, caseSensitive: caseSensitive);
  }

  // ===============================
  // Chat Type Filters
  // ===============================

  /// Filter that matches private chats.
  PrivateChatFilter<CTX> get privateChat => PrivateChatFilter<CTX>();

  /// Filter that matches group chats (including supergroups).
  GroupChatFilter<CTX> get groupChat => GroupChatFilter<CTX>();

  /// Filter that matches channel posts.
  ChannelFilter<CTX> get channel => ChannelFilter<CTX>();

  /// Creates a filter that matches a specific chat type.
  ///
  /// Example:
  /// ```dart
  /// bot.filters.chatType(ChatType.supergroup)
  /// ```
  ChatTypeFilter<CTX> chatType(ChatType type) {
    return ChatTypeFilter<CTX>.single(type);
  }

  /// Creates a filter that matches multiple chat types.
  ///
  /// Example:
  /// ```dart
  /// bot.filters.chatTypes({ChatType.group, ChatType.supergroup})
  /// ```
  ChatTypeFilter<CTX> chatTypes(Set<ChatType> types) {
    return ChatTypeFilter<CTX>(types);
  }

  // ===============================
  // User Filters
  // ===============================

  /// Filter that matches messages from bot users.
  BotUserFilter<CTX> get bot => BotUserFilter<CTX>();

  /// Filter that matches messages from human users (non-bots).
  HumanUserFilter<CTX> get human => HumanUserFilter<CTX>();

  /// Creates a filter that matches a specific user.
  ///
  /// Parameters:
  /// - [userId]: The user ID to match
  ///
  /// Example:
  /// ```dart
  /// bot.filters.user(123456789)
  /// ```
  UserFilter<CTX> user(int userId) {
    return UserFilter<CTX>.single(userId);
  }

  /// Creates a filter that matches multiple users.
  ///
  /// Parameters:
  /// - [userIds]: The set of user IDs to match
  ///
  /// Example:
  /// ```dart
  /// bot.filters.users({123456, 789012, 345678})
  /// ```
  UserFilter<CTX> users(Set<int> userIds) {
    return UserFilter<CTX>(userIds);
  }

  // ===============================
  // Media Type Filters
  // ===============================

  /// Filter that matches messages with photos.
  PhotoFilter<CTX> get photo => PhotoFilter<CTX>();

  /// Filter that matches messages with videos.
  VideoFilter<CTX> get video => VideoFilter<CTX>();

  /// Filter that matches messages with documents.
  DocumentFilter<CTX> get document => DocumentFilter<CTX>();

  /// Filter that matches messages with audio files.
  AudioFilter<CTX> get audio => AudioFilter<CTX>();

  /// Filter that matches messages with voice notes.
  VoiceFilter<CTX> get voice => VoiceFilter<CTX>();

  /// Filter that matches messages with video notes.
  VideoNoteFilter<CTX> get videoNote => VideoNoteFilter<CTX>();

  /// Filter that matches messages with stickers.
  StickerFilter<CTX> get sticker => StickerFilter<CTX>();

  /// Filter that matches messages with location data.
  LocationFilter<CTX> get location => LocationFilter<CTX>();

  /// Filter that matches messages with contact information.
  ContactFilter<CTX> get contact => ContactFilter<CTX>();

  /// Filter that matches messages with any media type.
  MediaFilter<CTX> get media => MediaFilter<CTX>();

  // ===============================
  // Entity Filters
  // ===============================

  /// Filter that matches messages with URLs.
  UrlFilter<CTX> get url => UrlFilter<CTX>();

  /// Filter that matches messages with mentions.
  MentionFilter<CTX> get mention => MentionFilter<CTX>();

  /// Filter that matches messages with any hashtag.
  HashtagFilter<CTX> get hashtag => HashtagFilter<CTX>();

  /// Creates a filter that matches a specific hashtag.
  ///
  /// Parameters:
  /// - [tag]: The hashtag to match (without the # symbol)
  ///
  /// Example:
  /// ```dart
  /// bot.filters.tag('programming') // matches #programming
  /// ```
  HashtagFilter<CTX> tag(String tag) {
    return HashtagFilter<CTX>(hashtag: tag);
  }

  /// Creates a filter that matches specific entity types.
  ///
  /// Parameters:
  /// - [type]: The entity type to match
  ///
  /// Example:
  /// ```dart
  /// bot.filters.entity(MessageEntityType.bold)
  /// ```
  EntityFilter<CTX> entity(MessageEntityType type) {
    return EntityFilter<CTX>.single(type);
  }

  /// Creates a filter that matches multiple entity types.
  ///
  /// Parameters:
  /// - [types]: The set of entity types to match
  ///
  /// Example:
  /// ```dart
  /// bot.filters.entities({MessageEntityType.bold, MessageEntityType.italic})
  /// ```
  EntityFilter<CTX> entities(Set<MessageEntityType> types) {
    return EntityFilter<CTX>(types);
  }

  // ===============================
  // Content Filters
  // ===============================

  /// Filter that matches forwarded messages.
  ForwardedFilter<CTX> get forwarded => ForwardedFilter<CTX>();

  /// Filter that matches reply messages.
  ReplyFilter<CTX> get reply => ReplyFilter<CTX>();

  /// Filter that matches pinned messages.
  PinnedMessageFilter<CTX> get pinned => PinnedMessageFilter<CTX>();

  // ===============================
  // Utility Filters
  // ===============================

  /// Filter that always matches (useful for debugging).
  AlwaysFilter<CTX> get always => AlwaysFilter<CTX>();

  /// Filter that never matches (useful for temporarily disabling handlers).
  NeverFilter<CTX> get never => NeverFilter<CTX>();

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
  /// bot.filters.textEquals('hello') // matches "hello" exactly
  /// bot.filters.textEquals('Hello', caseSensitive: false) // matches "hello", "Hello", "HELLO"
  /// ```
  TextFilter<CTX> textEquals(String text, {bool caseSensitive = true}) {
    return TextFilter<CTX>(text: text, caseSensitive: caseSensitive);
  }

  /// Creates a filter that matches text starting with a prefix.
  ///
  /// Parameters:
  /// - [prefix]: The prefix to match
  /// - [caseSensitive]: Whether matching should be case sensitive
  ///
  /// Example:
  /// ```dart
  /// bot.filters.startsWith('/') // matches any text starting with '/'
  /// bot.filters.startsWith('Hello', caseSensitive: false) // matches "Hello world", "hello there"
  /// ```
  StartsWithFilter<CTX> startsWith(String prefix, {bool caseSensitive = true}) {
    return StartsWithFilter<CTX>(prefix, caseSensitive: caseSensitive);
  }

  /// Creates a filter that matches text containing a substring.
  ///
  /// Parameters:
  /// - [substring]: The substring to match
  /// - [caseSensitive]: Whether matching should be case sensitive
  ///
  /// Example:
  /// ```dart
  /// bot.filters.contains('hello') // matches "say hello", "hello world", "well hello there"
  /// ```
  ContainsFilter<CTX> contains(String substring, {bool caseSensitive = true}) {
    return ContainsFilter<CTX>(substring, caseSensitive: caseSensitive);
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
  /// bot.filters.regex(r'\d+') // matches any text containing numbers
  /// bot.filters.regex(r'^/\w+', caseSensitive: false) // matches commands
  /// ```
  RegexFilter<CTX> regex(
    String pattern, {
    bool caseSensitive = true,
    bool multiLine = false,
    bool dotAll = false,
  }) {
    return RegexFilter<CTX>.fromString(
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
  /// bot.filters.regexPattern(pattern) // matches emails
  /// ```
  RegexFilter<CTX> regexPattern(RegExp pattern) {
    return RegexFilter<CTX>(pattern);
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
  /// bot.filters.callbackData('button_clicked')
  /// ```
  CallbackQueryFilter<CTX> callbackData(String data) {
    return CallbackQueryFilter<CTX>(data: data);
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
  /// bot.filters.inlineQueryText('search')
  /// ```
  InlineQueryFilter<CTX> inlineQueryText(String query) {
    return InlineQueryFilter<CTX>(query: query);
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
  /// bot.filters.predicate(
  ///   (ctx) => (ctx.text?.length ?? 0) > 100,
  ///   name: 'long-message',
  /// )
  ///
  /// // Filter for weekend messages
  /// bot.filters.predicate(
  ///   (ctx) {
  ///     final weekday = DateTime.now().weekday;
  ///     return weekday == DateTime.saturday || weekday == DateTime.sunday;
  ///   },
  ///   name: 'weekend-only',
  /// )
  /// ```
  PredicateFilter<CTX> predicate(
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
  /// bot.filters.privateCommand('admin') // matches /admin only in private chats
  /// ```
  Filter<CTX> privateCommand(String cmd) {
    return CommandFilter<CTX>(cmd).and(PrivateChatFilter<CTX>());
  }

  /// Creates a filter that matches commands in group chats only.
  ///
  /// Parameters:
  /// - [cmd]: The command name (without leading slash)
  ///
  /// Example:
  /// ```dart
  /// bot.filters.groupCommand('stats') // matches /stats only in groups
  /// ```
  Filter<CTX> groupCommand(String cmd) {
    return CommandFilter<CTX>(cmd).and(GroupChatFilter<CTX>());
  }

  /// Creates a filter that matches text from specific users.
  ///
  /// Parameters:
  /// - [userId]: The user ID to match
  ///
  /// Example:
  /// ```dart
  /// bot.filters.textFromUser(123456) // matches text messages from user 123456
  /// ```
  Filter<CTX> textFromUser(int userId) {
    return TextMessageFilter<CTX>().and(UserFilter<CTX>.single(userId));
  }

  /// Creates a filter that matches media from human users (not bots).
  ///
  /// Example:
  /// ```dart
  /// bot.filters.humanMedia // matches any media sent by human users
  /// ```
  Filter<CTX> get humanMedia {
    return MediaFilter<CTX>().and(HumanUserFilter<CTX>());
  }

  /// Creates a filter that matches forwarded text messages.
  ///
  /// Example:
  /// ```dart
  /// bot.filters.forwardedText // matches forwarded messages with text
  /// ```
  Filter<CTX> get forwardedText {
    return ForwardedFilter<CTX>().and(TextMessageFilter<CTX>());
  }

  /// Creates a filter that matches any media in private chats.
  ///
  /// Example:
  /// ```dart
  /// bot.filters.privateMedia // matches media in private chats only
  /// ```
  Filter<CTX> get privateMedia {
    return MediaFilter<CTX>().and(PrivateChatFilter<CTX>());
  }

  /// Creates a filter that matches any media in group chats.
  ///
  /// Example:
  /// ```dart
  /// bot.filters.groupMedia // matches media in group chats only
  /// ```
  Filter<CTX> get groupMedia {
    return MediaFilter<CTX>().and(GroupChatFilter<CTX>());
  }

  /// Creates a filter that matches commands from human users (not bots).
  ///
  /// Parameters:
  /// - [cmd]: The command name (without leading slash)
  ///
  /// Example:
  /// ```dart
  /// bot.filters.humanCommand('start') // matches /start from humans only
  /// ```
  Filter<CTX> humanCommand(String cmd) {
    return CommandFilter<CTX>(cmd).and(HumanUserFilter<CTX>());
  }

  /// Creates a filter that matches text messages in private chats.
  ///
  /// Example:
  /// ```dart
  /// bot.filters.privateText // matches text in private chats only
  /// ```
  Filter<CTX> get privateText {
    return TextMessageFilter<CTX>().and(PrivateChatFilter<CTX>());
  }

  /// Creates a filter that matches text messages in group chats.
  ///
  /// Example:
  /// ```dart
  /// bot.filters.groupText // matches text in group chats only
  /// ```
  Filter<CTX> get groupText {
    return TextMessageFilter<CTX>().and(GroupChatFilter<CTX>());
  }

  // ===============================
  // Additional Update Type Filters
  // ===============================

  /// Filter that matches chosen inline results.
  ChosenInlineResultFilter<CTX> get chosenInlineResult =>
      ChosenInlineResultFilter<CTX>();

  /// Filter that matches shipping queries.
  ShippingQueryFilter<CTX> get shippingQuery => ShippingQueryFilter<CTX>();

  /// Filter that matches pre-checkout queries.
  PreCheckoutQueryFilter<CTX> get preCheckoutQuery =>
      PreCheckoutQueryFilter<CTX>();

  /// Filter that matches poll updates.
  PollFilter<CTX> get poll => PollFilter<CTX>();

  /// Filter that matches poll answer updates.
  PollAnswerFilter<CTX> get pollAnswer => PollAnswerFilter<CTX>();

  /// Filter that matches chat member updates.
  ChatMemberFilter<CTX> get chatMember => ChatMemberFilter<CTX>();

  /// Filter that matches bot's chat member updates.
  MyChatMemberFilter<CTX> get myChatMember => MyChatMemberFilter<CTX>();

  /// Filter that matches chat join request updates.
  ChatJoinRequestFilter<CTX> get chatJoinRequest =>
      ChatJoinRequestFilter<CTX>();

  /// Filter that matches message reaction updates.
  MessageReactionFilter<CTX> get messageReaction =>
      MessageReactionFilter<CTX>();

  /// Filter that matches message reaction count updates.
  MessageReactionCountFilter<CTX> get messageReactionCount =>
      MessageReactionCountFilter<CTX>();

  /// Filter that matches chat boost updates.
  ChatBoostFilter<CTX> get chatBoost => ChatBoostFilter<CTX>();

  /// Filter that matches removed chat boost updates.
  RemovedChatBoostFilter<CTX> get removedChatBoost =>
      RemovedChatBoostFilter<CTX>();

  /// Filter that matches business connection updates.
  BusinessConnectionFilter<CTX> get businessConnection =>
      BusinessConnectionFilter<CTX>();

  /// Filter that matches business message updates.
  BusinessMessageFilter<CTX> get businessMessage =>
      BusinessMessageFilter<CTX>();

  /// Filter that matches edited business message updates.
  EditedBusinessMessageFilter<CTX> get editedBusinessMessage =>
      EditedBusinessMessageFilter<CTX>();

  /// Filter that matches deleted business message updates.
  DeletedBusinessMessagesFilter<CTX> get deletedBusinessMessages =>
      DeletedBusinessMessagesFilter<CTX>();

  // ===============================
  // Additional Media Type Filters
  // ===============================

  /// Filter that matches messages with animations/GIFs.
  AnimationFilter<CTX> get animation => AnimationFilter<CTX>();

  /// Filter that matches messages with games.
  GameFilter<CTX> get game => GameFilter<CTX>();

  /// Filter that matches messages with venue information.
  VenueFilter<CTX> get venue => VenueFilter<CTX>();

  /// Filter that matches messages with dice.
  DiceFilter<CTX> get dice => DiceFilter<CTX>();

  /// Filter that matches messages with polls.
  PollMessageFilter<CTX> get pollMessage => PollMessageFilter<CTX>();

  /// Filter that matches messages with successful payments.
  SuccessfulPaymentFilter<CTX> get successfulPayment =>
      SuccessfulPaymentFilter<CTX>();

  /// Filter that matches messages with web app data.
  WebAppDataFilter<CTX> get webAppData => WebAppDataFilter<CTX>();

  /// Filter that matches messages with paid media.
  PaidMediaFilter<CTX> get paidMedia => PaidMediaFilter<CTX>();

  /// Filter that matches messages with user shared information.
  UsersSharedFilter<CTX> get usersShared => UsersSharedFilter<CTX>();

  /// Filter that matches messages with chat shared information.
  ChatSharedFilter<CTX> get chatShared => ChatSharedFilter<CTX>();

  /// Filter that matches messages with live location.
  LiveLocationFilter<CTX> get liveLocation => LiveLocationFilter<CTX>();

  // ===============================
  // Service Message Filters
  // ===============================

  /// Filter that matches new chat title service messages.
  NewChatTitleFilter<CTX> get newChatTitle => NewChatTitleFilter<CTX>();

  /// Filter that matches new chat photo service messages.
  NewChatPhotoFilter<CTX> get newChatPhoto => NewChatPhotoFilter<CTX>();

  /// Filter that matches delete chat photo service messages.
  DeleteChatPhotoFilter<CTX> get deleteChatPhoto =>
      DeleteChatPhotoFilter<CTX>();

  /// Filter that matches video chat scheduled service messages.
  VideoChatScheduledFilter<CTX> get videoChatScheduled =>
      VideoChatScheduledFilter<CTX>();

  /// Filter that matches video chat started service messages.
  VideoChatStartedFilter<CTX> get videoChatStarted =>
      VideoChatStartedFilter<CTX>();

  /// Filter that matches video chat ended service messages.
  VideoChatEndedFilter<CTX> get videoChatEnded => VideoChatEndedFilter<CTX>();

  /// Filter that matches video chat participants invited service messages.
  VideoChatParticipantsInvitedFilter<CTX> get videoChatParticipantsInvited =>
      VideoChatParticipantsInvitedFilter<CTX>();

  /// Filter that matches forum topic created service messages.
  ForumTopicCreatedFilter<CTX> get forumTopicCreated =>
      ForumTopicCreatedFilter<CTX>();

  /// Filter that matches forum topic edited service messages.
  ForumTopicEditedFilter<CTX> get forumTopicEdited =>
      ForumTopicEditedFilter<CTX>();

  /// Filter that matches forum topic closed service messages.
  ForumTopicClosedFilter<CTX> get forumTopicClosed =>
      ForumTopicClosedFilter<CTX>();

  /// Filter that matches forum topic reopened service messages.
  ForumTopicReopenedFilter<CTX> get forumTopicReopened =>
      ForumTopicReopenedFilter<CTX>();

  // ===============================
  // Paid Media Factory Methods
  // ===============================

  /// Filter that matches paid media purchase updates.
  PurchasedPaidMediaFilter<CTX> get paidMediaPurchased =>
      PurchasedPaidMediaFilter<CTX>();

  /// Filter that matches paid media with videos.
  PaidMediaVideoFilter<CTX> get paidMediaVideo => PaidMediaVideoFilter<CTX>();

  /// Filter that matches paid media with photos.
  PaidMediaPhotoFilter<CTX> get paidMediaPhoto => PaidMediaPhotoFilter<CTX>();

  // ===============================
  // Reaction Factory Methods
  // ===============================

  /// Creates a filter that matches specific emoji reactions.
  ///
  /// Parameters:
  /// - [emoji]: The emoji to match (e.g., '👍', '❤️')
  ///
  /// Example:
  /// ```dart
  /// bot.filters.reaction('👍') // matches thumbs up reactions
  /// bot.filters.reaction('❤️') // matches heart reactions
  /// ```
  EmojiReactionFilter<CTX> reaction(String emoji) {
    return EmojiReactionFilter<CTX>(emoji);
  }

  // ===============================
  // Enhanced Entity Factory Methods
  // ===============================

  /// Filter that matches messages with email entities.
  ///
  /// Example:
  /// ```dart
  /// bot.filters.email // matches messages containing email addresses
  /// ```
  EntityFilter<CTX> get email {
    return EntityFilter<CTX>.single(MessageEntityType.email);
  }

  /// Filter that matches messages with phone number entities.
  ///
  /// Example:
  /// ```dart
  /// bot.filters.phoneNumber // matches messages containing phone numbers
  /// ```
  EntityFilter<CTX> get phoneNumber {
    return EntityFilter<CTX>.single(MessageEntityType.phoneNumber);
  }

  /// Filter that matches messages with bold text entities.
  ///
  /// Example:
  /// ```dart
  /// bot.filters.bold // matches messages with bold formatting
  /// ```
  EntityFilter<CTX> get bold {
    return EntityFilter<CTX>.single(MessageEntityType.bold);
  }

  /// Filter that matches messages with italic text entities.
  ///
  /// Example:
  /// ```dart
  /// bot.filters.italic // matches messages with italic formatting
  /// ```
  EntityFilter<CTX> get italic {
    return EntityFilter<CTX>.single(MessageEntityType.italic);
  }

  /// Filter that matches messages with code entities.
  ///
  /// Example:
  /// ```dart
  /// bot.filters.code // matches messages with inline code
  /// ```
  EntityFilter<CTX> get code {
    return EntityFilter<CTX>.single(MessageEntityType.code);
  }

  /// Filter that matches messages with pre (code block) entities.
  ///
  /// Example:
  /// ```dart
  /// bot.filters.pre // matches messages with code blocks
  /// ```
  EntityFilter<CTX> get pre {
    return EntityFilter<CTX>.single(MessageEntityType.pre);
  }

  // ===============================
  // Advanced Combined Filters
  // ===============================

  /// Filter that matches any service message.
  ///
  /// This includes new chat title, new chat photo, delete chat photo,
  /// pinned message, and video chat service messages.
  ///
  /// Example:
  /// ```dart
  /// bot.filters.serviceMessage // matches any service message
  /// ```
  Filter<CTX> get serviceMessage {
    return newChatTitle
        .or(newChatPhoto)
        .or(deleteChatPhoto)
        .or(pinned)
        .or(videoChatScheduled)
        .or(videoChatStarted)
        .or(videoChatEnded)
        .or(videoChatParticipantsInvited);
  }

  /// Filter that matches any video chat related service message.
  ///
  /// Example:
  /// ```dart
  /// bot.filters.videoChatService // matches any video chat service message
  /// ```
  Filter<CTX> get videoChatService {
    return videoChatScheduled
        .or(videoChatStarted)
        .or(videoChatEnded)
        .or(videoChatParticipantsInvited);
  }

  /// Filter that matches any forum topic related service message.
  ///
  /// Example:
  /// ```dart
  /// bot.filters.forumTopicService // matches any forum topic service message
  /// ```
  Filter<CTX> get forumTopicService {
    return forumTopicCreated
        .or(forumTopicEdited)
        .or(forumTopicClosed)
        .or(forumTopicReopened);
  }

  /// Filter that matches any business update.
  ///
  /// Example:
  /// ```dart
  /// bot.filters.businessUpdate // matches any business-related update
  /// ```
  Filter<CTX> get businessUpdate {
    return businessConnection
        .or(businessMessage)
        .or(editedBusinessMessage)
        .or(deletedBusinessMessages);
  }

  /// Filter that matches any payment related update.
  ///
  /// Example:
  /// ```dart
  /// bot.filters.paymentUpdate // matches any payment-related update
  /// ```
  Filter<CTX> get paymentUpdate {
    return shippingQuery.or(preCheckoutQuery).or(successfulPayment);
  }

  /// Filter that matches any reaction update.
  ///
  /// Example:
  /// ```dart
  /// bot.filters.reactionUpdate // matches any reaction update
  /// ```
  Filter<CTX> get reactionUpdate {
    return messageReaction.or(messageReactionCount);
  }

  /// Filter that matches any chat boost related update.
  ///
  /// Example:
  /// ```dart
  /// bot.filters.boostUpdate // matches any boost-related update
  /// ```
  Filter<CTX> get boostUpdate {
    return chatBoost.or(removedChatBoost);
  }

  /// Filter that matches any paid media related update.
  ///
  /// Example:
  /// ```dart
  /// bot.filters.paidMediaUpdate // matches any paid media update
  /// ```
  Filter<CTX> get paidMediaUpdate {
    return paidMedia
        .or(paidMediaVideo)
        .or(paidMediaPhoto)
        .or(paidMediaPurchased);
  }
}
