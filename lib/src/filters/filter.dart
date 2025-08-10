// File: lib/src/filters/filter.dart

part of '../../televerse.dart';

/// Base class for all filters.
///
/// Filters are used to determine whether middleware should be executed
/// based on the current context. They provide a clean way to conditionally
/// execute middleware based on various criteria.
abstract class Filter<CTX extends Context> {
  /// Abstract const constructor
  const Filter();

  /// Tests if this filter matches the given context.
  ///
  /// Returns true if the filter matches and middleware should be executed,
  /// false otherwise.
  bool matches(CTX ctx);

  /// Combines this filter with another using logical AND.
  ///
  /// The resulting filter matches only if both filters match.
  Filter<CTX> and(Filter<CTX> other) => _AndFilter<CTX>(this, other);

  /// Combines this filter with another using logical OR.
  ///
  /// The resulting filter matches if either filter matches.
  Filter<CTX> or(Filter<CTX> other) => _OrFilter<CTX>(this, other);

  /// Creates a filter that matches the opposite of this filter.
  ///
  /// The resulting filter matches when this filter doesn't match.
  Filter<CTX> not() => _NotFilter<CTX>(this);

  /// Combines this filter with another using logical OR.
  ///
  /// The resulting filter matches if either filter matches.
  Filter<CTX> operator +(Filter<CTX> other) => or(other);

  /// Combines this filter with another using logical AND.
  ///
  /// The resulting filter matches only if both filters match.
  Filter<CTX> operator *(Filter<CTX> other) => and(other);

  /// Creates a filter that matches the opposite of this filter.
  ///
  /// The resulting filter matches when this filter doesn't match.
  Filter<CTX> operator -() => not();

  /// Creates a filter that matches `this` AND `not the other`.
  ///
  /// The resulting filter matches when this filter doesn't match.
  Filter<CTX> operator -(Filter<CTX> other) => and(-other);
}

/// A filter that always matches.
class AlwaysFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that always matches.
  const AlwaysFilter();

  @override
  bool matches(CTX ctx) => true;

  @override
  String toString() => 'AlwaysFilter()';
}

/// A filter that never matches.
class NeverFilter<CTX extends Context> extends Filter<CTX> {
  /// Creates a filter that never matches.
  const NeverFilter();

  @override
  bool matches(CTX ctx) => false;

  @override
  String toString() => 'NeverFilter()';
}

/// A filter based on a custom predicate function.
class PredicateFilter<CTX extends Context> extends Filter<CTX> {
  /// The predicate function.
  final bool Function(CTX ctx) predicate;

  /// The name of this filter for debugging.
  final String? name;

  /// Creates a filter based on a predicate function.
  ///
  /// Parameters:
  /// - [predicate]: The function that determines if the filter matches
  /// - [name]: Optional name for debugging purposes
  const PredicateFilter(this.predicate, {this.name});

  @override
  bool matches(CTX ctx) => predicate(ctx);

  @override
  String toString() =>
      name != null ? 'PredicateFilter($name)' : 'PredicateFilter()';
}

// ===============================
// Private Filter Implementations
// ===============================

class _AndFilter<CTX extends Context> extends Filter<CTX> {
  final Filter<CTX> left;
  final Filter<CTX> right;

  _AndFilter(this.left, this.right);

  @override
  bool matches(CTX ctx) => left.matches(ctx) && right.matches(ctx);

  @override
  String toString() => '($left AND $right)';
}

class _OrFilter<CTX extends Context> extends Filter<CTX> {
  final Filter<CTX> left;
  final Filter<CTX> right;

  _OrFilter(this.left, this.right);

  @override
  bool matches(CTX ctx) => left.matches(ctx) || right.matches(ctx);

  @override
  String toString() => '($left OR $right)';
}

class _NotFilter<CTX extends Context> extends Filter<CTX> {
  final Filter<CTX> filter;

  _NotFilter(this.filter);

  @override
  bool matches(CTX ctx) => !filter.matches(ctx);

  @override
  String toString() => 'NOT $filter';
}
