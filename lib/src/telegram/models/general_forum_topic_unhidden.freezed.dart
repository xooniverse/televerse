// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'general_forum_topic_unhidden.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GeneralForumTopicUnhidden {
  /// Serializes this GeneralForumTopicUnhidden to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'GeneralForumTopicUnhidden()';
  }
}

/// @nodoc
class $GeneralForumTopicUnhiddenCopyWith<$Res> {
  $GeneralForumTopicUnhiddenCopyWith(
    GeneralForumTopicUnhidden _,
    $Res Function(GeneralForumTopicUnhidden) __,
  );
}

/// Adds pattern-matching-related methods to [GeneralForumTopicUnhidden].
extension GeneralForumTopicUnhiddenPatterns on GeneralForumTopicUnhidden {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_GeneralForumTopicUnhidden value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GeneralForumTopicUnhidden() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_GeneralForumTopicUnhidden value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GeneralForumTopicUnhidden():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_GeneralForumTopicUnhidden value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GeneralForumTopicUnhidden() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _GeneralForumTopicUnhidden implements GeneralForumTopicUnhidden {
  const _GeneralForumTopicUnhidden();
  factory _GeneralForumTopicUnhidden.fromJson(Map<String, dynamic> json) =>
      _$GeneralForumTopicUnhiddenFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    return _$GeneralForumTopicUnhiddenToJson(this);
  }

  @override
  String toString() {
    return 'GeneralForumTopicUnhidden()';
  }
}
