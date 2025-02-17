// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'encrypted_credentials.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EncryptedCredentials _$EncryptedCredentialsFromJson(Map<String, dynamic> json) {
  return _EncryptedCredentials.fromJson(json);
}

/// @nodoc
mixin _$EncryptedCredentials {
  /// Base64-encoded encrypted JSON-serialized data with unique user's
  /// payload, data hashes, and secrets required for EncryptedPassportElement
  /// decryption and authentication
  String get data => throw _privateConstructorUsedError;

  /// Base64-encoded data hash for data authentication
  String get hash => throw _privateConstructorUsedError;

  /// Base64-encoded secret, encrypted with the bot's public RSA key, required
  /// for data decryption
  String get secret => throw _privateConstructorUsedError;

  /// Serializes this EncryptedCredentials to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EncryptedCredentials
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EncryptedCredentialsCopyWith<EncryptedCredentials> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EncryptedCredentialsCopyWith<$Res> {
  factory $EncryptedCredentialsCopyWith(EncryptedCredentials value,
          $Res Function(EncryptedCredentials) then) =
      _$EncryptedCredentialsCopyWithImpl<$Res, EncryptedCredentials>;
  @useResult
  $Res call({String data, String hash, String secret});
}

/// @nodoc
class _$EncryptedCredentialsCopyWithImpl<$Res,
        $Val extends EncryptedCredentials>
    implements $EncryptedCredentialsCopyWith<$Res> {
  _$EncryptedCredentialsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EncryptedCredentials
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? hash = null,
    Object? secret = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      secret: null == secret
          ? _value.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EncryptedCredentialsImplCopyWith<$Res>
    implements $EncryptedCredentialsCopyWith<$Res> {
  factory _$$EncryptedCredentialsImplCopyWith(_$EncryptedCredentialsImpl value,
          $Res Function(_$EncryptedCredentialsImpl) then) =
      __$$EncryptedCredentialsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String data, String hash, String secret});
}

/// @nodoc
class __$$EncryptedCredentialsImplCopyWithImpl<$Res>
    extends _$EncryptedCredentialsCopyWithImpl<$Res, _$EncryptedCredentialsImpl>
    implements _$$EncryptedCredentialsImplCopyWith<$Res> {
  __$$EncryptedCredentialsImplCopyWithImpl(_$EncryptedCredentialsImpl _value,
      $Res Function(_$EncryptedCredentialsImpl) _then)
      : super(_value, _then);

  /// Create a copy of EncryptedCredentials
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? hash = null,
    Object? secret = null,
  }) {
    return _then(_$EncryptedCredentialsImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      secret: null == secret
          ? _value.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EncryptedCredentialsImpl implements _EncryptedCredentials {
  const _$EncryptedCredentialsImpl(
      {required this.data, required this.hash, required this.secret});

  factory _$EncryptedCredentialsImpl.fromJson(Map<String, dynamic> json) =>
      _$$EncryptedCredentialsImplFromJson(json);

  /// Base64-encoded encrypted JSON-serialized data with unique user's
  /// payload, data hashes, and secrets required for EncryptedPassportElement
  /// decryption and authentication
  @override
  final String data;

  /// Base64-encoded data hash for data authentication
  @override
  final String hash;

  /// Base64-encoded secret, encrypted with the bot's public RSA key, required
  /// for data decryption
  @override
  final String secret;

  @override
  String toString() {
    return 'EncryptedCredentials(data: $data, hash: $hash, secret: $secret)';
  }

  /// Create a copy of EncryptedCredentials
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EncryptedCredentialsImplCopyWith<_$EncryptedCredentialsImpl>
      get copyWith =>
          __$$EncryptedCredentialsImplCopyWithImpl<_$EncryptedCredentialsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EncryptedCredentialsImplToJson(
      this,
    );
  }
}

abstract class _EncryptedCredentials implements EncryptedCredentials {
  const factory _EncryptedCredentials(
      {required final String data,
      required final String hash,
      required final String secret}) = _$EncryptedCredentialsImpl;

  factory _EncryptedCredentials.fromJson(Map<String, dynamic> json) =
      _$EncryptedCredentialsImpl.fromJson;

  /// Base64-encoded encrypted JSON-serialized data with unique user's
  /// payload, data hashes, and secrets required for EncryptedPassportElement
  /// decryption and authentication
  @override
  String get data;

  /// Base64-encoded data hash for data authentication
  @override
  String get hash;

  /// Base64-encoded secret, encrypted with the bot's public RSA key, required
  /// for data decryption
  @override
  String get secret;

  /// Create a copy of EncryptedCredentials
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EncryptedCredentialsImplCopyWith<_$EncryptedCredentialsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
