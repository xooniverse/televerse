part of '../../../televerse.dart';

/// Telegram Exceptions Database
///
/// Thanks to https://github.com/TelegramBotAPI/errors for the collection of errors.
enum TGException {
  /// Unauthorized exception
  unauthorized._(
    code: 401,
    description: "Unauthorized",
    reason: "Bot token is incorrect.",
    help:
        "Double check the Bot Token, and pass the correct Bot token to create the Bot instance.",
  ),

  /// Chat Not Found
  chatNotFound._(
    code: 400,
    description: "Bad Request: chat not found",
    reason: "Passsed incorrect `chat_id` in.",
    help:
        "It is important to note that the Bot cannot initiate chat with a user. Bots can only send messages to already known chats. Double check the passed `chat_id` parameter.",
  ),

  /// User not found
  userNotFound._(
    code: 400,
    description: "Bad Request: user not found",
    reason: "Incorrect `user_id` is passed with the request",
    help:
        "This exception is thrown when you try to promote a non-existent user in a chat or similar context. Double check if the `user_id` parameter in the request to fix this issue.",
  ),

  /// Participant ID invalid
  invalidParticipantId._(
    code: 400,
    description: "Bad Request: PARTICIPANT_ID_INVALID",
    reason: "Invalid `user_id` prameter in the request.",
    help:
        "This exception usually occurs when trying to ban/restrict a non existent user in a chat. Double check the passed `user_id` parameter in the request.",
  ),

  /// User is deactivated
  deactivatedUser._(
    code: 403,
    description: "Forbidden: user is deactivated",
    reason:
        "You're trying to perform an action on a user account that has been deactivated or deleted",
    help: "Make sure the `user_id` parameter in the request is correct.",
  ),

  /// Forbidden: bot was kicked from the group chat
  botIsKicked._(
    code: 403,
    description: "Forbidden: bot was kicked from the group chat",
    reason: "Bot was kicked	from the group chat",
    help:
        "The bot has been kicked from the group. You should not deal with this particular `chat_id`",
  ),

  /// Forbidden: bot was blocked by the user
  blockedByUser._(
    code: 403,
    description: "Forbidden: bot was blocked by the user",
    reason: "The user have blocked the bot",
    help: "You should not deal with this particular `chat_id`",
  ),

  /// Forbidden: bot can't send messages to bots
  botToBot._(
    code: 403,
    description: "Forbidden: bot can't send messages to bots",
    reason: "You tried to send a message to another bot. This is not possible",
    help:
        "Bots cannot talk with bots. You should not deal with this particular `chat_id",
  ),

  /// Too Many Requests: retry after X
  tooManyRequest._(
    code: 429,
    description: r"Too Many Requests: retry after \d+",
    reason: "You are hitting the API limit.",
    help:
        "All of the API endpoinds have its own rate limiting. The Bot API will not allow more than 30 messages per second or so. More information here: https://core.telegram.org/bots/faq#my-bot-is-hitting-limits-how-do-i-avoid-this",
  ),

  /// Bad Request: group chat was migrated to a supergroup chat
  migratedToSupergroup._(
    code: 400,
    description: "Bad Request: group chat was migrated to a supergroup chat",
    reason:
        "Occurs when a group chat has been converted/migrated to a supergroup",
    help:
        "Check the provided `chat_id` and make sure the new Super Group ID is passed.",
  ),

  /// Bad Request: invalid file id
  invalidFileId._(
    code: 400,
    description: "Bad Request: invalid file id",
    reason: "The file id you are trying to retrieve doesn't exist.",
    help:
        "Make sure that you're passing the correct `file_id` to the request. Another possible solution is to check if the file exist using `getFile` call.",
  ),

  /// Bad Request: message is not modified
  messageIsNotModified._(
    code: 400,
    description: "Bad Request: message is not modified",
    reason: "The current and new message text and reply markups are the same.",
    help:
        "Either change the text or change the InlineReplyMarkup of the speicifed Message.",
  ),

  /// Conflict: terminated by other long poll or webhook
  terminated._(
    code: 409,
    description: "Conflict: terminated by other long poll or webhook",
    reason:
        "You have already set up a webhook and are trying to get the updates via `getUpdates`	",
    help: "DO NOT leave multiple Bot instances running.",
  ),

  /// Bad Request: message text is empty
  messageTextisEmpty._(
    code: 400,
    description: "Bad Request: message text is empty",
    reason: "The message text is empty or not provided",
    help:
        "This exception is possibly occured in either `sendMessage`, `editMessageText`. You must set the `text` property to a valid value.",
  ),

  /// Bad Request: wrong parameter action in request
  invalidChatAction._(
    code: 400,
    description: "Bad Request: wrong parameter action in request",
    reason: "Occurs when the action property value is invalid	",
    help:
        "Provide a valid value to the action property as specified in the documentation. (Use ChatAction enum).",
  ),

  /// Bad Request: TOPIC_CLOSED
  topicClosed._(
    code: 400,
    description: "Bad Request: TOPIC_CLOSED",
    reason:
        "The forum topic has been closed. Sending messages to this TOPIC is not allowed.",
    help:
        "Either set the `message_thread_id` to a valid open TOPIC id or make the bot an admin of the chat",
  ),

  /// Bad Request: message thread not found
  threadNotFound._(
    code: 400,
    description: "Bad Request: message thread not found",
    reason:
        "This occurs when bot is trying to send message to a non-existing thread.",
    help: "Pass the correct id in message_thread_id parameter.",
  ),

  /// Conflict: can't use getUpdates method while webhook is active; use deleteWebhook to delete the webhook first
  webhookActiveCantLongPoll._(
    code: 409,
    description:
        "Conflict: can't use getUpdates method while webhook is active; use deleteWebhook to delete the webhook first",
    reason: "You are trying to use getUpdates while a webhook is active.",
    help: "Use deleteWebhook to delete the webhook first.",
  ),

  /// Bad Request: query is too old and response timeout expired or query ID is invalid
  queryIsTooOldOrExpired._(
    code: 400,
    description:
        "Bad Request: query is too old and response timeout expired or query ID is invalid",
    reason:
        "This exception occurs when you invoke the answerCallbackQuery method more than once for the same callback query or after the callback query has expired.",
    help:
        "To avoid this exception, ensure that you only call the `answerCallbackQuery` method once for each callback query and do so before the query expires.",
  ),
  ;

  /// Description of the exception
  final String description;

  /// Status code for this kind of exception.
  final int code;

  /// Human readable description or reason behind the exception
  final String reason;

  /// Possible solution to fix this kind of exception.
  final String help;

  /// Constructor
  const TGException._({
    required this.code,
    required this.description,
    required this.help,
    required this.reason,
  });

  /// Finds a TGException that matches the description.
  static TGException? find(String description) {
    try {
      return TGException.values.firstWhere((e) {
        return RegExp(e.description).hasMatch(description);
      });
    } catch (_) {
      return null;
    }
  }
}
