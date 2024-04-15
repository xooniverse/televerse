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

  /// Constructs a `ScopeOption`.
  ///
  /// - [name] - Name of the Handler Scope. This can be used to remove the scope later.
  ///
  /// - [forked] - A flag used to determine whether the succeeding handler should also be executed
  const ScopeOptions({
    this.forked = false,
    this.name,
  });

  /// Constructs a `ScopeOption` that is forked. This scope will allow the processing of subsequent handler scope as well.
  ///
  /// - [name] - Name of the Handler Scope. This can be used to remove the scope later.
  const ScopeOptions.forked({this.name}) : forked = true;
}
