part of '../../../televerse.dart';

/// Represents additional options that can be passed to create Handler Scope
class ScopeOptions<CTX extends Context> {
  /// Name of the Handler Scope.
  ///
  /// This can be used to remove a Handler later on your code.
  final String? name;

  /// Custom Predicate Method
  ///
  /// Often some handlers require restricted access, like admin controls or bans.
  /// Checking permissions for each command can be tedious. This is where custom
  /// predicates come in.
  ///
  /// By providing a custom predicate, you can control when an update is processed.
  /// The update will only be applied if the predicate evaluates to `true`.
  /// Otherwise, the Bot moves on to the next available handler.
  ///
  /// This approach keeps your code clean and avoids repetitive permission checks.
  ///
  /// If by any reason, this method threw any exception, it'll be caught in the passed `Bot.onError` if set.
  /// Otherwise, treated as `false` evaluation and skips the current handler.
  final FutureOr<bool> Function(CTX ctx)? customPredicate;

  /// A list of middleware functions to be executed before the handler for this scope.
  ///
  /// When provided, these middlewares will be executed in order before the handler.
  /// Each middleware can modify the context, perform checks, or stop the execution chain.
  /// Scope-specific middlewares are executed before global middlewares.
  ///
  /// Example:
  /// ```dart
  /// bot.command(
  ///   'admin',
  ///   adminHandler,
  ///   options: ScopeOptions.chain(
  ///     middlewares: [
  ///       loggerMiddleware,
  ///       adminCheck,
  ///       rateLimiter,
  ///     ],
  ///   ),
  /// );
  /// ```
  final List<MiddlewareFunction<CTX>>? middlewares;

  /// Constructs a `ScopeOption`.
  ///
  /// - [name] - Name of the Handler Scope. This can be used to remove the scope later.
  const ScopeOptions({
    this.name,
    this.customPredicate,
    this.middlewares,
  });

  /// Creates a [ScopeOptions] instance with bound middleware functions.
  ///
  /// This constructor provides a convenient way to bind a list of middlewares
  /// to a scope without needing to specify them in named parameters.
  ///
  /// [middlewares] The list of middleware functions to be executed.
  /// [customPredicate] Optional predicate function for additional update filtering.
  /// [name] Optional name identifier for the scope.
  ///
  /// Example:
  /// ```dart
  /// final adminScope = ScopeOptions.chain(
  ///   [loggerMiddleware, adminCheck],
  ///   customPredicate: (ctx) => ctx.chat?.type == 'private',
  /// );
  ///
  /// bot.command('stats', statsHandler, options: adminScope);
  /// bot.command('config', configHandler, options: adminScope);
  /// ```
  const ScopeOptions.chain(
    List<MiddlewareFunction> this.middlewares, {
    this.customPredicate,
    this.name,
  });

  /// Creates a copy of this [ScopeOptions] object with potentially modified properties.
  ///
  /// Provides options to override the following properties:
  ///
  /// * [name]: The name of the scope. If not provided, it will be inherited from the original object.
  /// * [customPredicate]: A custom predicate function that determines when updates within the scope are processed.
  ///   If not provided, it will be inherited from the original object.
  ///
  /// The predicate function receives a [Context] object as an argument and should return a [FutureOr<bool>].
  /// The update is only processed if the predicate function evaluates to `true`.
  ///
  /// Returns a new instance of [ScopeOptions] with the updated properties.
  ScopeOptions<CTX> copyWith({
    String? name,
    FutureOr<bool> Function(CTX ctx)? customPredicate,
    List<MiddlewareFunction<CTX>>? middlewares,
  }) {
    return ScopeOptions<CTX>(
      name: name ?? this.name,
      customPredicate: customPredicate ?? this.customPredicate,
      middlewares: middlewares ?? this.middlewares,
    );
  }

  /// Internal copyWith
  static ScopeOptions<CTX> _createOrCopy<CTX extends Context>(
    ScopeOptions<CTX>? options, {
    String? name,
    FutureOr<bool> Function(CTX ctx)? customPredicate,
    List<MiddlewareFunction<CTX>>? middlewares,
  }) {
    if (options != null) {
      return options.copyWith(
        name: name,
        customPredicate: customPredicate,
        middlewares: middlewares,
      );
    }

    return ScopeOptions<CTX>(
      name: name,
      customPredicate: customPredicate,
      middlewares: middlewares,
    );
  }
}
