part of '../../../televerse.dart';

/// Represents additional options that can be passed to create Handler Scope
class ScopeOptions {
  /// Name of the Handler Scope.
  ///
  /// This can be used to remove a Handler later on your code.
  final String? name;

  /// Whether the scope is forked.
  ///
  /// By default fork is set to `false` that is once a matching scope is found
  /// the processor only executes that particular scope and skips all the rest.
  ///
  /// When fork is set to `true` the successive Handler Scope is also considered
  /// and executed if it satisfies the predicate.
  final bool forked;

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
  /// Note: [forked] overrides this. That is even if [customPredicate] may evaluate
  /// to `false` if [forked] is true the handler is executed.
  ///
  /// If by any reason, this method threw any exception, it'll be caught in the passed `Bot.onError` if set.
  /// Otherwise, treated as `false` evaluation and skips the current handler.
  final FutureOr<bool> Function(Context ctx)? customPredicate;

  /// Constructs a `ScopeOption`.
  ///
  /// - [name] - Name of the Handler Scope. This can be used to remove the scope later.
  ///
  /// - [forked] - A flag used to determine whether the succeeding handler should also be executed
  const ScopeOptions({
    this.forked = false,
    this.name,
    this.customPredicate,
  });

  /// Constructs a `ScopeOption` that is forked. This scope will allow the processing of subsequent handler scope as well.
  ///
  /// - [name] - Name of the Handler Scope. This can be used to remove the scope later.
  /// - [customPredicate] - Middleware to check if the update should be processed or skipped.
  const ScopeOptions.forked({
    this.name,
    this.customPredicate,
  }) : forked = true;
}
