part of televerse.models;

/// A Handler Scope is used to define the scope and related information of a handler method.
class HandlerScope<T extends Function> {
  /// Whether the handler is a special handler.
  final bool special;

  /// If it's a command handler, we might check for /start command and set `startParameter` to the parameter of the command.
  final bool isCommand;

  /// If it's a RegExp handler, we'll set the `MessageContext.matches` to the matches of the RegExp.
  final bool isRegExp;

  /// The RegExp pattern.
  final RegExp? pattern;

  /// Handler
  final T handler;

  /// The update type
  final List<UpdateType> types;

  /// Predicate to filter updates
  final bool Function(Context ctx) predicate;

  /// Creates a new [HandlerScope].
  const HandlerScope({
    required this.handler,
    required this.predicate,
    required this.types,
    this.isCommand = false,
    this.isRegExp = false,
    this.pattern,
  }) : special = isCommand || isRegExp;

  /// Create context for the specified update.
  Context context(Televerse t, Update update) {
    return Context.create(t, update);
  }
}
