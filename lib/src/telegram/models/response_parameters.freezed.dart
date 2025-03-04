// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseParameters _$ResponseParametersFromJson(Map<String, dynamic> json) {
  return _ResponseParameters.fromJson(json);
}

/// @nodoc
mixin _$ResponseParameters {
  /// Optional. The group has been migrated to a supergroup with the specified
  /// identifier. This number may have more than 32 significant bits and some
  /// programming languages may have difficulty/silent defects in interpreting
  /// it. But it has at most 52 significant bits, so a signed 64-bit integer
  /// or double-precision float type are safe for storing this identifier.
  @JsonKey(name: 'migrate_to_chat_id')
  int? get migrateToChatId => throw _privateConstructorUsedError;

  /// Optional. In case of exceeding flood control, the number of seconds left
  /// to wait before the request can be repeated
  @JsonKey(name: 'retry_after')
  int? get retryAfter => throw _privateConstructorUsedError;

  /// Serializes this ResponseParameters to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseParametersCopyWith<ResponseParameters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseParametersCopyWith<$Res> {
  factory $ResponseParametersCopyWith(
          ResponseParameters value, $Res Function(ResponseParameters) then) =
      _$ResponseParametersCopyWithImpl<$Res, ResponseParameters>;
  @useResult
  $Res call(
      {@JsonKey(name: 'migrate_to_chat_id') int? migrateToChatId,
      @JsonKey(name: 'retry_after') int? retryAfter});
}

/// @nodoc
class _$ResponseParametersCopyWithImpl<$Res, $Val extends ResponseParameters>
    implements $ResponseParametersCopyWith<$Res> {
  _$ResponseParametersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? migrateToChatId = freezed,
    Object? retryAfter = freezed,
  }) {
    return _then(_value.copyWith(
      migrateToChatId: freezed == migrateToChatId
          ? _value.migrateToChatId
          : migrateToChatId // ignore: cast_nullable_to_non_nullable
              as int?,
      retryAfter: freezed == retryAfter
          ? _value.retryAfter
          : retryAfter // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseParametersImplCopyWith<$Res>
    implements $ResponseParametersCopyWith<$Res> {
  factory _$$ResponseParametersImplCopyWith(_$ResponseParametersImpl value,
          $Res Function(_$ResponseParametersImpl) then) =
      __$$ResponseParametersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'migrate_to_chat_id') int? migrateToChatId,
      @JsonKey(name: 'retry_after') int? retryAfter});
}

/// @nodoc
class __$$ResponseParametersImplCopyWithImpl<$Res>
    extends _$ResponseParametersCopyWithImpl<$Res, _$ResponseParametersImpl>
    implements _$$ResponseParametersImplCopyWith<$Res> {
  __$$ResponseParametersImplCopyWithImpl(_$ResponseParametersImpl _value,
      $Res Function(_$ResponseParametersImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? migrateToChatId = freezed,
    Object? retryAfter = freezed,
  }) {
    return _then(_$ResponseParametersImpl(
      migrateToChatId: freezed == migrateToChatId
          ? _value.migrateToChatId
          : migrateToChatId // ignore: cast_nullable_to_non_nullable
              as int?,
      retryAfter: freezed == retryAfter
          ? _value.retryAfter
          : retryAfter // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseParametersImpl implements _ResponseParameters {
  const _$ResponseParametersImpl(
      {@JsonKey(name: 'migrate_to_chat_id') this.migrateToChatId,
      @JsonKey(name: 'retry_after') this.retryAfter});

  factory _$ResponseParametersImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseParametersImplFromJson(json);

  /// Optional. The group has been migrated to a supergroup with the specified
  /// identifier. This number may have more than 32 significant bits and some
  /// programming languages may have difficulty/silent defects in interpreting
  /// it. But it has at most 52 significant bits, so a signed 64-bit integer
  /// or double-precision float type are safe for storing this identifier.
  @override
  @JsonKey(name: 'migrate_to_chat_id')
  final int? migrateToChatId;

  /// Optional. In case of exceeding flood control, the number of seconds left
  /// to wait before the request can be repeated
  @override
  @JsonKey(name: 'retry_after')
  final int? retryAfter;

  @override
  String toString() {
    return 'ResponseParameters(migrateToChatId: $migrateToChatId, retryAfter: $retryAfter)';
  }

  /// Create a copy of ResponseParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseParametersImplCopyWith<_$ResponseParametersImpl> get copyWith =>
      __$$ResponseParametersImplCopyWithImpl<_$ResponseParametersImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseParametersImplToJson(
      this,
    );
  }
}

abstract class _ResponseParameters implements ResponseParameters {
  const factory _ResponseParameters(
          {@JsonKey(name: 'migrate_to_chat_id') final int? migrateToChatId,
          @JsonKey(name: 'retry_after') final int? retryAfter}) =
      _$ResponseParametersImpl;

  factory _ResponseParameters.fromJson(Map<String, dynamic> json) =
      _$ResponseParametersImpl.fromJson;

  /// Optional. The group has been migrated to a supergroup with the specified
  /// identifier. This number may have more than 32 significant bits and some
  /// programming languages may have difficulty/silent defects in interpreting
  /// it. But it has at most 52 significant bits, so a signed 64-bit integer
  /// or double-precision float type are safe for storing this identifier.
  @override
  @JsonKey(name: 'migrate_to_chat_id')
  int? get migrateToChatId;

  /// Optional. In case of exceeding flood control, the number of seconds left
  /// to wait before the request can be repeated
  @override
  @JsonKey(name: 'retry_after')
  int? get retryAfter;

  /// Create a copy of ResponseParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseParametersImplCopyWith<_$ResponseParametersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
