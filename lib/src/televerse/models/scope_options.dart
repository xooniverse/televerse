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

  /// Constructs a `ScopeOption`.
  ///
  /// - [name] - Name of the Handler Scope. This can be used to remove the scope later.
  const ScopeOptions({
    this.name,
    this.customPredicate,
  });

  /// Creates a copy of this [ScopeOptions] object with potentially modified properties.

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
  }) {
    return ScopeOptions<CTX>(
      name: name ?? this.name,
      customPredicate: customPredicate ?? this.customPredicate,
    );
  }

  /// Internal copyWith
  static ScopeOptions<CTX> _createOrCopy<CTX extends Context>(
    ScopeOptions<CTX>? options, {
    String? name,
    FutureOr<bool> Function(CTX ctx)? customPredicate,
  }) {
    if (options != null) {
      return options.copyWith(
        name: name,
        customPredicate: customPredicate,
      );
    }

    return ScopeOptions<CTX>(
      name: name,
      customPredicate: customPredicate,
    );
  }
}
