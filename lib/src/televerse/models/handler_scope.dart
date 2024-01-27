part of 'models.dart';

/// A Handler Scope is used to define the scope and related information of a handler method.
class HandlerScope<T extends Function> {
  /// Optional. The name of the handler. (For debugging purposes)
  final String? name;

  /// Whether the handler is a special handler.
  final bool special;

  /// If it's a command handler, we might check for /start command and set `startParameter` to the parameter of the command.
  final bool isCommand;

  /// If it's a RegExp handler, we'll set the `MessageContext.matches` to the matches of the RegExp.
  final bool isRegExp;

  /// The RegExp pattern.
  final RegExp? pattern;

  /// Handler
  final T? handler;

  /// The update type
  final List<UpdateType> types;

  /// Predicate to filter updates
  final bool Function(Context ctx) predicate;

  /// A flag that indicates if this is a conversation scope.
  final bool isConversation;

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
  })  : special = isCommand || isRegExp,
        assert(handler != null || isConversation);

  /// Create context for the specified update.
  Context context(Bot t, Update update) {
    return Context.create(t, update);
  }
}
