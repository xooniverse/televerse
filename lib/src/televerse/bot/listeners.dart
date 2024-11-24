part of '../../../televerse.dart';

/// One place for all the listeners in Bot class.
extension BotListeners<CTX extends Context> on Bot<CTX> {
  /// Registers a callback for a command.
  /// The command must be without the leading slash.
  ///
  /// For example, to register a callback for the `/start` command, you would
  /// call `command('start', callback)`.
  ///
  /// The callback will be called when a message is received that starts with
  /// the command.
  ///
  /// Example:
  /// ```dart
  /// bot.command('start', (ctx) async {
  ///   await ctx.reply('Hello!');
  /// });
  /// ```
  ///
  /// This will reply "Hello!" to any message that starts with `/start`.
  void command(
    Pattern command,
    Handler<CTX> callback, {
    ScopeOptions<CTX>? options,
    bool considerCaption = false,
  }) {
    final scope = HandlerScope<CTX>(
      isCommand: true,
      options: options,
      handler: callback,
      types: UpdateType.messages(),
      predicate: (ctx) {
        String? text;
        if (considerCaption) {
          text = ctx.msg?.caption;
        }
        text ??= ctx.msg?.text;

        if (text == null) return false;
        if (command is RegExp) {
          return command.hasMatch(text);
        } else if (command is String) {
          final firstTerm = text.split(' ').first;
          final suffix = '@${me.username}';
          return firstTerm == '/$command' || firstTerm == '/$command$suffix';
        }
        return false;
      },
    );
    _handlerScopes.add(scope);
    return;
  }

  /// Registers a Handler Scope to listen to matching callback query.
  void _internalCallbackQueryRegister(
    Pattern data,
    Handler<CTX> callback, {
    ScopeOptions<CTX>? options,
  }) {
    final scope = HandlerScope<CTX>(
      options: options,
      handler: callback,
      types: [UpdateType.callbackQuery],
      predicate: (ctx) {
        if (ctx.callbackQuery?.data == null) return false;
        if (data is RegExp) {
          return data.hasMatch(ctx.callbackQuery?.data ?? "");
        } else if (data is String) {
          return ctx.callbackQuery?.data == data;
        }
        return false;
      },
    );

    _handlerScopes.add(scope);
  }

  /// Adds Handler Scope for a Accept-All predicate
  void _acceptAll(
    Handler<CTX> callback,
    List<UpdateType> types, {
    ScopeOptions<CTX>? options,
  }) {
    final scope = HandlerScope<CTX>(
      options: options,
      handler: callback,
      types: types,
      predicate: (_) => true,
    );

    _handlerScopes.add(scope);
  }

  /// Registers a callback for a callback query.
  ///
  /// The callback will be called when a callback query is received that has
  /// the specified data.
  ///
  /// Example:
  /// ```dart
  /// bot.callbackQuery('start', (ctx) {
  ///   ctx.answer('Hello!');
  /// });
  /// ```
  ///
  /// This will answer "Hello!" to any callback query that has the data "start".
  ///
  ///
  void callbackQuery(
    Pattern data,
    Handler<CTX> callback, {
    @Deprecated("Use the 'data' parameter instead.") RegExp? regex,
    ScopeOptions<CTX>? options,
  }) {
    return _internalCallbackQueryRegister(
      data,
      callback,
      options: options,
    );
  }

  /// Registers a callback for particular chat types.
  /// The callback will be called when a message is received that is from a
  /// chat of the specified type.
  ///
  /// You can specify chat type by passing a [ChatType] to the [type] parameter.
  ///
  /// Example:
  /// ```dart
  /// bot.chatType(ChatType.private, (ctx) {
  ///  ctx.reply('Hello in private chat!');
  /// });
  /// ```
  ///
  /// This will reply "Hello in private chat!" to any message that is from a
  /// private chat.
  ///
  /// If you want to register a callback for multiple chat types, you can use
  /// the [chatTypes] method.
  void chatType(
    ChatType type,
    Handler<CTX> callback, {
    ScopeOptions<CTX>? options,
  }) {
    final scope = HandlerScope<CTX>(
      options: options,
      handler: callback,
      types: [
        UpdateType.message,
      ],
      predicate: (ctx) {
        return ctx.message?.chat.type == type;
      },
    );

    _handlerScopes.add(scope);
  }

  /// Registers a callback for multiple chat types.
  /// The callback will be called when a message is received that is from one of
  /// the specified chat types.
  ///
  /// You can specify chat types by passing a list of [ChatType]s to the [types]
  /// parameter.
  ///
  /// Example:
  /// ```dart
  /// bot.chatTypes([ChatType.private, ChatType.group], (ctx) {
  /// ctx.reply('Hello in private chat or group!');
  /// });
  /// ```
  ///
  /// This will reply "Hello in private chat or group!" to any message that is
  /// from a private chat or a group.
  void chatTypes(
    List<ChatType> types,
    Handler<CTX> callback, {
    ScopeOptions<CTX>? options,
  }) {
    final scope = HandlerScope<CTX>(
      options: options,
      handler: callback,
      types: [
        UpdateType.message,
      ],
      predicate: (ctx) {
        return types.contains(ctx.message?.chat.type);
      },
    );

    _handlerScopes.add(scope);
  }

  /// Registers a callback for a message that matches the specified filter.
  ///
  /// The callback will be called when a message is received that matches the
  /// specified filter.
  ///
  /// This method accepts a predicate function that takes a [Context] as
  /// a parameter and returns a boolean. If the function returns true, the
  /// callback will be called.
  ///
  /// Example:
  /// ```dart
  /// bot.filter((ctx) {
  ///   return (ctx.message.photo?.last.fileSize ?? 0) > 1000000;
  /// }, (ctx) async {
  ///   await ctx.reply('Wow, that\'s a big photo!');
  /// });
  /// ```
  void filter(
    bool Function(CTX ctx) predicate,
    Handler<CTX> callback, {
    ScopeOptions<CTX>? options,
  }) {
    final scope = HandlerScope<CTX>(
      options: options,
      handler: callback,
      types: UpdateType.values,
      predicate: predicate,
    );

    _handlerScopes.add(scope);
  }

  /// Registers a callback for a message that contains a text.
  /// The callback will be called when a message is received that contains a
  /// particular text.
  ///
  /// Example:
  /// ```dart
  /// bot.text('I love Televerse', (ctx) {
  ///  ctx.reply('I love you too!');
  /// });
  /// ```
  void text(
    String text,
    Handler<CTX> callback, {
    ScopeOptions<CTX>? options,
  }) {
    final scope = HandlerScope<CTX>(
      options: options,
      handler: callback,
      types: UpdateType.messages(),
      predicate: (ctx) {
        return ctx.msg?.text == text;
      },
    );

    _handlerScopes.add(scope);
  }

  /// Registers a callback for a message that contains a text that matches the
  /// specified regular expression.
  /// The callback will be called when a message is received that contains a
  /// text that matches the specified regular expression.
  ///
  /// The regular expression must be a valid Dart regular expression.
  ///
  /// Example:
  /// ```dart
  /// bot.hears(r'Hello, (.*)!', (ctx) {
  ///   ctx.reply('Hello, ${ctx.matches![1]}!');
  /// });
  /// ```
  ///
  /// This will reply "Hello, <name>!" to any message that contains a text that
  /// matches the regular expression `Hello, (.*)!`.
  void hears(
    RegExp exp,
    Handler<CTX> callback, {
    ScopeOptions<CTX>? options,
  }) {
    final scope = HandlerScope<CTX>(
      options: options,
      pattern: exp,
      isRegExp: true,
      handler: callback,
      types: UpdateType.messages(),
      predicate: (ctx) {
        return exp.hasMatch(ctx.msg?.text ?? '');
      },
    );

    _handlerScopes.add(scope);
  }

  /// Registers a callback for inline queries.
  ///
  /// The callback will be called when an inline query with the specified query is received.
  void inlineQuery(
    Pattern query,
    Handler<CTX> callback, {
    ScopeOptions<CTX>? options,
  }) {
    final scope = HandlerScope<CTX>(
      options: options,
      handler: callback,
      types: [
        UpdateType.inlineQuery,
      ],
      predicate: (ctx) {
        final queryText = ctx.inlineQuery?.query ?? '';
        if (query is RegExp) {
          return query.hasMatch(queryText);
        }
        if (query is String) {
          return RegExp(query).hasMatch(queryText);
        }
        return false;
      },
    );

    _handlerScopes.add(scope);
  }

  /// Registers a callback for the `/settings` command.
  void settings(
    Handler<CTX> handler, {
    ScopeOptions<CTX>? options,
  }) {
    return command(
      "settings",
      handler,
      options: options,
    );
  }

  /// Registers a callback for the `/help` command.
  void help(
    Handler<CTX> handler, {
    ScopeOptions<CTX>? options,
  }) {
    return command(
      "help",
      handler,
      options: options,
    );
  }

  /// A filter that matches messages that contains the specified entity type.
  /// Optionally, you can pass the [content] parameter to match messages that
  /// contains the specified entity type and the specified content.
  ///
  /// This acts as a shortcut for the [entity] method and [onHashtag] methods.
  bool _internalEntityMatcher({
    required CTX context,
    required MessageEntityType type,
    String? content,
    bool shouldMatchCaptionEntities = false,
  }) {
    List<MessageEntity>? entities = context.message?.entities;
    if (shouldMatchCaptionEntities) {
      entities = entities ?? context.message?.captionEntities;
    }
    bool hasMatch = entities?.any((element) => element.type == type) ?? false;

    if (content != null) {
      String value;
      switch (type) {
        case MessageEntityType.hashtag:
          value = "#$content";
          break;
        case MessageEntityType.mention:
          value = "@$content";
          break;
        default:
          value = content;
      }
      if (entities == null) return false;

      hasMatch = entities.any((element) {
        if (element.type == type) {
          if (!shouldMatchCaptionEntities) {
            return context.message?.text!.substring(
                  element.offset,
                  element.offset + element.length,
                ) ==
                value;
          } else {
            return context.message?.caption!.substring(
                  element.offset,
                  element.offset + element.length,
                ) ==
                value;
          }
        }
        return false;
      });
    }

    return hasMatch;
  }

  /// Registers a callback for messages that contains the specified entity type.
  ///
  /// Pass the `shouldMatchCaptionEntities` parameter to match entities in the
  /// caption of a message. Such as a photo or video message.
  ///
  /// By default, this method will ONLY match entities in the message text.
  void entity(
    MessageEntityType type,
    Handler<CTX> callback, {
    bool shouldMatchCaptionEntities = false,
    ScopeOptions<CTX>? options,
  }) {
    final scope = HandlerScope<CTX>(
      options: options,
      handler: callback,
      types: UpdateType.messages(),
      predicate: (ctx) {
        return _internalEntityMatcher(
          context: ctx,
          type: type,
          shouldMatchCaptionEntities: shouldMatchCaptionEntities,
        );
      },
    );

    _handlerScopes.add(scope);
  }

  /// Registers a callback for messages that contains the specified entity types.
  /// The callback will be called when a message is received that contains the
  /// specified entity types.
  ///
  /// Pass the `shouldMatchCaptionEntities` parameter to match entities in the
  /// caption of a message. Such as a photo or video message.
  ///
  /// By default, this method will ONLY match entities in the message text.
  void entities(
    List<MessageEntityType> types,
    Handler<CTX> callback, {
    bool shouldMatchCaptionEntities = false,
    ScopeOptions<CTX>? options,
  }) {
    final scope = HandlerScope<CTX>(
      options: options,
      handler: callback,
      types: UpdateType.messages(),
      predicate: (ctx) {
        List<MessageEntity>? entities = ctx.message?.entities;
        if (shouldMatchCaptionEntities) {
          entities = entities ?? ctx.message?.captionEntities;
        }

        bool hasMatch = types.every(
          (element) => entities!.any(
            (e) => e.type == element,
          ),
        );

        return hasMatch;
      },
    );

    _handlerScopes.add(scope);
  }

  /// Registers callback for the [ChatMemberUpdated] events
  void _internalChatMemberUpdatedHandling({
    required Handler<CTX> callback,
    ChatMemberStatus? oldStatus,
    ChatMemberStatus? newStatus,
    ScopeOptions<CTX>? options,
  }) {
    final scope = HandlerScope<CTX>(
      handler: callback,
      options: options,
      types: [
        UpdateType.chatMember,
      ],
      predicate: (ctx) {
        final os = ctx.chatMemberUpdated?.oldChatMember.status;
        final ns = ctx.chatMemberUpdated?.newChatMember.status;
        if (oldStatus == null && newStatus == null) {
          return true;
        }
        if (oldStatus != null && newStatus != null) {
          if (os == oldStatus && ns == newStatus) {
            return true;
          }
        }
        if (oldStatus != null && os == oldStatus) {
          return true;
        }
        if (newStatus != null && ns == newStatus) {
          return true;
        }
        return false;
      },
    );

    _handlerScopes.add(scope);
  }

  /// Registers a callback for the [Update.chatMember] events.
  ///
  /// If you want to receive the Chat Member updates, you must explicitly specify
  /// the `UpdateType.chatMember` in the [LongPolling.allowedUpdates] property.
  ///
  /// You can optionally specify [ChatMemberStatus] to [oldStatus] and [newStatus]
  /// filter to only receive updates for a specific status.
  void chatMember(
    Handler<CTX> callback, {
    ChatMemberStatus? oldStatus,
    ChatMemberStatus? newStatus,
    ScopeOptions<CTX>? options,
  }) {
    return _internalChatMemberUpdatedHandling(
      options: options,
      callback: callback,
      oldStatus: oldStatus,
      newStatus: newStatus,
    );
  }

  /// Registers a callback for the [Update.myChatMember] events.
  ///
  /// You can optionally specify [ChatMemberStatus] to [oldStatus] and [newStatus]
  /// filter to only receive updates for a specific status.
  void myChatMember({
    required Handler<CTX> callback,
    ChatMemberStatus? oldStatus,
    ChatMemberStatus? newStatus,
    ScopeOptions<CTX>? options,
  }) {
    return _internalChatMemberUpdatedHandling(
      callback: callback,
      oldStatus: oldStatus,
      newStatus: newStatus,
      options: options,
    );
  }

  /// Registers a callback for the [Update.poll] events.
  void poll(
    Handler<CTX> callback, {
    ScopeOptions<CTX>? options,
  }) {
    return _acceptAll(
      callback,
      [UpdateType.poll],
      options: options,
    );
  }

  /// Registers a callback for the [Update.pollAnswer] events.
  ///
  /// Optionally pass the [pollId] parameter to only receive updates for a specific poll.
  void pollAnswer(
    Handler<CTX> callback, {
    String? pollId,
    ScopeOptions<CTX>? options,
  }) {
    final scope = HandlerScope<CTX>(
      options: options,
      handler: callback,
      types: [
        UpdateType.pollAnswer,
      ],
      predicate: (ctx) {
        if (pollId == null) return true;
        return ctx.pollAnswer?.pollId == pollId;
      },
    );

    _handlerScopes.add(scope);
  }

  /// Registers a callback for the [Update.chosenInlineResult] events.
  /// The callback will be called when a chosen inline result is received.
  void chosenInlineResult(
    Handler<CTX> callback, {
    ScopeOptions<CTX>? options,
  }) {
    return _acceptAll(
      callback,
      [UpdateType.chosenInlineResult],
      options: options,
    );
  }

  /// Registers a callback for the [Update.chatJoinRequest] events of the particular chat mentioned by the chatId.
  ///
  /// The callback will be called when a chat join request is received.
  void chatJoinRequest(
    ID chatId,
    Handler<CTX> callback, {
    ScopeOptions<CTX>? options,
  }) {
    final scope = HandlerScope<CTX>(
      options: options,
      handler: callback,
      types: [
        UpdateType.chatJoinRequest,
      ],
      predicate: (ctx) => ctx.chat?.isTheSameChat(chatId) ?? false,
    );

    _handlerScopes.add(scope);
  }

  /// Registers a callback for Shipping Query events for the specified User.
  void shippingQuery(
    ID chatId,
    Handler<CTX> callback, {
    ScopeOptions<CTX>? options,
  }) {
    final scope = HandlerScope<CTX>(
      options: options,
      handler: callback,
      types: [
        UpdateType.shippingQuery,
      ],
      predicate: (ctx) {
        return ctx.from?.isTheSameChat(chatId) ?? false;
      },
    );

    _handlerScopes.add(scope);
  }

  /// Registers a callback for Pre Checkout Query events.
  void preCheckoutQuery(
    ChatID chatId,
    Handler<CTX> callback, {
    ScopeOptions<CTX>? options,
  }) {
    final scope = HandlerScope<CTX>(
      options: options,
      handler: callback,
      types: [
        UpdateType.preCheckoutQuery,
      ],
      predicate: (ctx) {
        return ctx.from?.isTheSameChat(chatId) ?? false;
      },
    );

    _handlerScopes.add(scope);
  }

  /// Sets up a callback for when a message with URL is received.
  void onURL(
    Handler<CTX> callback, {
    bool shouldMatchCaptionEntities = false,
    ScopeOptions<CTX>? options,
  }) {
    return entity(
      MessageEntityType.url,
      callback,
      shouldMatchCaptionEntities: shouldMatchCaptionEntities,
      options: options,
    );
  }

  /// Sets up a callback for when a message with email is received.
  void onEmail(
    Handler<CTX> callback, {
    bool shouldMatchCaptionEntities = false,
    ScopeOptions<CTX>? options,
  }) {
    return entity(
      MessageEntityType.email,
      callback,
      shouldMatchCaptionEntities: shouldMatchCaptionEntities,
      options: options,
    );
  }

  /// Sets up a callback for when a message with phone number is received.
  void onPhoneNumber(
    Handler<CTX> callback, {
    bool shouldMatchCaptionEntities = false,
    ScopeOptions<CTX>? options,
  }) {
    return entity(
      MessageEntityType.phoneNumber,
      callback,
      shouldMatchCaptionEntities: shouldMatchCaptionEntities,
      options: options,
    );
  }

  /// Sets up a callback for when a message with hashtag is received.
  void onHashtag(
    Handler<CTX> callback, {
    bool shouldMatchCaptionEntities = false,
    String? hashtag,
    ScopeOptions<CTX>? options,
  }) {
    if (hashtag == null) {
      return entity(
        MessageEntityType.hashtag,
        callback,
        shouldMatchCaptionEntities: shouldMatchCaptionEntities,
        options: options,
      );
    }

    final scope = HandlerScope<CTX>(
      options: options,
      handler: callback,
      types: UpdateType.messages(),
      predicate: (ctx) {
        return _internalEntityMatcher(
          context: ctx,
          type: MessageEntityType.hashtag,
          content: hashtag,
          shouldMatchCaptionEntities: shouldMatchCaptionEntities,
        );
      },
    );

    _handlerScopes.add(scope);
  }

  /// Sets up a callback for when a mention is occurred.
  /// Optionally, you can pass the [username] parameter or [userId] parameter to
  /// only receive updates for a specific user.
  ///
  /// [username] - The username of the user. Don't pass the leading '@' character.
  ///
  /// [userId] - The ID of the user.
  ///
  /// When the [username] parameter is passed, the callback will be called when a
  /// [MessageEntityType.mention] entity is occurred with the specified username.
  ///
  /// When the [userId] parameter is passed, the callback will be called when a
  /// [MessageEntityType.textMention] entity is occurred with the specified user ID.
  ///
  /// That is you don't have to setup a different callback for [MessageEntityType.mention]
  /// and [MessageEntityType.textMention] entities. (Well, you can if you want to.)
  void onMention(
    Handler<CTX> callback, {
    String? username,
    int? userId,
    ScopeOptions<CTX>? options,
  }) {
    if (username == null && userId == null) {
      return entity(
        MessageEntityType.mention,
        callback,
        options: options,
      );
    }
    if (username != null) {
      final scope = HandlerScope<CTX>(
        options: options,
        handler: callback,
        types: [
          UpdateType.message,
        ],
        predicate: (ctx) {
          return _internalEntityMatcher(
            context: ctx,
            type: MessageEntityType.mention,
            content: username,
          );
        },
      );
      return _handlerScopes.add(scope);
    }

    final scope = HandlerScope<CTX>(
      options: options,
      handler: callback,
      types: [
        UpdateType.message,
      ],
      predicate: (ctx) {
        List<MessageEntity>? entities = ctx.message?.entities;
        bool hasMatch = entities?.any((element) {
              if (element.type == MessageEntityType.textMention) {
                return element.user?.id == userId;
              }
              return false;
            }) ??
            false;

        return hasMatch;
      },
    );

    _handlerScopes.add(scope);
  }

  /// This method sets up a callback to be fired when the bot is mentioned.
  void whenMentioned(
    Handler<CTX> callback, {
    ScopeOptions<CTX>? options,
  }) async {
    return onMention(
      callback,
      username: me.username,
      options: options,
    );
  }

  /// Registers a callback for all Message updates
  void onMessage(
    Handler<CTX> callback, {
    ScopeOptions<CTX>? options,
  }) {
    return _acceptAll(
      callback,
      [UpdateType.message],
      options: options,
    );
  }

  /// Registers a callback for all Edited Message updates
  void onEditedMessage(
    Handler<CTX> callback, {
    ScopeOptions<CTX>? options,
  }) {
    return _acceptAll(
      callback,
      [UpdateType.editedMessage],
      options: options,
    );
  }

  /// Registers a callback for all Channel Post updates
  void onChannelPost(
    Handler<CTX> callback, {
    ScopeOptions<CTX>? options,
  }) {
    return _acceptAll(
      callback,
      [UpdateType.channelPost],
      options: options,
    );
  }

  /// Registers a callback for all Edited Channel Post updates
  void onEditedChannelPost(
    Handler<CTX> callback, {
    ScopeOptions<CTX>? options,
  }) {
    return _acceptAll(
      callback,
      [UpdateType.editedChannelPost],
      options: options,
    );
  }

  /// Registers a callback for all Inline Query updates
  void onInlineQuery(
    Handler<CTX> callback, {
    ScopeOptions<CTX>? options,
  }) {
    return _acceptAll(
      callback,
      [UpdateType.inlineQuery],
      options: options,
    );
  }

  /// Registers a callback for all Chosen Inline Result updates
  void onChosenInlineResult(
    Handler<CTX> callback, {
    ScopeOptions<CTX>? options,
  }) {
    return _acceptAll(
      callback,
      [UpdateType.chosenInlineResult],
      options: options,
    );
  }

  /// Registers a callback for all Callback Query updates
  void onCallbackQuery(
    Handler<CTX> callback, {
    ScopeOptions<CTX>? options,
  }) {
    return _acceptAll(
      callback,
      [UpdateType.callbackQuery],
      options: options,
    );
  }

  /// Registers a callback for all Shipping Query updates
  void onShippingQuery(
    Handler<CTX> callback, {
    ScopeOptions<CTX>? options,
  }) {
    return _acceptAll(
      callback,
      [UpdateType.shippingQuery],
      options: options,
    );
  }

  /// Registers a callback for all Pre Checkout Query updates
  void onPreCheckoutQuery(
    Handler<CTX> callback, {
    ScopeOptions<CTX>? options,
  }) {
    return _acceptAll(
      callback,
      [UpdateType.preCheckoutQuery],
      options: options,
    );
  }

  /// Registers a callback to be fired for all successful payments
  void onSuccessfulPayment(
    Handler<CTX> callback, {
    ScopeOptions<CTX>? options,
  }) {
    return _internalSubMessageHandler(
      callback,
      (ctx) => ctx.message?.successfulPayment != null,
      options: options,
    );
  }

  /// Registers a callback for all Poll updates
  void onPoll(
    Handler<CTX> callback, {
    ScopeOptions<CTX>? options,
  }) {
    return _acceptAll(
      callback,
      [UpdateType.poll],
      options: options,
    );
  }

  /// Registers a callback for all Poll Answer updates
  void onPollAnswer(
    Handler<CTX> callback, {
    ScopeOptions<CTX>? options,
  }) {
    return _acceptAll(
      callback,
      [UpdateType.pollAnswer],
      options: options,
    );
  }

  /// Registers a callback for all My Chat Member updates
  void onMyChatMember(
    Handler<CTX> callback, {
    ScopeOptions<CTX>? options,
  }) {
    return _acceptAll(
      callback,
      [UpdateType.myChatMember],
      options: options,
    );
  }

  /// Registers a callback for all Chat Member updates
  void onChatMember(
    Handler<CTX> callback, {
    ScopeOptions<CTX>? options,
  }) {
    return _acceptAll(
      callback,
      [UpdateType.chatMember],
      options: options,
    );
  }

  /// Registers a callback for all Chat Join Request updates
  void onChatJoinRequest(
    Handler<CTX> callback, {
    ScopeOptions<CTX>? options,
  }) {
    return _acceptAll(
      callback,
      [UpdateType.chatJoinRequest],
      options: options,
    );
  }

  /// Internal method to handle sub message handlers
  void _internalSubMessageHandler(
    Handler<CTX> callback,
    bool Function(Context) predicate, {
    bool includeChannelPosts = false,
    bool onlyChannelPosts = false,
    ID? chatId,
    ScopeOptions<CTX>? options,
  }) {
    final scope = HandlerScope<CTX>(
      options: options,
      handler: callback,
      types: [
        if (includeChannelPosts || onlyChannelPosts) UpdateType.channelPost,
        if (!onlyChannelPosts) UpdateType.message,
      ],
      predicate: (ctx) {
        if (chatId != null) {
          return predicate(ctx) && (ctx.chat?.isTheSameChat(chatId) ?? false);
        }
        return predicate(ctx);
      },
    );

    _handlerScopes.add(scope);
  }

  /// Registers a callback for messages that contain an audio.
  ///
  /// By default, this method will only match messages that are sent in private chats / groups.
  /// You can pass the [includeChannelPosts] parameter to match messages that are sent in channels.
  ///
  /// Alternatively, you can pass the [onlyChannelPosts] parameter to only match messages that are sent in channels.
  void onAudio(
    Handler<CTX> callback, {
    bool includeChannelPosts = false,
    bool onlyChannelPosts = false,
    ID? chatId,
    ScopeOptions<CTX>? options,
  }) {
    return _internalSubMessageHandler(
      callback,
      (ctx) => ctx.msg?.audio != null,
      includeChannelPosts: includeChannelPosts,
      onlyChannelPosts: onlyChannelPosts,
      chatId: chatId,
      options: options,
    );
  }

  /// Registers a callback for messages that contain a document.
  ///
  /// By default, this method will only match messages that are sent in private chats / groups.
  /// You can pass the [includeChannelPosts] parameter to match messages that are sent in channels.
  ///
  /// Alternatively, you can pass the [onlyChannelPosts] parameter to only match messages that are sent in channels.
  void onDocument(
    Handler<CTX> callback, {
    bool includeChannelPosts = false,
    bool onlyChannelPosts = false,
    ID? chatId,
    ScopeOptions<CTX>? options,
  }) {
    return _internalSubMessageHandler(
      callback,
      (ctx) => ctx.msg?.document != null,
      includeChannelPosts: includeChannelPosts,
      onlyChannelPosts: onlyChannelPosts,
      chatId: chatId,
      options: options,
    );
  }

  /// Registers a callback for messages that contain a photo.
  ///
  /// By default, this method will only match messages that are sent in private chats / groups.
  /// You can pass the [includeChannelPosts] parameter to match messages that are sent in channels.
  ///
  /// Alternatively, you can pass the [onlyChannelPosts] parameter to only match messages that are sent in channels.
  void onPhoto(
    Handler<CTX> callback, {
    bool includeChannelPosts = false,
    bool onlyChannelPosts = false,
    ID? chatId,
    ScopeOptions<CTX>? options,
  }) {
    return _internalSubMessageHandler(
      callback,
      (ctx) => ctx.msg?.photo != null,
      includeChannelPosts: includeChannelPosts,
      onlyChannelPosts: onlyChannelPosts,
      chatId: chatId,
      options: options,
    );
  }

  /// Registers a callback for messages that contain a sticker.
  ///
  /// By default, this method will only match messages that are sent in private chats / groups.
  /// You can pass the [includeChannelPosts] parameter to match messages that are sent in channels.
  ///
  /// Alternatively, you can pass the [onlyChannelPosts] parameter to only match messages that are sent in channels.
  void onSticker(
    Handler<CTX> callback, {
    bool includeChannelPosts = false,
    bool onlyChannelPosts = false,
    ID? chatId,
    ScopeOptions<CTX>? options,
  }) {
    return _internalSubMessageHandler(
      callback,
      (ctx) => ctx.msg?.sticker != null,
      includeChannelPosts: includeChannelPosts,
      onlyChannelPosts: onlyChannelPosts,
      chatId: chatId,
      options: options,
    );
  }

  /// Registers a callback for messages that contain a video.
  ///
  /// By default, this method will only match messages that are sent in private chats / groups.
  /// You can pass the [includeChannelPosts] parameter to match messages that are sent in channels.
  ///
  /// Alternatively, you can pass the [onlyChannelPosts] parameter to only match messages that are sent in channels.
  void onVideo(
    Handler<CTX> callback, {
    bool includeChannelPosts = false,
    bool onlyChannelPosts = false,
    ID? chatId,
    ScopeOptions<CTX>? options,
  }) {
    return _internalSubMessageHandler(
      callback,
      (ctx) => ctx.msg?.video != null,
      includeChannelPosts: includeChannelPosts,
      onlyChannelPosts: onlyChannelPosts,
      chatId: chatId,
      options: options,
    );
  }

  /// Registers a callback for messages that contain a video note.
  ///
  /// By default, this method will only match messages that are sent in private chats / groups.
  /// You can pass the [includeChannelPosts] parameter to match messages that are sent in channels.
  ///
  /// Alternatively, you can pass the [onlyChannelPosts] parameter to only match messages that are sent in channels.
  void onVideoNote(
    Handler<CTX> callback, {
    bool includeChannelPosts = false,
    bool onlyChannelPosts = false,
    ID? chatId,
    ScopeOptions<CTX>? options,
  }) {
    return _internalSubMessageHandler(
      callback,
      (ctx) => ctx.msg?.videoNote != null,
      includeChannelPosts: includeChannelPosts,
      onlyChannelPosts: onlyChannelPosts,
      chatId: chatId,
      options: options,
    );
  }

  /// Registers a callback for messages that contain a voice note.
  ///
  /// By default, this method will only match messages that are sent in private chats / groups.
  /// You can pass the [includeChannelPosts] parameter to match messages that are sent in channels.
  ///
  /// Alternatively, you can pass the [onlyChannelPosts] parameter to only match messages that are sent in channels.
  void onVoice(
    Handler<CTX> callback, {
    bool includeChannelPosts = false,
    bool onlyChannelPosts = false,
    ID? chatId,
    ScopeOptions<CTX>? options,
  }) {
    return _internalSubMessageHandler(
      callback,
      (ctx) => ctx.msg?.voice != null,
      includeChannelPosts: includeChannelPosts,
      onlyChannelPosts: onlyChannelPosts,
      chatId: chatId,
      options: options,
    );
  }

  /// Registers a callback for messages that contain a contact.
  void onContact(
    Handler<CTX> callback, {
    ID? chatId,
    ScopeOptions<CTX>? options,
  }) {
    return _internalSubMessageHandler(
      callback,
      (ctx) => ctx.msg?.contact != null,
      chatId: chatId,
      options: options,
    );
  }

  /// Registers a callback for messages that contain a dice.
  ///
  /// By default, this method will only match messages that are sent in private chats / groups.
  /// You can pass the [includeChannelPosts] parameter to match messages that are sent in channels.
  ///
  /// Alternatively, you can pass the [onlyChannelPosts] parameter to only match messages that are sent in channels.
  void onDice(
    Handler<CTX> callback, {
    bool includeChannelPosts = false,
    bool onlyChannelPosts = false,
    ID? chatId,
    ScopeOptions<CTX>? options,
  }) {
    return _internalSubMessageHandler(
      callback,
      (ctx) => ctx.msg?.dice != null,
      includeChannelPosts: includeChannelPosts,
      onlyChannelPosts: onlyChannelPosts,
      chatId: chatId,
      options: options,
    );
  }

  /// Registers a callback for messages that contain a game.
  ///
  /// By default, this method will only match messages that are sent in private chats / groups.
  /// You can pass the [includeChannelPosts] parameter to match messages that are sent in channels.
  ///
  /// Alternatively, you can pass the [onlyChannelPosts] parameter to only match messages that are sent in channels.
  void onGame(
    Handler<CTX> callback, {
    bool includeChannelPosts = false,
    bool onlyChannelPosts = false,
    ID? chatId,
    ScopeOptions<CTX>? options,
  }) {
    return _internalSubMessageHandler(
      callback,
      (ctx) => ctx.msg?.game != null,
      includeChannelPosts: includeChannelPosts,
      onlyChannelPosts: onlyChannelPosts,
      chatId: chatId,
      options: options,
    );
  }

  /// Registers a callback for messages that contain a poll.
  ///
  /// By default, this method will only match messages that are sent in private chats / groups.
  /// You can pass the [includeChannelPosts] parameter to match messages that are sent in channels.
  ///
  /// Alternatively, you can pass the [onlyChannelPosts] parameter to only match messages that are sent in channels.
  void onPollMessage(
    Handler<CTX> callback, {
    bool includeChannelPosts = false,
    bool onlyChannelPosts = false,
    ID? chatId,
    ScopeOptions<CTX>? options,
  }) {
    return _internalSubMessageHandler(
      callback,
      (ctx) => ctx.msg?.poll != null,
      includeChannelPosts: includeChannelPosts,
      onlyChannelPosts: onlyChannelPosts,
      chatId: chatId,
      options: options,
    );
  }

  /// Registers a callback for messages that contain a venue.
  ///
  /// By default, this method will only match messages that are sent in private chats / groups.
  /// You can pass the [includeChannelPosts] parameter to match messages that are sent in channels.
  ///
  /// Alternatively, you can pass the [onlyChannelPosts] parameter to only match messages that are sent in channels.
  void onVenue(
    Handler<CTX> callback, {
    bool includeChannelPosts = false,
    bool onlyChannelPosts = false,
    ID? chatId,
    ScopeOptions<CTX>? options,
  }) {
    return _internalSubMessageHandler(
      callback,
      (ctx) => ctx.msg?.venue != null,
      includeChannelPosts: includeChannelPosts,
      onlyChannelPosts: onlyChannelPosts,
      chatId: chatId,
      options: options,
    );
  }

  /// Registers a callback for messages that contains a location.
  ///
  /// By default, this method will only match messages that are sent in private chats / groups.
  /// You can pass the [includeChannelPosts] parameter to match messages that are sent in channels.
  ///
  /// Alternatively, you can pass the [onlyChannelPosts] parameter to only match messages that are sent in channels.
  void onLocation(
    Handler<CTX> callback, {
    bool includeChannelPosts = false,
    bool onlyChannelPosts = false,
    ID? chatId,
    ScopeOptions<CTX>? options,
  }) {
    return _internalSubMessageHandler(
      callback,
      (ctx) => ctx.msg?.location != null,
      includeChannelPosts: includeChannelPosts,
      onlyChannelPosts: onlyChannelPosts,
      chatId: chatId,
      options: options,
    );
  }

  /// Registers a callback for messages that is a live location update.
  void onLiveLocation(
    Handler<CTX> callback, {
    ID? chatId,
    ScopeOptions<CTX>? options,
  }) {
    return _internalSubMessageHandler(
      callback,
      (ctx) =>
          ctx.msg?.location != null && ctx.msg?.location!.livePeriod != null,
      chatId: chatId,
      options: options,
    );
  }

  /// Registers a callback for new chat title service messages.
  ///
  /// By default, this method will only match messages that are sent in private chats / groups.
  /// You can pass the [includeChannelPosts] parameter to match messages that are sent in channels.
  ///
  /// Alternatively, you can pass the [onlyChannelPosts] parameter to only match messages that are sent in channels.
  void onNewChatTitle(
    Handler<CTX> callback, {
    bool includeChannelPosts = false,
    bool onlyChannelPosts = false,
    ID? chatId,
    ScopeOptions<CTX>? options,
  }) {
    return _internalSubMessageHandler(
      callback,
      (ctx) => ctx.msg?.newChatTitle != null,
      includeChannelPosts: includeChannelPosts,
      onlyChannelPosts: onlyChannelPosts,
      chatId: chatId,
      options: options,
    );
  }

  /// Registers a callback for new chat photo service messages.
  ///
  /// By default, this method will only match messages that are sent in private chats / groups.
  /// You can pass the [includeChannelPosts] parameter to match messages that are sent in channels.
  ///
  /// Alternatively, you can pass the [onlyChannelPosts] parameter to only match messages that are sent in channels.
  void onNewChatPhoto(
    Handler<CTX> callback, {
    bool includeChannelPosts = false,
    bool onlyChannelPosts = false,
    ID? chatId,
    ScopeOptions<CTX>? options,
  }) {
    return _internalSubMessageHandler(
      callback,
      (ctx) => ctx.msg?.newChatPhoto != null,
      includeChannelPosts: includeChannelPosts,
      onlyChannelPosts: onlyChannelPosts,
      chatId: chatId,
      options: options,
    );
  }

  /// Registers a callback for delete chat photo service messages.
  void onDeleteChatPhoto(
    Handler<CTX> callback, {
    ID? chatId,
    ScopeOptions<CTX>? options,
  }) {
    return _internalSubMessageHandler(
      callback,
      (ctx) => ctx.msg?.deleteChatPhoto != null && ctx.msg!.deleteChatPhoto!,
      chatId: chatId,
      options: options,
    );
  }

  /// Registers a callback for pinned message service messages.
  ///
  /// By default, this method will only match messages that are sent in private chats / groups.
  /// You can pass the [includeChannelPosts] parameter to match messages that are sent in channels.
  ///
  /// Alternatively, you can pass the [onlyChannelPosts] parameter to only match messages that are sent in channels.
  void onPinnedMessage(
    Handler<CTX> callback, {
    bool includeChannelPosts = false,
    bool onlyChannelPosts = false,
    ID? chatId,
    ScopeOptions<CTX>? options,
  }) {
    return _internalSubMessageHandler(
      callback,
      (ctx) {
        return ctx.msg?.pinnedMessage != null;
      },
      includeChannelPosts: includeChannelPosts,
      onlyChannelPosts: onlyChannelPosts,
      chatId: chatId,
      options: options,
    );
  }

  /// Registers a callback for a user is shared to the bot
  void onUsrShared(
    Handler<CTX> callback, {
    ID? chatId,
    ScopeOptions<CTX>? options,
  }) {
    return _internalSubMessageHandler(
      callback,
      (ctx) => ctx.msg?.usersShared != null,
      chatId: chatId,
      options: options,
    );
  }

  /// Registers a callback for a chat is shared to the bot
  void onChatShared(
    Handler<CTX> callback, {
    ID? chatId,
    ScopeOptions<CTX>? options,
  }) {
    return _internalSubMessageHandler(
      callback,
      (ctx) => ctx.msg?.chatShared != null,
      chatId: chatId,
      options: options,
    );
  }

  /// Registers a callback for a video chat is scheduled
  ///
  /// By default, this method will only match messages that are sent in private chats / groups.
  /// You can pass the [includeChannelPosts] parameter to match messages that are sent in channels.
  ///
  /// Alternatively, you can pass the [onlyChannelPosts] parameter to only match messages that are sent in channels.
  void whenVideoChatScheduled(
    Handler<CTX> callback, {
    bool includeChannelPosts = false,
    bool onlyChannelPosts = false,
    ID? chatId,
    ScopeOptions<CTX>? options,
  }) {
    return _internalSubMessageHandler(
      callback,
      (ctx) {
        return ctx.msg?.videoChatScheduled != null;
      },
      includeChannelPosts: includeChannelPosts,
      onlyChannelPosts: onlyChannelPosts,
      chatId: chatId,
      options: options,
    );
  }

  /// Registers a callback for a video chat is started
  ///
  /// By default, this method will only match messages that are sent in private chats / groups.
  /// You can pass the [includeChannelPosts] parameter to match messages that are sent in channels.
  ///
  /// Alternatively, you can pass the [onlyChannelPosts] parameter to only match messages that are sent in channels.
  void whenVideoChatStarted(
    Handler<CTX> callback, {
    bool includeChannelPosts = false,
    bool onlyChannelPosts = false,
    ID? chatId,
    ScopeOptions<CTX>? options,
  }) {
    return _internalSubMessageHandler(
      callback,
      (ctx) {
        return ctx.msg?.videoChatStarted != null;
      },
      includeChannelPosts: includeChannelPosts,
      onlyChannelPosts: onlyChannelPosts,
      chatId: chatId,
      options: options,
    );
  }

  /// Registers a callback for a video chat is ended
  ///
  /// By default, this method will only match messages that are sent in private chats / groups.
  /// You can pass the [includeChannelPosts] parameter to match messages that are sent in channels.
  ///
  /// Alternatively, you can pass the [onlyChannelPosts] parameter to only match messages that are sent in channels.
  void whenVideoChatEnded(
    Handler<CTX> callback, {
    bool includeChannelPosts = false,
    bool onlyChannelPosts = false,
    ID? chatId,
    ScopeOptions<CTX>? options,
  }) {
    return _internalSubMessageHandler(
      callback,
      (ctx) {
        return ctx.msg?.videoChatEnded != null;
      },
      includeChannelPosts: includeChannelPosts,
      onlyChannelPosts: onlyChannelPosts,
      chatId: chatId,
      options: options,
    );
  }

  /// Registers a callback to be fired when new participants are invited to a video chat
  void whenVideoChatParticipantsInvited(
    Handler<CTX> callback, {
    ID? chatId,
    ScopeOptions<CTX>? options,
  }) {
    return _internalSubMessageHandler(
      callback,
      (ctx) => ctx.msg?.videoChatParticipantsInvited != null,
      chatId: chatId,
      options: options,
    );
  }

  /// Registers a callback to be fired when a forum topic is created
  void onForumTopicCreated(
    Handler<CTX> callback, {
    ID? chatId,
    ScopeOptions<CTX>? options,
  }) {
    return _internalSubMessageHandler(
      callback,
      (ctx) => ctx.msg?.forumTopicCreated != null,
      chatId: chatId,
      options: options,
    );
  }

  /// Registers a callback to be fired when a forum topic is edited
  void onForumTopicEdited(
    Handler<CTX> callback, {
    ID? chatId,
    ScopeOptions<CTX>? options,
  }) {
    return _internalSubMessageHandler(
      callback,
      (ctx) => ctx.msg?.forumTopicEdited != null,
      chatId: chatId,
      options: options,
    );
  }

  /// Registers a callback to be fired when a forum topic is closed
  void onForumTopicClosed(
    Handler<CTX> callback, {
    ID? chatId,
    ScopeOptions<CTX>? options,
  }) {
    return _internalSubMessageHandler(
      callback,
      (ctx) => ctx.msg?.forumTopicClosed != null,
      chatId: chatId,
      options: options,
    );
  }

  /// Registers a callback to be fired when a forum topic is reopened
  void onForumTopicReopened(
    Handler<CTX> callback, {
    ID? chatId,
    ScopeOptions<CTX>? options,
  }) {
    return _internalSubMessageHandler(
      callback,
      (ctx) => ctx.msg?.forumTopicReopened != null,
      chatId: chatId,
      options: options,
    );
  }

  /// Registers a callback to be fired when data sent from a web app is received
  void onWebAppData(
    Handler<CTX> callback, {
    ID? chatId,
    ScopeOptions<CTX>? options,
  }) {
    return _internalSubMessageHandler(
      callback,
      (ctx) => ctx.msg?.webAppData != null,
      chatId: chatId,
      options: options,
    );
  }

  /// Registers a callback to be fired when an animation is sent
  ///
  /// By default, this method will only match messages that are sent in private chats / groups.
  /// You can pass the [includeChannelPosts] parameter to match messages that are sent in channels.
  ///
  /// Alternatively, you can pass the [onlyChannelPosts] parameter to only match messages that are sent in channels.
  void onAnimation(
    Handler<CTX> callback, {
    bool includeChannelPosts = false,
    bool onlyChannelPosts = false,
    ID? chatId,
    ScopeOptions<CTX>? options,
  }) {
    return _internalSubMessageHandler(
      callback,
      (ctx) {
        return ctx.msg?.animation != null;
      },
      includeChannelPosts: includeChannelPosts,
      onlyChannelPosts: onlyChannelPosts,
      chatId: chatId,
      options: options,
    );
  }

  /// Registers a callback to be fired when a text message is received.
  ///
  /// By default, this method will only match messages that are sent in private chats / groups.
  /// You can pass the [includeChannelPosts] parameter to match messages that are sent in channels.
  ///
  /// Alternatively, you can pass the [onlyChannelPosts] parameter to only match messages that are sent in channels.
  void onText(
    Handler<CTX> callback, {
    bool includeChannelPosts = false,
    bool onlyChannelPosts = false,
    ID? chatId,
    ScopeOptions<CTX>? options,
  }) {
    return _internalSubMessageHandler(
      callback,
      (ctx) {
        return ctx.msg?.text != null;
      },
      includeChannelPosts: includeChannelPosts,
      onlyChannelPosts: onlyChannelPosts,
      chatId: chatId,
      options: options,
    );
  }

  /// Registers a callback to be fired when a message with caption is received.
  ///
  /// By default, this method will only match messages that are sent in private chats / groups.
  /// You can pass the [includeChannelPosts] parameter to match messages that are sent in channels.
  ///
  /// Alternatively, you can pass the [onlyChannelPosts] parameter to only match messages that are sent in channels.
  void onCaption(
    Handler<CTX> callback, {
    bool includeChannelPosts = false,
    bool onlyChannelPosts = false,
    ID? chatId,
    ScopeOptions<CTX>? options,
  }) {
    return _internalSubMessageHandler(
      callback,
      (ctx) {
        return ctx.msg?.caption != null;
      },
      includeChannelPosts: includeChannelPosts,
      onlyChannelPosts: onlyChannelPosts,
      chatId: chatId,
      options: options,
    );
  }

  /// Attach an Inline Menu.
  ///
  /// This method will make the menu handlers to be called when the menu buttons are pressed.
  void attachMenu(TeleverseMenu<CTX> menu) {
    if (menu is InlineMenu<CTX>) {
      int rows = menu._buttons.length;
      for (int i = 0; i < rows; i++) {
        int cols = menu._buttons[i].length;
        for (int j = 0; j < cols; j++) {
          if (menu._buttons[i][j].hasHandler) {
            final data =
                menu._buttons[i][j].getData() ?? menu._buttons[i][j].text;
            _internalCallbackQueryRegister(
              data,
              menu._buttons[i][j].handler as Handler,
              options: ScopeOptions(name: "${menu.name}-$data"),
            );
          }
        }
      }
    }
    if (menu is KeyboardMenu<CTX>) {
      int rows = menu._buttons.length;
      for (int i = 0; i < rows; i++) {
        int cols = menu._buttons[i].length;
        for (int j = 0; j < cols; j++) {
          final button = menu._buttons[i][j];
          final text = button.text;
          final name = "${menu.name}-$text";

          final action = button.handler;
          switch (button.runtimeType) {
            case const (_KeyboardMenuTextButton):
              _internalSubMessageHandler(
                action!,
                (ctx) => ctx.message?.text == text,
                options: ScopeOptions._createOrCopy<CTX>(
                  button.options,
                  name: name,
                ),
              );
              break;
            case const (_KeyboardMenuRequestContactButton):
              _internalSubMessageHandler(
                action!,
                (ctx) => ctx.message?.contact != null,
                options: ScopeOptions._createOrCopy<CTX>(
                  button.options,
                  name: name,
                ),
              );
              break;
            case const (_KeyboardMenuRequestLocationButton):
              _internalSubMessageHandler(
                action!,
                (ctx) => ctx.message?.location != null,
                options: ScopeOptions._createOrCopy<CTX>(
                  button.options,
                  name: name,
                ),
              );
              break;
            case const (_KeyboardMenuRequestUsersButton):
              _internalSubMessageHandler(
                action!,
                (ctx) => ctx.message?.usersShared != null,
                options: ScopeOptions._createOrCopy(button.options, name: name),
              );
          }
        }
      }
    }
  }

  /// Remove an Inline Menu.
  void removeMenu(TeleverseMenu<CTX> menu) {
    _handlerScopes.removeWhere(
      (scope) => scope.name?.startsWith(menu.name) ?? false,
    );
  }

  /// Next step handler
  void setNextStep(
    Message msg,
    Handler<CTX> callback,
    ScopeOptions<CTX>? options,
  ) {
    final scopeName = "next-step-${msg.messageId}";
    bool isNextMessage(int? messageId) {
      return messageId == msg.messageId + 1 || messageId == msg.messageId + 2;
    }

    filter(
      (ctx) {
        return (ctx.chat?.isTheSameChat(msg.chat.getId()) ?? false) &&
            isNextMessage(ctx.message?.messageId);
      },
      (ctx) async {
        await callback(ctx);
        _handlerScopes.removeWhere((scope) => scope.name == scopeName);
      },
      options: options,
    );
  }

  /// Register a callback for any command.
  ///
  /// This method will match any command that is sent to the bot.
  void onCommand(
    Handler<CTX> callback, {
    bool includeChannelPosts = false,
    bool onlyChannelPosts = false,
    ID? chatId,
    ScopeOptions<CTX>? options,
  }) {
    return _internalSubMessageHandler(
      callback,
      (ctx) {
        return ctx.msg?.entities?.any((element) {
              return element.type == MessageEntityType.botCommand &&
                  element.offset == 0;
            }) ??
            false;
      },
      includeChannelPosts: includeChannelPosts,
      onlyChannelPosts: onlyChannelPosts,
      chatId: chatId,
      options: options,
    );
  }

  /// Register a callback when a reaction to a message was changed by a user.
  void onMessageReaction(
    Handler<CTX> callback, {
    ScopeOptions<CTX>? options,
  }) {
    return _acceptAll(
      callback,
      [UpdateType.messageReaction],
      options: options,
    );
  }

  /// Reactions to a message with anonymous reactions were changed.
  void onMessageReactionCount(
    Handler<CTX> callback, {
    ScopeOptions<CTX>? options,
  }) {
    return _acceptAll(
      callback,
      [UpdateType.messageReactionCount],
      options: options,
    );
  }

  /// Registers a callback for when the chat was boosted.
  ///
  /// The bot must be an administrator in the chat for this to work.
  void onChatBoosted(
    Handler<CTX> callback, {
    ScopeOptions<CTX>? options,
  }) {
    return _acceptAll(
      callback,
      [UpdateType.chatBoost],
      options: options,
    );
  }

  /// Registers a callback to be fired when the chat boost was removed.
  ///
  /// The bot must be an administrator in the chat for this to work.
  void onChatBoostRemoved(
    Handler<CTX> callback, {
    ScopeOptions<CTX>? options,
  }) {
    return _acceptAll(
      callback,
      [UpdateType.chatBoostRemoved],
      options: options,
    );
  }

  /// Registers a callback to be fired when a user reacts given emoji to a message.
  void whenReacted(
    String emoji,
    Handler<CTX> callback, {
    ScopeOptions<CTX>? options,
  }) {
    final scope = HandlerScope<CTX>(
      options: options,
      handler: callback,
      types: [
        UpdateType.messageReaction,
      ],
      predicate: (ctx) {
        return ctx.messageReaction?.newReaction.any((ReactionType el) {
              if (el is ReactionTypeEmoji) {
                try {
                  return el.emoji.codeUnitAt(0) == emoji.codeUnitAt(0);
                } catch (_) {
                  return false;
                }
              }
              return false;
            }) ??
            false;
      },
    );

    _handlerScopes.add(scope);
  }

  /// Registers a callback to be fired when a connection of the bot with a business account is made.
  void onBusinessConnection(
    Handler<CTX> callback, {
    ScopeOptions<CTX>? options,
  }) {
    return _acceptAll(
      callback,
      [UpdateType.businessConnection],
      options: options,
    );
  }

  /// Registers callback to be fired when a new message is received in a business account connected to the bot.
  void onBusinessMessage(
    Handler<CTX> callback, {
    ScopeOptions<CTX>? options,
  }) {
    return _acceptAll(
      callback,
      [UpdateType.businessMessage],
      options: options,
    );
  }

  /// Registers a callback to be fired when a business message is edited.
  void onBusinessMessageEdited(
    Handler<CTX> callback, {
    ScopeOptions<CTX>? options,
  }) {
    return _acceptAll(
      callback,
      [UpdateType.channelPost],
      options: options,
    );
  }

  /// Registers a callback to be fired when a business message is deleted.
  void onBusinessMessageDeleted(
    Handler<CTX> callback, {
    ScopeOptions<CTX>? options,
  }) {
    return _acceptAll(
      callback,
      [UpdateType.deletedBusinessMessages],
      options: options,
    );
  }

  /// Removes an already added listener by name
  bool removeScope(String name) {
    final ix = _handlerScopes.indexWhere((s) => s.name == name);
    if (ix == -1) return false;
    _handlerScopes.removeAt(ix);
    return true;
  }

  /// Registers a callback for whenever paid media is received.
  void onPaidMedia(
    Handler<CTX> callback, {
    bool includeChannelPosts = false,
    bool onlyChannelPosts = false,
    ID? chatId,
    ScopeOptions<CTX>? options,
  }) {
    return _internalSubMessageHandler(
      callback,
      (ctx) {
        return ctx.msg?.paidMedia != null;
      },
      includeChannelPosts: includeChannelPosts,
      onlyChannelPosts: onlyChannelPosts,
      chatId: chatId,
      options: options,
    );
  }

  /// Registers a callback for whenever paid media video is received.
  void onPaidMediaVideo(
    Handler<CTX> callback, {
    bool includeChannelPosts = false,
    bool onlyChannelPosts = false,
    ID? chatId,
    ScopeOptions<CTX>? options,
  }) {
    return _internalSubMessageHandler(
      callback,
      (ctx) {
        return ctx.msg?.paidMedia != null &&
            ctx.msg!.paidMedia!.paidMedia.any(
              (media) => media is PaidMediaVideo,
            );
      },
      includeChannelPosts: includeChannelPosts,
      onlyChannelPosts: onlyChannelPosts,
      chatId: chatId,
      options: options,
    );
  }

  /// Registers a callback for whenever paid media photo is received.
  void onPaidMediaPhoto(
    Handler<CTX> callback, {
    bool includeChannelPosts = false,
    bool onlyChannelPosts = false,
    ID? chatId,
    ScopeOptions<CTX>? options,
  }) {
    return _internalSubMessageHandler(
      callback,
      (ctx) {
        return ctx.msg?.paidMedia?.paidMedia != null &&
            ctx.msg!.paidMedia!.paidMedia.any(
              (media) => media is PaidMediaPhoto,
            );
      },
      includeChannelPosts: includeChannelPosts,
      onlyChannelPosts: onlyChannelPosts,
      chatId: chatId,
      options: options,
    );
  }

  /// Registers a callback to be fired when a user purchases paid media sent by the bot
  void onPaidMediaPurchase(
    Handler<CTX> callback,
  ) {
    return _acceptAll(
      callback,
      [UpdateType.purchasedPaidMedia],
    );
  }
}
