// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'keyboard_button_poll_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KeyboardButtonPollType _$KeyboardButtonPollTypeFromJson(
    Map<String, dynamic> json) {
  return _KeyboardButtonPollType.fromJson(json);
}

/// @nodoc
mixin _$KeyboardButtonPollType {
  /// Optional. If quiz is passed, the user will be allowed to create only
  /// polls in the quiz mode. If regular is passed, only regular polls will be
  /// allowed. Otherwise, the user will be allowed to create a poll of any
  /// type.
  @JsonKey(name: 'type')
  PollType? get type => throw _privateConstructorUsedError;

  /// Serializes this KeyboardButtonPollType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KeyboardButtonPollType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KeyboardButtonPollTypeCopyWith<KeyboardButtonPollType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyboardButtonPollTypeCopyWith<$Res> {
  factory $KeyboardButtonPollTypeCopyWith(KeyboardButtonPollType value,
          $Res Function(KeyboardButtonPollType) then) =
      _$KeyboardButtonPollTypeCopyWithImpl<$Res, KeyboardButtonPollType>;
  @useResult
  $Res call({@JsonKey(name: 'type') PollType? type});
}

/// @nodoc
class _$KeyboardButtonPollTypeCopyWithImpl<$Res,
        $Val extends KeyboardButtonPollType>
    implements $KeyboardButtonPollTypeCopyWith<$Res> {
  _$KeyboardButtonPollTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KeyboardButtonPollType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PollType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KeyboardButtonPollTypeImplCopyWith<$Res>
    implements $KeyboardButtonPollTypeCopyWith<$Res> {
  factory _$$KeyboardButtonPollTypeImplCopyWith(
          _$KeyboardButtonPollTypeImpl value,
          $Res Function(_$KeyboardButtonPollTypeImpl) then) =
      __$$KeyboardButtonPollTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'type') PollType? type});
}

/// @nodoc
class __$$KeyboardButtonPollTypeImplCopyWithImpl<$Res>
    extends _$KeyboardButtonPollTypeCopyWithImpl<$Res,
        _$KeyboardButtonPollTypeImpl>
    implements _$$KeyboardButtonPollTypeImplCopyWith<$Res> {
  __$$KeyboardButtonPollTypeImplCopyWithImpl(
      _$KeyboardButtonPollTypeImpl _value,
      $Res Function(_$KeyboardButtonPollTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of KeyboardButtonPollType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_$KeyboardButtonPollTypeImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PollType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KeyboardButtonPollTypeImpl implements _KeyboardButtonPollType {
  const _$KeyboardButtonPollTypeImpl({@JsonKey(name: 'type') this.type});

  factory _$KeyboardButtonPollTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$KeyboardButtonPollTypeImplFromJson(json);

  /// Optional. If quiz is passed, the user will be allowed to create only
  /// polls in the quiz mode. If regular is passed, only regular polls will be
  /// allowed. Otherwise, the user will be allowed to create a poll of any
  /// type.
  @override
  @JsonKey(name: 'type')
  final PollType? type;

  @override
  String toString() {
    return 'KeyboardButtonPollType(type: $type)';
  }

  /// Create a copy of KeyboardButtonPollType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KeyboardButtonPollTypeImplCopyWith<_$KeyboardButtonPollTypeImpl>
      get copyWith => __$$KeyboardButtonPollTypeImplCopyWithImpl<
          _$KeyboardButtonPollTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KeyboardButtonPollTypeImplToJson(
      this,
    );
  }
}

abstract class _KeyboardButtonPollType implements KeyboardButtonPollType {
  const factory _KeyboardButtonPollType(
          {@JsonKey(name: 'type') final PollType? type}) =
      _$KeyboardButtonPollTypeImpl;

  factory _KeyboardButtonPollType.fromJson(Map<String, dynamic> json) =
      _$KeyboardButtonPollTypeImpl.fromJson;

  /// Optional. If quiz is passed, the user will be allowed to create only
  /// polls in the quiz mode. If regular is passed, only regular polls will be
  /// allowed. Otherwise, the user will be allowed to create a poll of any
  /// type.
  @override
  @JsonKey(name: 'type')
  PollType? get type;

  /// Create a copy of KeyboardButtonPollType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KeyboardButtonPollTypeImplCopyWith<_$KeyboardButtonPollTypeImpl>
      get copyWith => throw _privateConstructorUsedError;
}
