// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bot_name.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BotName {
  /// The bot's name
  @JsonKey(name: 'name')
  String get name;

  /// Create a copy of BotName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BotNameCopyWith<BotName> get copyWith =>
      _$BotNameCopyWithImpl<BotName>(this as BotName, _$identity);

  /// Serializes this BotName to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'BotName(name: $name)';
  }
}

/// @nodoc
abstract mixin class $BotNameCopyWith<$Res> {
  factory $BotNameCopyWith(BotName value, $Res Function(BotName) _then) =
      _$BotNameCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'name') String name});
}

/// @nodoc
class _$BotNameCopyWithImpl<$Res> implements $BotNameCopyWith<$Res> {
  _$BotNameCopyWithImpl(this._self, this._then);

  final BotName _self;
  final $Res Function(BotName) _then;

  /// Create a copy of BotName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _BotName implements BotName {
  const _BotName({@JsonKey(name: 'name') required this.name});
  factory _BotName.fromJson(Map<String, dynamic> json) =>
      _$BotNameFromJson(json);

  /// The bot's name
  @override
  @JsonKey(name: 'name')
  final String name;

  /// Create a copy of BotName
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BotNameCopyWith<_BotName> get copyWith =>
      __$BotNameCopyWithImpl<_BotName>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BotNameToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'BotName(name: $name)';
  }
}

/// @nodoc
abstract mixin class _$BotNameCopyWith<$Res> implements $BotNameCopyWith<$Res> {
  factory _$BotNameCopyWith(_BotName value, $Res Function(_BotName) _then) =
      __$BotNameCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'name') String name});
}

/// @nodoc
class __$BotNameCopyWithImpl<$Res> implements _$BotNameCopyWith<$Res> {
  __$BotNameCopyWithImpl(this._self, this._then);

  final _BotName _self;
  final $Res Function(_BotName) _then;

  /// Create a copy of BotName
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
  }) {
    return _then(_BotName(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}
