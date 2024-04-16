part of 'models.dart';

/// A Handler Scope is used to define the scope and related information of a handler method.
class HandlerScope {
  /// If it's a command handler, we set `args` to the parameter of the command.
  final bool isCommand;

  /// If it's a RegExp handler, we'll set the `MessageContext.matches` to the matches of the RegExp.
  final bool isRegExp;

  /// The RegExp pattern.
  final RegExp? pattern;

  /// Handler
  ///
  /// Required unless [isConversation] is `true`.
  final Handler? handler;

  /// The update type
  final List<UpdateType> types;

  /// Predicate to filter updates
  final bool Function(Context ctx) predicate;

  /// A flag that indicates if this is a conversation scope.
  final bool isConversation;

  /// Chat ID of the conversation.
  final ID? chatId;

  /// Scope Options - Additional parameters for the scope.
  final ScopeOptions? options;

  /// Creates a new [HandlerScope].
  HandlerScope({
    this.handler,
    required this.predicate,
    required this.types,
    this.isCommand = false,
    this.isRegExp = false,
    this.pattern,
    this.isConversation = false,
    this.chatId,
    this.options,
  }) : assert(handler != null || isConversation);

  /// Whether the scope is forked or not.
  bool get forked => options?.forked ?? false;

  /// Name of the scope
  String? get name => options?.name;

  /// Whether the scope has a custom predicate
  bool get hasCustomPredicate => options?.customPredicate != null;
}
