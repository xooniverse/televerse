// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bot_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BotCommand {
  /// Text of the command, 1-32 characters. Can contain only lowercase English letters, digits and underscores.
  @JsonKey(name: 'command')
  String get command;

  /// Description of the command, 3-256 characters.
  @JsonKey(name: 'description')
  String get description;

  /// Create a copy of BotCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BotCommandCopyWith<BotCommand> get copyWith =>
      _$BotCommandCopyWithImpl<BotCommand>(this as BotCommand, _$identity);

  /// Serializes this BotCommand to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'BotCommand(command: $command, description: $description)';
  }
}

/// @nodoc
abstract mixin class $BotCommandCopyWith<$Res> {
  factory $BotCommandCopyWith(
    BotCommand value,
    $Res Function(BotCommand) _then,
  ) = _$BotCommandCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'command') String command,
    @JsonKey(name: 'description') String description,
  });
}

/// @nodoc
class _$BotCommandCopyWithImpl<$Res> implements $BotCommandCopyWith<$Res> {
  _$BotCommandCopyWithImpl(this._self, this._then);

  final BotCommand _self;
  final $Res Function(BotCommand) _then;

  /// Create a copy of BotCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? command = null, Object? description = null}) {
    return _then(
      _self.copyWith(
        command: null == command
            ? _self.command
            : command // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _self.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [BotCommand].
extension BotCommandPatterns on BotCommand {
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
    TResult Function(_BotCommand value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BotCommand() when $default != null:
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
    TResult Function(_BotCommand value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BotCommand():
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
    TResult? Function(_BotCommand value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BotCommand() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BotCommand implements BotCommand {
  const _BotCommand({
    @JsonKey(name: 'command') required this.command,
    @JsonKey(name: 'description') required this.description,
  });
  factory _BotCommand.fromJson(Map<String, dynamic> json) =>
      _$BotCommandFromJson(json);

  /// Text of the command, 1-32 characters. Can contain only lowercase English letters, digits and underscores.
  @override
  @JsonKey(name: 'command')
  final String command;

  /// Description of the command, 3-256 characters.
  @override
  @JsonKey(name: 'description')
  final String description;

  /// Create a copy of BotCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BotCommandCopyWith<_BotCommand> get copyWith =>
      __$BotCommandCopyWithImpl<_BotCommand>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BotCommandToJson(this);
  }

  @override
  String toString() {
    return 'BotCommand(command: $command, description: $description)';
  }
}

/// @nodoc
abstract mixin class _$BotCommandCopyWith<$Res>
    implements $BotCommandCopyWith<$Res> {
  factory _$BotCommandCopyWith(
    _BotCommand value,
    $Res Function(_BotCommand) _then,
  ) = __$BotCommandCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'command') String command,
    @JsonKey(name: 'description') String description,
  });
}

/// @nodoc
class __$BotCommandCopyWithImpl<$Res> implements _$BotCommandCopyWith<$Res> {
  __$BotCommandCopyWithImpl(this._self, this._then);

  final _BotCommand _self;
  final $Res Function(_BotCommand) _then;

  /// Create a copy of BotCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? command = null, Object? description = null}) {
    return _then(
      _BotCommand(
        command: null == command
            ? _self.command
            : command // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _self.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}
