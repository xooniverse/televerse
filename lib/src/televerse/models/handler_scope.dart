part of 'models.dart';

/// A Handler Scope is used to define the scope and related information of a handler method.
class HandlerScope {
  /// Optional. The name of the handler. (For debugging purposes)
  final String? name;

  /// Whether the handler is a special handler.
  ///
  /// True if it's a command handler or a RegExp handler.
  ///
  /// - If it's a command handler, we set `args` to the parameter of the command.
  /// - If it's a RegExp handler, we'll set the `MessageContext.matches` to the matches of the RegExp.
  final bool special;

  /// If it's a command handler, we set `args` to the parameter of the command.
  final bool isCommand;

  /// If it's a RegExp handler, we'll set the `MessageContext.matches` to the matches of the RegExp.
  final bool isRegExp;

  /// The RegExp pattern.
  final RegExp? pattern;

  /// Handler
  final Handler? handler;

  /// The update type
  final List<UpdateType> types;

  /// Predicate to filter updates
  final bool Function(Context ctx) predicate;

  /// A flag that indicates if this is a conversation scope.
  final bool isConversation;

  /// Chat ID of the conversation.
  final ID? chatId;

  /// Creates a new [HandlerScope].
  const HandlerScope({
    this.name,
    this.handler,
    required this.predicate,
    required this.types,
    this.isCommand = false,
    this.isRegExp = false,
    this.pattern,
    this.isConversation = false,
    this.chatId,
  })  : special = isCommand || isRegExp,
        assert(handler != null || isConversation);
}
