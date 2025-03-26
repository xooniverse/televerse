// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bot_description.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BotDescription {
  /// Bot's description.
  @JsonKey(name: 'description')
  String get description;

  /// Create a copy of BotDescription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BotDescriptionCopyWith<BotDescription> get copyWith =>
      _$BotDescriptionCopyWithImpl<BotDescription>(
          this as BotDescription, _$identity);

  /// Serializes this BotDescription to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'BotDescription(description: $description)';
  }
}

/// @nodoc
abstract mixin class $BotDescriptionCopyWith<$Res> {
  factory $BotDescriptionCopyWith(
          BotDescription value, $Res Function(BotDescription) _then) =
      _$BotDescriptionCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'description') String description});
}

/// @nodoc
class _$BotDescriptionCopyWithImpl<$Res>
    implements $BotDescriptionCopyWith<$Res> {
  _$BotDescriptionCopyWithImpl(this._self, this._then);

  final BotDescription _self;
  final $Res Function(BotDescription) _then;

  /// Create a copy of BotDescription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_self.copyWith(
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _BotDescription implements BotDescription {
  const _BotDescription(
      {@JsonKey(name: 'description') required this.description});
  factory _BotDescription.fromJson(Map<String, dynamic> json) =>
      _$BotDescriptionFromJson(json);

  /// Bot's description.
  @override
  @JsonKey(name: 'description')
  final String description;

  /// Create a copy of BotDescription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BotDescriptionCopyWith<_BotDescription> get copyWith =>
      __$BotDescriptionCopyWithImpl<_BotDescription>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BotDescriptionToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'BotDescription(description: $description)';
  }
}

/// @nodoc
abstract mixin class _$BotDescriptionCopyWith<$Res>
    implements $BotDescriptionCopyWith<$Res> {
  factory _$BotDescriptionCopyWith(
          _BotDescription value, $Res Function(_BotDescription) _then) =
      __$BotDescriptionCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'description') String description});
}

/// @nodoc
class __$BotDescriptionCopyWithImpl<$Res>
    implements _$BotDescriptionCopyWith<$Res> {
  __$BotDescriptionCopyWithImpl(this._self, this._then);

  final _BotDescription _self;
  final $Res Function(_BotDescription) _then;

  /// Create a copy of BotDescription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? description = null,
  }) {
    return _then(_BotDescription(
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}
