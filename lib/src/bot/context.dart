// File: lib/src/bot/context.dart

import 'dart:async';
import 'package:televerse/src/core/raw_api.dart';
import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart';

/// Bot information for context
class BotInfo {
  /// Bot's user information
  final User? me;

  /// Bot's username
  final String? username;

  /// Bot's ID
  final int? id;

  /// Creates a new [BotInfo] instance.
  const BotInfo({
    this.me,
    this.username,
    this.id,
  });

  /// Creates BotInfo from User object
  factory BotInfo.fromUser(User user) {
    return BotInfo(
      me: user,
      username: user.username,
      id: user.id,
    );
  }
}

/// The context object that is passed to all middleware and handlers.
///
/// The [Context] class provides convenient access to the current update
/// and offers shortcuts for common bot operations like replying to messages,
/// answering callback queries, and more.
///
/// You can extend this class to create custom context types with additional
/// properties and methods specific to your bot's needs.
///
/// Example:
/// ```dart
/// class MyContext extends Context {
///   MyContext(super.update, super.api, super.me);
///
///   String get userName => from?.firstName ?? 'Unknown';
///   bool get isPrivateChat => chat?.type == ChatType.private;
/// }
/// ```
class Context {
  /// The current update being processed.
  final Update update;

  /// The RawAPI instance for making Telegram Bot API calls.
  final RawAPI api;

  /// Information about the bot.
  final BotInfo me;

  /// Internal property storage for middleware and plugins.
  final Map<String, dynamic> _properties = <String, dynamic>{};

  // Cached values for performance optimization
  Message? _cachedMsg;
  User? _cachedFrom;
  Chat? _cachedChat;
  String? _cachedText;
  String? _cachedCaption;
  List<MessageEntity>? _cachedEntities;
  List<MessageEntity>? _cachedCaptionEntities;
  ID? _cachedChatId;
  bool? _cachedHasCommand;
  String? _cachedCommand;
  List<String>? _cachedArgs;
  String? _cachedArgsString;
  bool? _cachedIsPrivateChat;
  bool? _cachedIsGroupChat;
  bool? _cachedIsChannelPost;

  // Cache validity flags to know if we need to recompute
  bool _msgCached = false;
  bool _fromCached = false;
  bool _chatCached = false;
  bool _textCached = false;
  bool _captionCached = false;
  bool _entitiesCached = false;
  bool _captionEntitiesCached = false;
  bool _chatIdCached = false;
  bool _hasCommandCached = false;
  bool _commandCached = false;
  bool _argsCached = false;
  bool _argsStringCached = false;
  bool _isPrivateChatCached = false;
  bool _isGroupChatCached = false;
  bool _isChannelPostCached = false;

  /// Creates a new [Context] instance.
  ///
  /// Parameters:
  /// - [update]: The update being processed
  /// - [api]: The RawAPI instance for making API calls
  /// - [me]: Information about the bot
  Context(this.update, this.api, this.me);

  // ===============================
  // Update Property Getters (Direct - No Caching Needed)
  // ===============================

  /// The message from the update, if any.
  ///
  /// This will be non-null for text messages, photos, documents, etc.
  Message? get message => update.message;

  /// The edited message from the update, if any.
  ///
  /// This will be non-null when a user edits a message.
  Message? get editedMessage => update.editedMessage;

  /// The channel post from the update, if any.
  ///
  /// This will be non-null for messages posted in channels.
  Message? get channelPost => update.channelPost;

  /// The edited channel post from the update, if any.
  ///
  /// This will be non-null when a channel post is edited.
  Message? get editedChannelPost => update.editedChannelPost;

  /// The inline query from the update, if any.
  ///
  /// This will be non-null when a user sends an inline query.
  InlineQuery? get inlineQuery => update.inlineQuery;

  /// The chosen inline result from the update, if any.
  ///
  /// This will be non-null when a user selects an inline query result.
  ChosenInlineResult? get chosenInlineResult => update.chosenInlineResult;

  /// The callback query from the update, if any.
  ///
  /// This will be non-null when a user presses an inline keyboard button.
  CallbackQuery? get callbackQuery => update.callbackQuery;

  /// The shipping query from the update, if any.
  ///
  /// This will be non-null for shipping queries in payments.
  ShippingQuery? get shippingQuery => update.shippingQuery;

  /// The pre-checkout query from the update, if any.
  ///
  /// This will be non-null for pre-checkout queries in payments.
  PreCheckoutQuery? get preCheckoutQuery => update.preCheckoutQuery;

  /// The business message from the update, if any.
  ///
  /// This will be non-null for messages sent via business connection.
  Message? get businessMessage => update.businessMessage;

  /// The edited business message from the update, if any.
  ///
  /// This will be non-null when a business message is edited.
  Message? get editedBusinessMessage => update.editedBusinessMessage;

  /// The message reaction from the update, if any.
  ///
  /// This will be non-null when a user adds or removes a reaction.
  MessageReactionUpdated? get messageReaction => update.messageReaction;

  /// The message reaction count from the update, if any.
  ///
  /// This will be non-null when reaction counts change on a message.
  MessageReactionCountUpdated? get messageReactionCount =>
      update.messageReactionCount;

  /// The chat member update from the update, if any.
  ///
  /// This will be non-null when a chat member's status changes.
  ChatMemberUpdated? get chatMember => update.chatMember;

  /// The my chat member update from the update, if any.
  ///
  /// This will be non-null when the bot's status in a chat changes.
  ChatMemberUpdated? get myChatMember => update.myChatMember;

  /// The chat join request from the update, if any.
  ///
  /// This will be non-null when someone requests to join a chat.
  ChatJoinRequest? get chatJoinRequest => update.chatJoinRequest;

  /// The chat boost from the update, if any.
  ///
  /// This will be non-null when a chat is boosted.
  ChatBoostUpdated? get chatBoost => update.chatBoost;

  /// The removed chat boost from the update, if any.
  ///
  /// This will be non-null when a chat boost is removed.
  ChatBoostRemoved? get removedChatBoost => update.removedChatBoost;

  /// The business connection from the update, if any.
  ///
  /// This will be non-null for business connection updates.
  BusinessConnection? get businessConnection => update.businessConnection;

  /// The deleted business messages from the update, if any.
  ///
  /// This will be non-null when business messages are deleted.
  BusinessMessagesDeleted? get deletedBusinessMessages =>
      update.deletedBusinessMessages;

  /// The poll from the update, if any.
  ///
  /// This will be non-null when a poll state is updated.
  Poll? get poll => update.poll;

  /// The poll answer from the update, if any.
  ///
  /// This will be non-null when a user changes their answer in a non-anonymous poll.
  PollAnswer? get pollAnswer => update.pollAnswer;

  // ===============================
  // Cached Convenient Property Getters
  // ===============================
  /// The effective message from the update.
  ///
  /// This returns the first non-null message from the various message types,
  /// including business messages and callback query messages.
  Message? get msg {
    if (_msgCached) {
      return _cachedMsg;
    }
    _cachedMsg ??= _computeMsg();
    _msgCached = true;
    return _cachedMsg;
  }

  Message? _computeMsg() {
    Message? m = message ??
        editedMessage ??
        channelPost ??
        editedChannelPost ??
        businessMessage ??
        editedBusinessMessage;
    if (callbackQuery?.message is Message) {
      m ??= (callbackQuery?.message as Message);
    }
    return m;
  }

  /// The user who sent the message or performed the action.
  ///
  /// This tries to extract the user from various update types and
  /// returns null if no user information is available.
  /// The result is cached after the first access for better performance.
  User? get from {
    if (!_fromCached) {
      _cachedFrom = message?.from ??
          editedMessage?.from ??
          channelPost?.from ??
          editedChannelPost?.from ??
          callbackQuery?.from ??
          inlineQuery?.from ??
          chosenInlineResult?.from ??
          shippingQuery?.from ??
          preCheckoutQuery?.from;
      _fromCached = true;
    }
    return _cachedFrom;
  }

  /// The chat where the message was sent.
  ///
  /// This tries to extract the chat from various update types and
  /// returns null if no chat information is available.
  /// The result is cached after the first access for better performance.
  Chat? get chat {
    if (!_chatCached) {
      _cachedChat = message?.chat ??
          editedMessage?.chat ??
          channelPost?.chat ??
          editedChannelPost?.chat ??
          callbackQuery?.message?.chat;
      _chatCached = true;
    }
    return _cachedChat;
  }

  /// The text content of the message, if any.
  ///
  /// This extracts text from regular messages, channel posts, and callback query messages.
  /// The result is cached after the first access for better performance.
  String? get text {
    if (!_textCached) {
      _cachedText = msg?.text;
      _textCached = true;
    }
    return _cachedText;
  }

  /// The caption of the message, if any.
  ///
  /// This extracts caption from photos, videos, documents, etc.
  /// The result is cached after the first access for better performance.
  String? get caption {
    if (!_captionCached) {
      _cachedCaption = msg?.caption;
      _captionCached = true;
    }
    return _cachedCaption;
  }

  /// The message entities, if any.
  ///
  /// These are special entities like mentions, hashtags, URLs, etc.
  /// The result is cached after the first access for better performance.
  List<MessageEntity>? get entities {
    if (!_entitiesCached) {
      _cachedEntities = msg?.entities;
      _entitiesCached = true;
    }
    return _cachedEntities;
  }

  /// The caption entities, if any.
  ///
  /// These are special entities in media captions.
  /// The result is cached after the first access for better performance.
  List<MessageEntity>? get captionEntities {
    if (!_captionEntitiesCached) {
      _cachedCaptionEntities = msg?.captionEntities;
      _captionEntitiesCached = true;
    }
    return _cachedCaptionEntities;
  }

  // ===============================
  // Property System
  // ===============================

  /// Gets a property value by key.
  ///
  /// This is used by middleware and plugins to store and retrieve data
  /// that needs to persist during the processing of an update.
  ///
  /// Example:
  /// ```dart
  /// final sessionData = ctx.get<Map<String, dynamic>>('session');
  /// ```
  T? get<T>(String key) => _properties[key] as T?;

  /// Sets a property value by key.
  ///
  /// This is used by middleware and plugins to store data that needs
  /// to persist during the processing of an update.
  ///
  /// Example:
  /// ```dart
  /// ctx.set('session', {'user_id': 123, 'step': 'waiting_for_name'});
  /// ```
  void set<T>(String key, T value) => _properties[key] = value;

  /// Checks if a property exists.
  ///
  /// Returns true if the property has been set, false otherwise.
  bool has(String key) => _properties.containsKey(key);

  /// Removes a property and returns its value.
  ///
  /// Returns the removed value, or null if the property didn't exist.
  T? remove<T>(String key) => _properties.remove(key) as T?;

  /// Clears all properties.
  ///
  /// This removes all stored properties from the context.
  void clearProperties() => _properties.clear();

  /// Gets all property keys.
  ///
  /// Returns an iterable of all property keys currently stored.
  Iterable<String> get propertyKeys => _properties.keys;

  // ===============================
  // API Shortcuts - Messaging
  // ===============================

  /// Replies to the current message with text.
  ///
  /// This is a convenience method that sends a message to the same chat
  /// where the current update originated from.
  ///
  /// Parameters:
  /// - [text]: The text to send (1-4096 characters)
  /// - [parseMode]: Mode for parsing entities in the message text
  /// - [entities]: List of special entities that appear in message text
  /// - [linkPreviewOptions]: Link preview generation options
  /// - [disableNotification]: Sends the message silently
  /// - [protectContent]: Protects the contents from forwarding and saving
  /// - [replyParameters]: Description of the message to reply to
  /// - [replyMarkup]: Additional interface options (keyboard, etc.)
  ///
  /// Returns the sent [Message].
  ///
  /// Throws [TeleverseException] if there's no chat to reply to.
  ///
  /// Example:
  /// ```dart
  /// await ctx.reply('Hello! 👋');
  /// await ctx.reply('*Bold text*', parseMode: ParseMode.markdownV2);
  /// ```
  Future<Message> reply(
    String text, {
    ParseMode? parseMode,
    List<MessageEntity>? entities,
    LinkPreviewOptions? linkPreviewOptions,
    bool? disableNotification,
    bool? protectContent,
    ReplyParameters? replyParameters,
    ReplyMarkup? replyMarkup,
  }) async {
    final chatId = _getChatId();
    if (chatId == null) {
      throw TeleverseException(
        'Cannot reply: no chat information available in update',
        type: TeleverseExceptionType.updateTypeDoesNotHaveChat,
      );
    }

    return api.sendMessage(
      chatId,
      text,
      parseMode: parseMode,
      entities: entities,
      linkPreviewOptions: linkPreviewOptions,
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyParameters: replyParameters,
      replyMarkup: replyMarkup,
    );
  }

  /// Replies to the current message with a photo.
  ///
  /// This is a convenience method that sends a photo to the same chat
  /// where the current update originated from.
  ///
  /// Parameters:
  /// - [photo]: Photo to send (InputFile)
  /// - [caption]: Photo caption (0-1024 characters)
  /// - [parseMode]: Mode for parsing entities in the photo caption
  /// - [captionEntities]: List of special entities that appear in the caption
  /// - [disableNotification]: Sends the message silently
  /// - [protectContent]: Protects the contents from forwarding and saving
  /// - [replyParameters]: Description of the message to reply to
  /// - [replyMarkup]: Additional interface options
  /// - [hasSpoiler]: Pass True if the photo needs to be covered with a spoiler animation
  ///
  /// Returns the sent [Message].
  ///
  /// Throws [TeleverseException] if there's no chat to reply to.
  ///
  /// Example:
  /// ```dart
  /// final photo = InputFile.fromFile(File('photo.jpg'));
  /// await ctx.replyWithPhoto(photo, caption: 'Beautiful sunset! 🌅');
  /// ```
  Future<Message> replyWithPhoto(
    InputFile photo, {
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    bool? disableNotification,
    bool? protectContent,
    ReplyParameters? replyParameters,
    ReplyMarkup? replyMarkup,
    bool? hasSpoiler,
  }) async {
    final chatId = _getChatId();
    if (chatId == null) {
      throw TeleverseException(
        'Cannot reply: no chat information available in update',
        type: TeleverseExceptionType.updateTypeDoesNotHaveChat,
      );
    }

    return api.sendPhoto(
      chatId,
      photo,
      caption: caption,
      parseMode: parseMode,
      captionEntities: captionEntities,
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyParameters: replyParameters,
      replyMarkup: replyMarkup,
      hasSpoiler: hasSpoiler,
    );
  }

  // ===============================
  // Cached Helper Methods & Properties
  // ===============================

  /// Gets the chat ID from the current update.
  ///
  /// This internal method extracts the chat ID from various update types.
  /// The result is cached after the first access for better performance.
  ID? _getChatId() {
    if (!_chatIdCached) {
      final currentChat = chat;
      _cachedChatId = currentChat != null ? ID.create(currentChat.id) : null;
      _chatIdCached = true;
    }
    return _cachedChatId;
  }

  /// Gets the message ID from the current update.
  ///
  /// This returns the message ID of the effective message, if available.
  int? get messageId => msg?.messageId;

  /// Checks if the current update is from a private chat.
  ///
  /// Returns true if the chat type is private, false otherwise.
  /// The result is cached after the first access for better performance.
  bool get isPrivateChat {
    if (!_isPrivateChatCached) {
      _cachedIsPrivateChat = chat?.type == ChatType.private;
      _isPrivateChatCached = true;
    }
    return _cachedIsPrivateChat ?? false;
  }

  /// Checks if the current update is from a group chat.
  ///
  /// Returns true if the chat type is group or supergroup, false otherwise.
  /// The result is cached after the first access for better performance.
  bool get isGroupChat {
    if (!_isGroupChatCached) {
      final chatType = chat?.type;
      _cachedIsGroupChat =
          chatType == ChatType.group || chatType == ChatType.supergroup;
      _isGroupChatCached = true;
    }
    return _cachedIsGroupChat ?? false;
  }

  /// Checks if the current update is from a channel.
  ///
  /// Returns true if the chat type is channel, false otherwise.
  /// The result is cached after the first access for better performance.
  bool get isChannelPost {
    if (!_isChannelPostCached) {
      _cachedIsChannelPost = chat?.type == ChatType.channel;
      _isChannelPostCached = true;
    }
    return _cachedIsChannelPost ?? false;
  }

  /// Checks if the current update contains a command.
  ///
  /// Returns true if the message text starts with a command entity, false otherwise.
  /// The result is cached after the first access for better performance.
  bool get hasCommand {
    if (!_hasCommandCached) {
      final messageText = text;
      final messageEntities = entities;

      if (messageText == null ||
          messageEntities == null ||
          messageEntities.isEmpty) {
        _cachedHasCommand = false;
      } else {
        final firstEntity = messageEntities.first;
        _cachedHasCommand = firstEntity.type == MessageEntityType.botCommand &&
            firstEntity.offset == 0;
      }
      _hasCommandCached = true;
    }
    return _cachedHasCommand ?? false;
  }

  /// Gets the command from the message, if any.
  ///
  /// Returns the command without the leading '/' and bot username, or null if no command.
  /// The result is cached after the first access for better performance.
  ///
  /// Example: "/start@mybot arg1 arg2" returns "start"
  String? get command {
    if (!_commandCached) {
      if (!hasCommand) {
        _cachedCommand = null;
      } else {
        final messageText = text!;
        final firstEntity = entities!.first;
        final commandWithSlash = messageText.substring(
          firstEntity.offset,
          firstEntity.offset + firstEntity.length,
        );

        // Remove leading '/' and potential bot username
        String cmd = commandWithSlash.substring(1);
        if (cmd.contains('@')) {
          cmd = cmd.split('@').first;
        }

        _cachedCommand = cmd;
      }
      _commandCached = true;
    }
    return _cachedCommand;
  }

  /// Gets the arguments from a command message, if any.
  ///
  /// Returns a list of arguments after the command, or empty list if no arguments.
  /// The result is cached after the first access for better performance.
  ///
  /// Example: "/start arg1 arg2" returns ["arg1", "arg2"]
  List<String> get args {
    if (!_argsCached) {
      if (!hasCommand) {
        _cachedArgs = [];
      } else {
        final messageText = text!;
        final firstEntity = entities!.first;
        final commandLength = firstEntity.length;

        if (commandLength >= messageText.length) {
          _cachedArgs = [];
        } else {
          final argsText = messageText.substring(commandLength).trim();
          if (argsText.isEmpty) {
            _cachedArgs = [];
          } else {
            _cachedArgs = argsText.split(RegExp(r'\s+'));
          }
        }
      }
      _argsCached = true;
    }
    return _cachedArgs ?? [];
  }

  /// Gets the full argument string from a command message.
  ///
  /// Returns the text after the command as a single string, or null if no arguments.
  /// The result is cached after the first access for better performance.
  ///
  /// Example: "/start hello world" returns "hello world"
  String? get argsString {
    if (!_argsStringCached) {
      if (!hasCommand) {
        _cachedArgsString = null;
      } else {
        final messageText = text!;
        final firstEntity = entities!.first;
        final commandLength = firstEntity.length;

        if (commandLength >= messageText.length) {
          _cachedArgsString = null;
        } else {
          final argsText = messageText.substring(commandLength).trim();
          _cachedArgsString = argsText.isEmpty ? null : argsText;
        }
      }
      _argsStringCached = true;
    }
    return _cachedArgsString;
  }

  /// Clears all cached values.
  ///
  /// This method is useful if you need to force recomputation of cached properties.
  /// It's automatically called internally when needed, but can be called manually
  /// if you're doing something advanced with context modification.
  void clearCache() {
    _cachedMsg = null;
    _cachedFrom = null;
    _cachedChat = null;
    _cachedText = null;
    _cachedCaption = null;
    _cachedEntities = null;
    _cachedCaptionEntities = null;
    _cachedChatId = null;
    _cachedHasCommand = null;
    _cachedCommand = null;
    _cachedArgs = null;
    _cachedArgsString = null;
    _cachedIsPrivateChat = null;
    _cachedIsGroupChat = null;
    _cachedIsChannelPost = null;

    _msgCached = false;
    _fromCached = false;
    _chatCached = false;
    _textCached = false;
    _captionCached = false;
    _entitiesCached = false;
    _captionEntitiesCached = false;
    _chatIdCached = false;
    _hasCommandCached = false;
    _commandCached = false;
    _argsCached = false;
    _argsStringCached = false;
    _isPrivateChatCached = false;
    _isGroupChatCached = false;
    _isChannelPostCached = false;
  }

  @override
  String toString() {
    return 'Context(updateId: ${update.updateId}, chatId: ${chat?.id}, userId: ${from?.id})';
  }
}

/// Extension methods for enhanced Context functionality.
extension ContextExtensions on Context {
  /// Replies with markdown-formatted text.
  ///
  /// This is a convenience method that sets parseMode to MarkdownV2.
  ///
  /// Example:
  /// ```dart
  /// await ctx.replyWithMarkdown('*Bold text* and _italic text_');
  /// ```
  Future<Message> replyWithMarkdown(String text) {
    return reply(text, parseMode: ParseMode.markdownV2);
  }

  /// Replies with HTML-formatted text.
  ///
  /// This is a convenience method that sets parseMode to HTML.
  ///
  /// Example:
  /// ```dart
  /// await ctx.replyWithHTML('<b>Bold text</b> and <i>italic text</i>');
  /// ```
  Future<Message> replyWithHTML(String text) {
    return reply(text, parseMode: ParseMode.html);
  }

  /// Replies with an inline keyboard.
  ///
  /// This is a convenience method for replying with an inline keyboard markup.
  ///
  /// Example:
  /// ```dart
  /// final keyboard = InlineKeyboardMarkup(inlineKeyboard: [
  ///   [InlineKeyboardButton(text: 'Button', callbackData: 'data')],
  /// ]);
  /// await ctx.replyWithKeyboard('Choose an option:', keyboard);
  /// ```
  Future<Message> replyWithKeyboard(
      String text, InlineKeyboardMarkup keyboard) {
    return reply(text, replyMarkup: keyboard);
  }
}

/// Type alias for context factory function.
///
/// This function is used to create custom context instances from updates.
typedef ContextFactory<CTX extends Context> = CTX Function(
  Update update,
  RawAPI api,
  BotInfo botInfo,
);
