// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bot_description.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BotDescription _$BotDescriptionFromJson(Map<String, dynamic> json) {
  return _BotDescription.fromJson(json);
}

/// @nodoc
mixin _$BotDescription {
  /// Bot's description.
  String get description => throw _privateConstructorUsedError;

  /// Serializes this BotDescription to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BotDescription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BotDescriptionCopyWith<BotDescription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BotDescriptionCopyWith<$Res> {
  factory $BotDescriptionCopyWith(
          BotDescription value, $Res Function(BotDescription) then) =
      _$BotDescriptionCopyWithImpl<$Res, BotDescription>;
  @useResult
  $Res call({String description});
}

/// @nodoc
class _$BotDescriptionCopyWithImpl<$Res, $Val extends BotDescription>
    implements $BotDescriptionCopyWith<$Res> {
  _$BotDescriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BotDescription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BotDescriptionImplCopyWith<$Res>
    implements $BotDescriptionCopyWith<$Res> {
  factory _$$BotDescriptionImplCopyWith(_$BotDescriptionImpl value,
          $Res Function(_$BotDescriptionImpl) then) =
      __$$BotDescriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description});
}

/// @nodoc
class __$$BotDescriptionImplCopyWithImpl<$Res>
    extends _$BotDescriptionCopyWithImpl<$Res, _$BotDescriptionImpl>
    implements _$$BotDescriptionImplCopyWith<$Res> {
  __$$BotDescriptionImplCopyWithImpl(
      _$BotDescriptionImpl _value, $Res Function(_$BotDescriptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of BotDescription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_$BotDescriptionImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BotDescriptionImpl implements _BotDescription {
  const _$BotDescriptionImpl({required this.description});

  factory _$BotDescriptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$BotDescriptionImplFromJson(json);

  /// Bot's description.
  @override
  final String description;

  @override
  String toString() {
    return 'BotDescription(description: $description)';
  }

  /// Create a copy of BotDescription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BotDescriptionImplCopyWith<_$BotDescriptionImpl> get copyWith =>
      __$$BotDescriptionImplCopyWithImpl<_$BotDescriptionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BotDescriptionImplToJson(
      this,
    );
  }
}

abstract class _BotDescription implements BotDescription {
  const factory _BotDescription({required final String description}) =
      _$BotDescriptionImpl;

  factory _BotDescription.fromJson(Map<String, dynamic> json) =
      _$BotDescriptionImpl.fromJson;

  /// Bot's description.
  @override
  String get description;

  /// Create a copy of BotDescription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BotDescriptionImplCopyWith<_$BotDescriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
