// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bot_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BotCommand _$BotCommandFromJson(Map<String, dynamic> json) {
  return _BotCommand.fromJson(json);
}

/// @nodoc
mixin _$BotCommand {
  /// Text of the command, 1-32 characters. Can contain only lowercase English letters, digits and underscores.
  @JsonKey(name: 'command')
  String get command => throw _privateConstructorUsedError;

  /// Description of the command, 3-256 characters.
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;

  /// Serializes this BotCommand to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BotCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BotCommandCopyWith<BotCommand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BotCommandCopyWith<$Res> {
  factory $BotCommandCopyWith(
          BotCommand value, $Res Function(BotCommand) then) =
      _$BotCommandCopyWithImpl<$Res, BotCommand>;
  @useResult
  $Res call(
      {@JsonKey(name: 'command') String command,
      @JsonKey(name: 'description') String description});
}

/// @nodoc
class _$BotCommandCopyWithImpl<$Res, $Val extends BotCommand>
    implements $BotCommandCopyWith<$Res> {
  _$BotCommandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BotCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? command = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      command: null == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BotCommandImplCopyWith<$Res>
    implements $BotCommandCopyWith<$Res> {
  factory _$$BotCommandImplCopyWith(
          _$BotCommandImpl value, $Res Function(_$BotCommandImpl) then) =
      __$$BotCommandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'command') String command,
      @JsonKey(name: 'description') String description});
}

/// @nodoc
class __$$BotCommandImplCopyWithImpl<$Res>
    extends _$BotCommandCopyWithImpl<$Res, _$BotCommandImpl>
    implements _$$BotCommandImplCopyWith<$Res> {
  __$$BotCommandImplCopyWithImpl(
      _$BotCommandImpl _value, $Res Function(_$BotCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of BotCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? command = null,
    Object? description = null,
  }) {
    return _then(_$BotCommandImpl(
      command: null == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BotCommandImpl implements _BotCommand {
  const _$BotCommandImpl(
      {@JsonKey(name: 'command') required this.command,
      @JsonKey(name: 'description') required this.description});

  factory _$BotCommandImpl.fromJson(Map<String, dynamic> json) =>
      _$$BotCommandImplFromJson(json);

  /// Text of the command, 1-32 characters. Can contain only lowercase English letters, digits and underscores.
  @override
  @JsonKey(name: 'command')
  final String command;

  /// Description of the command, 3-256 characters.
  @override
  @JsonKey(name: 'description')
  final String description;

  @override
  String toString() {
    return 'BotCommand(command: $command, description: $description)';
  }

  /// Create a copy of BotCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BotCommandImplCopyWith<_$BotCommandImpl> get copyWith =>
      __$$BotCommandImplCopyWithImpl<_$BotCommandImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BotCommandImplToJson(
      this,
    );
  }
}

abstract class _BotCommand implements BotCommand {
  const factory _BotCommand(
          {@JsonKey(name: 'command') required final String command,
          @JsonKey(name: 'description') required final String description}) =
      _$BotCommandImpl;

  factory _BotCommand.fromJson(Map<String, dynamic> json) =
      _$BotCommandImpl.fromJson;

  /// Text of the command, 1-32 characters. Can contain only lowercase English letters, digits and underscores.
  @override
  @JsonKey(name: 'command')
  String get command;

  /// Description of the command, 3-256 characters.
  @override
  @JsonKey(name: 'description')
  String get description;

  /// Create a copy of BotCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BotCommandImplCopyWith<_$BotCommandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
