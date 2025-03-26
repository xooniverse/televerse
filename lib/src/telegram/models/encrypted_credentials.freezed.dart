// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'encrypted_credentials.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EncryptedCredentials {
  /// Base64-encoded encrypted JSON-serialized data with unique user's
  /// payload, data hashes, and secrets required for EncryptedPassportElement
  /// decryption and authentication
  @JsonKey(name: 'data')
  String get data;

  /// Base64-encoded data hash for data authentication
  @JsonKey(name: 'hash')
  String get hash;

  /// Base64-encoded secret, encrypted with the bot's public RSA key, required
  /// for data decryption
  @JsonKey(name: 'secret')
  String get secret;

  /// Create a copy of EncryptedCredentials
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EncryptedCredentialsCopyWith<EncryptedCredentials> get copyWith =>
      _$EncryptedCredentialsCopyWithImpl<EncryptedCredentials>(
          this as EncryptedCredentials, _$identity);

  /// Serializes this EncryptedCredentials to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'EncryptedCredentials(data: $data, hash: $hash, secret: $secret)';
  }
}

/// @nodoc
abstract mixin class $EncryptedCredentialsCopyWith<$Res> {
  factory $EncryptedCredentialsCopyWith(EncryptedCredentials value,
          $Res Function(EncryptedCredentials) _then) =
      _$EncryptedCredentialsCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') String data,
      @JsonKey(name: 'hash') String hash,
      @JsonKey(name: 'secret') String secret});
}

/// @nodoc
class _$EncryptedCredentialsCopyWithImpl<$Res>
    implements $EncryptedCredentialsCopyWith<$Res> {
  _$EncryptedCredentialsCopyWithImpl(this._self, this._then);

  final EncryptedCredentials _self;
  final $Res Function(EncryptedCredentials) _then;

  /// Create a copy of EncryptedCredentials
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? hash = null,
    Object? secret = null,
  }) {
    return _then(_self.copyWith(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      hash: null == hash
          ? _self.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      secret: null == secret
          ? _self.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _EncryptedCredentials implements EncryptedCredentials {
  const _EncryptedCredentials(
      {@JsonKey(name: 'data') required this.data,
      @JsonKey(name: 'hash') required this.hash,
      @JsonKey(name: 'secret') required this.secret});
  factory _EncryptedCredentials.fromJson(Map<String, dynamic> json) =>
      _$EncryptedCredentialsFromJson(json);

  /// Base64-encoded encrypted JSON-serialized data with unique user's
  /// payload, data hashes, and secrets required for EncryptedPassportElement
  /// decryption and authentication
  @override
  @JsonKey(name: 'data')
  final String data;

  /// Base64-encoded data hash for data authentication
  @override
  @JsonKey(name: 'hash')
  final String hash;

  /// Base64-encoded secret, encrypted with the bot's public RSA key, required
  /// for data decryption
  @override
  @JsonKey(name: 'secret')
  final String secret;

  /// Create a copy of EncryptedCredentials
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EncryptedCredentialsCopyWith<_EncryptedCredentials> get copyWith =>
      __$EncryptedCredentialsCopyWithImpl<_EncryptedCredentials>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EncryptedCredentialsToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'EncryptedCredentials(data: $data, hash: $hash, secret: $secret)';
  }
}

/// @nodoc
abstract mixin class _$EncryptedCredentialsCopyWith<$Res>
    implements $EncryptedCredentialsCopyWith<$Res> {
  factory _$EncryptedCredentialsCopyWith(_EncryptedCredentials value,
          $Res Function(_EncryptedCredentials) _then) =
      __$EncryptedCredentialsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') String data,
      @JsonKey(name: 'hash') String hash,
      @JsonKey(name: 'secret') String secret});
}

/// @nodoc
class __$EncryptedCredentialsCopyWithImpl<$Res>
    implements _$EncryptedCredentialsCopyWith<$Res> {
  __$EncryptedCredentialsCopyWithImpl(this._self, this._then);

  final _EncryptedCredentials _self;
  final $Res Function(_EncryptedCredentials) _then;

  /// Create a copy of EncryptedCredentials
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
    Object? hash = null,
    Object? secret = null,
  }) {
    return _then(_EncryptedCredentials(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      hash: null == hash
          ? _self.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      secret: null == secret
          ? _self.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}
