part of '../../../televerse.dart';

/// Entity text extraction and manipulation methods for Context
extension ContextEntityExtension on Context {
  /// Extracts text for entities of the specified type from the current message.
  ///
  /// This method looks for entities in message text, caption, or channel post
  /// and returns the text content for entities matching the specified [type].
  ///
  /// For certain entity types, the text is processed:
  /// - Mentions, hashtags, cashtags: Leading symbol (@, #, $) is removed
  /// - Bot commands: Leading '/' and bot username (if present) are removed
  /// - Custom emojis: Returns the custom emoji ID instead of text
  ///
  /// Returns null if:
  /// - No message/text is available
  /// - No entities are found
  /// - No entities of the specified type exist
  ///
  /// Example:
  /// ```dart
  /// // For message: "Hello @username, check #telegram"
  /// final mention = ctx.getEntityText(MessageEntityType.mention); // "username"
  /// final hashtag = ctx.getEntityText(MessageEntityType.hashtag); // "telegram"
  /// ```
  String? getEntityText(MessageEntityType type) {
    final entityData = _getEntityData();
    if (entityData == null) return null;

    final entity = entityData.entities.where((e) => e.type == type).firstOrNull;

    if (entity == null) return null;

    return _extractEntityText(entity, entityData.text, type);
  }

  /// Extracts text for all entities of the specified type.
  ///
  /// Unlike [getEntityText] which returns only the first match,
  /// this method returns all occurrences of the specified entity type.
  ///
  /// Returns an empty list if no entities of the specified type are found.
  ///
  /// Example:
  /// ```dart
  /// // For message: "Check #flutter and #dart hashtags"
  /// final hashtags = ctx.getAllEntityTexts(MessageEntityType.hashtag);
  /// // Returns: ["flutter", "dart"]
  /// ```
  List<String> getAllEntityTexts(MessageEntityType type) {
    final entityData = _getEntityData();
    if (entityData == null) return [];

    return entityData.entities
        .where((e) => e.type == type)
        .map((entity) => _extractEntityText(entity, entityData.text, type))
        .where((text) => text != null)
        .cast<String>()
        .toList();
  }

  /// Gets all entities with their corresponding text content.
  ///
  /// Returns a map where keys are entity types and values are lists of
  /// text content for each entity of that type.
  ///
  /// Example:
  /// ```dart
  /// // For message: "Hello @user1 @user2 #flutter"
  /// final allEntities = ctx.getAllEntitiesWithText();
  /// // Returns: {
  /// //   MessageEntityType.mention: ["user1", "user2"],
  /// //   MessageEntityType.hashtag: ["flutter"]
  /// // }
  /// ```
  Map<MessageEntityType, List<String>> getAllEntitiesWithText() {
    final entityData = _getEntityData();
    if (entityData == null) return {};

    final result = <MessageEntityType, List<String>>{};

    for (final entity in entityData.entities) {
      final text = _extractEntityText(entity, entityData.text, entity.type);
      if (text != null) {
        result.putIfAbsent(entity.type, () => []).add(text);
      }
    }

    return result;
  }

  /// Gets the first command from the message (if any).
  ///
  /// This is a convenience method specifically for bot commands.
  /// Returns the command without the leading '/' and without the bot username.
  ///
  /// Example:
  /// ```dart
  /// // For message: "/start@mybot hello world"
  /// final command = ctx.getCommand(); // "start"
  /// ```
  String? getCommand() {
    return getEntityText(MessageEntityType.botCommand);
  }

  /// Gets all commands from the message.
  ///
  /// Returns a list of all bot commands in the message without the leading '/'
  /// and without bot usernames.
  List<String> getAllCommands() {
    return getAllEntityTexts(MessageEntityType.botCommand);
  }

  /// Gets all mentions from the message.
  ///
  /// Returns a list of all mentioned usernames without the leading '@'.
  List<String> getMentions() {
    return getAllEntityTexts(MessageEntityType.mention);
  }

  /// Gets all hashtags from the message.
  ///
  /// Returns a list of all hashtags without the leading '#'.
  List<String> getHashtags() {
    return getAllEntityTexts(MessageEntityType.hashtag);
  }

  /// Gets all URLs from the message.
  ///
  /// Returns a list of all URLs found in the message.
  List<String> getUrls() {
    return getAllEntityTexts(MessageEntityType.url);
  }

  /// Gets the raw text content without any entity processing.
  ///
  /// This method returns the complete text from message, caption, or channel post
  /// without any entity-based modifications.
  String? getRawText() {
    return _getEntityData()?.text;
  }

  /// Checks if the message contains entities of the specified type.
  ///
  /// Example:
  /// ```dart
  /// if (ctx.hasEntityType(MessageEntityType.mention)) {
  ///   await ctx.reply("I see you mentioned someone!");
  /// }
  /// ```
  bool hasEntityType(MessageEntityType type) {
    final entityData = _getEntityData();
    return entityData?.entities.any((e) => e.type == type) ?? false;
  }

  /// Checks if the message contains any entities.
  bool hasEntities() {
    final entityData = _getEntityData();
    return entityData?.entities.isNotEmpty ?? false;
  }

  // Private helper methods

  /// Internal data structure for entity extraction
  _EntityData? _getEntityData() {
    if (msg != null && msg?.text != null && msg?.entities != null) {
      return _EntityData(msg!.text!, msg!.entities!);
    }
    if (msg != null && msg?.caption != null && msg?.captionEntities != null) {
      return _EntityData(msg!.caption!, msg!.captionEntities!);
    }
    return null;
  }

  /// Extracts and processes text for a specific entity
  String? _extractEntityText(
    MessageEntity entity,
    String text,
    MessageEntityType type,
  ) {
    // Validate entity bounds
    if (entity.offset < 0 ||
        entity.length <= 0 ||
        entity.offset + entity.length > text.length) {
      return null;
    }

    try {
      String entityText = text.substring(
        entity.offset,
        entity.offset + entity.length,
      );

      // Process text based on entity type
      return _processEntityText(entityText, entity, type);
    } catch (e) {
      // Return null if text extraction fails (e.g., invalid UTF-16 boundaries)
      return null;
    }
  }

  /// Processes extracted entity text based on its type
  String _processEntityText(
    String text,
    MessageEntity entity,
    MessageEntityType type,
  ) {
    switch (type) {
      case MessageEntityType.mention:
      case MessageEntityType.hashtag:
      case MessageEntityType.cashtag:
        // Remove leading symbol (@, #, $)
        return text.length > 1 ? text.substring(1) : text;

      case MessageEntityType.botCommand:
        // Remove leading '/' and bot username if present
        if (text.startsWith('/')) {
          String command = text.substring(1);
          final atIndex = command.indexOf('@');
          if (atIndex != -1) {
            command = command.substring(0, atIndex);
          }
          return command;
        }
        return text;

      case MessageEntityType.customEmoji:
        // Return custom emoji ID instead of text
        return entity.customEmojiId ?? text;

      // For these types, return text as-is
      case MessageEntityType.textMention:
      case MessageEntityType.url:
      case MessageEntityType.email:
      case MessageEntityType.phoneNumber:
      case MessageEntityType.bold:
      case MessageEntityType.italic:
      case MessageEntityType.underline:
      case MessageEntityType.strikethrough:
      case MessageEntityType.spoiler:
      case MessageEntityType.code:
      case MessageEntityType.pre:
      case MessageEntityType.textLink:
      case MessageEntityType.blockquote:
      case MessageEntityType.expandableBlockquote:
        return text;
    }
  }
}

/// Internal helper class for entity data
class _EntityData {
  final String text;
  final List<MessageEntity> entities;

  const _EntityData(this.text, this.entities);
}
