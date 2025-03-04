// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bot_short_description.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BotShortDescription _$BotShortDescriptionFromJson(Map<String, dynamic> json) {
  return _BotShortDescription.fromJson(json);
}

/// @nodoc
mixin _$BotShortDescription {
  /// Bot's short description.
  @JsonKey(name: 'short_description')
  String get shortDescription => throw _privateConstructorUsedError;

  /// Serializes this BotShortDescription to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BotShortDescription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BotShortDescriptionCopyWith<BotShortDescription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BotShortDescriptionCopyWith<$Res> {
  factory $BotShortDescriptionCopyWith(
          BotShortDescription value, $Res Function(BotShortDescription) then) =
      _$BotShortDescriptionCopyWithImpl<$Res, BotShortDescription>;
  @useResult
  $Res call({@JsonKey(name: 'short_description') String shortDescription});
}

/// @nodoc
class _$BotShortDescriptionCopyWithImpl<$Res, $Val extends BotShortDescription>
    implements $BotShortDescriptionCopyWith<$Res> {
  _$BotShortDescriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BotShortDescription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shortDescription = null,
  }) {
    return _then(_value.copyWith(
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BotShortDescriptionImplCopyWith<$Res>
    implements $BotShortDescriptionCopyWith<$Res> {
  factory _$$BotShortDescriptionImplCopyWith(_$BotShortDescriptionImpl value,
          $Res Function(_$BotShortDescriptionImpl) then) =
      __$$BotShortDescriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'short_description') String shortDescription});
}

/// @nodoc
class __$$BotShortDescriptionImplCopyWithImpl<$Res>
    extends _$BotShortDescriptionCopyWithImpl<$Res, _$BotShortDescriptionImpl>
    implements _$$BotShortDescriptionImplCopyWith<$Res> {
  __$$BotShortDescriptionImplCopyWithImpl(_$BotShortDescriptionImpl _value,
      $Res Function(_$BotShortDescriptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of BotShortDescription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shortDescription = null,
  }) {
    return _then(_$BotShortDescriptionImpl(
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BotShortDescriptionImpl implements _BotShortDescription {
  const _$BotShortDescriptionImpl(
      {@JsonKey(name: 'short_description') required this.shortDescription});

  factory _$BotShortDescriptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$BotShortDescriptionImplFromJson(json);

  /// Bot's short description.
  @override
  @JsonKey(name: 'short_description')
  final String shortDescription;

  @override
  String toString() {
    return 'BotShortDescription(shortDescription: $shortDescription)';
  }

  /// Create a copy of BotShortDescription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BotShortDescriptionImplCopyWith<_$BotShortDescriptionImpl> get copyWith =>
      __$$BotShortDescriptionImplCopyWithImpl<_$BotShortDescriptionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BotShortDescriptionImplToJson(
      this,
    );
  }
}

abstract class _BotShortDescription implements BotShortDescription {
  const factory _BotShortDescription(
      {@JsonKey(name: 'short_description')
      required final String shortDescription}) = _$BotShortDescriptionImpl;

  factory _BotShortDescription.fromJson(Map<String, dynamic> json) =
      _$BotShortDescriptionImpl.fromJson;

  /// Bot's short description.
  @override
  @JsonKey(name: 'short_description')
  String get shortDescription;

  /// Create a copy of BotShortDescription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BotShortDescriptionImplCopyWith<_$BotShortDescriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
