// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bot_name.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BotName _$BotNameFromJson(Map<String, dynamic> json) {
  return _BotName.fromJson(json);
}

/// @nodoc
mixin _$BotName {
  /// The bot's name
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  /// Serializes this BotName to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BotName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BotNameCopyWith<BotName> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BotNameCopyWith<$Res> {
  factory $BotNameCopyWith(BotName value, $Res Function(BotName) then) =
      _$BotNameCopyWithImpl<$Res, BotName>;
  @useResult
  $Res call({@JsonKey(name: 'name') String name});
}

/// @nodoc
class _$BotNameCopyWithImpl<$Res, $Val extends BotName>
    implements $BotNameCopyWith<$Res> {
  _$BotNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BotName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BotNameImplCopyWith<$Res> implements $BotNameCopyWith<$Res> {
  factory _$$BotNameImplCopyWith(
          _$BotNameImpl value, $Res Function(_$BotNameImpl) then) =
      __$$BotNameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'name') String name});
}

/// @nodoc
class __$$BotNameImplCopyWithImpl<$Res>
    extends _$BotNameCopyWithImpl<$Res, _$BotNameImpl>
    implements _$$BotNameImplCopyWith<$Res> {
  __$$BotNameImplCopyWithImpl(
      _$BotNameImpl _value, $Res Function(_$BotNameImpl) _then)
      : super(_value, _then);

  /// Create a copy of BotName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$BotNameImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BotNameImpl implements _BotName {
  const _$BotNameImpl({@JsonKey(name: 'name') required this.name});

  factory _$BotNameImpl.fromJson(Map<String, dynamic> json) =>
      _$$BotNameImplFromJson(json);

  /// The bot's name
  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'BotName(name: $name)';
  }

  /// Create a copy of BotName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BotNameImplCopyWith<_$BotNameImpl> get copyWith =>
      __$$BotNameImplCopyWithImpl<_$BotNameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BotNameImplToJson(
      this,
    );
  }
}

abstract class _BotName implements BotName {
  const factory _BotName({@JsonKey(name: 'name') required final String name}) =
      _$BotNameImpl;

  factory _BotName.fromJson(Map<String, dynamic> json) = _$BotNameImpl.fromJson;

  /// The bot's name
  @override
  @JsonKey(name: 'name')
  String get name;

  /// Create a copy of BotName
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BotNameImplCopyWith<_$BotNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
