// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passport_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PassportData {
  /// Array with information about documents and other Telegram Passport
  /// elements that was shared with the bot
  @JsonKey(name: 'data')
  List<EncryptedPassportElement> get data;

  /// Encrypted credentials required to decrypt the data
  @JsonKey(name: 'credentials')
  EncryptedCredentials get credentials;

  /// Create a copy of PassportData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PassportDataCopyWith<PassportData> get copyWith =>
      _$PassportDataCopyWithImpl<PassportData>(
          this as PassportData, _$identity);

  /// Serializes this PassportData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'PassportData(data: $data, credentials: $credentials)';
  }
}

/// @nodoc
abstract mixin class $PassportDataCopyWith<$Res> {
  factory $PassportDataCopyWith(
          PassportData value, $Res Function(PassportData) _then) =
      _$PassportDataCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<EncryptedPassportElement> data,
      @JsonKey(name: 'credentials') EncryptedCredentials credentials});

  $EncryptedCredentialsCopyWith<$Res> get credentials;
}

/// @nodoc
class _$PassportDataCopyWithImpl<$Res> implements $PassportDataCopyWith<$Res> {
  _$PassportDataCopyWithImpl(this._self, this._then);

  final PassportData _self;
  final $Res Function(PassportData) _then;

  /// Create a copy of PassportData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? credentials = null,
  }) {
    return _then(_self.copyWith(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<EncryptedPassportElement>,
      credentials: null == credentials
          ? _self.credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as EncryptedCredentials,
    ));
  }

  /// Create a copy of PassportData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EncryptedCredentialsCopyWith<$Res> get credentials {
    return $EncryptedCredentialsCopyWith<$Res>(_self.credentials, (value) {
      return _then(_self.copyWith(credentials: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _PassportData implements PassportData {
  const _PassportData(
      {@JsonKey(name: 'data')
      required final List<EncryptedPassportElement> data,
      @JsonKey(name: 'credentials') required this.credentials})
      : _data = data;
  factory _PassportData.fromJson(Map<String, dynamic> json) =>
      _$PassportDataFromJson(json);

  /// Array with information about documents and other Telegram Passport
  /// elements that was shared with the bot
  final List<EncryptedPassportElement> _data;

  /// Array with information about documents and other Telegram Passport
  /// elements that was shared with the bot
  @override
  @JsonKey(name: 'data')
  List<EncryptedPassportElement> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  /// Encrypted credentials required to decrypt the data
  @override
  @JsonKey(name: 'credentials')
  final EncryptedCredentials credentials;

  /// Create a copy of PassportData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PassportDataCopyWith<_PassportData> get copyWith =>
      __$PassportDataCopyWithImpl<_PassportData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PassportDataToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'PassportData(data: $data, credentials: $credentials)';
  }
}

/// @nodoc
abstract mixin class _$PassportDataCopyWith<$Res>
    implements $PassportDataCopyWith<$Res> {
  factory _$PassportDataCopyWith(
          _PassportData value, $Res Function(_PassportData) _then) =
      __$PassportDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<EncryptedPassportElement> data,
      @JsonKey(name: 'credentials') EncryptedCredentials credentials});

  @override
  $EncryptedCredentialsCopyWith<$Res> get credentials;
}

/// @nodoc
class __$PassportDataCopyWithImpl<$Res>
    implements _$PassportDataCopyWith<$Res> {
  __$PassportDataCopyWithImpl(this._self, this._then);

  final _PassportData _self;
  final $Res Function(_PassportData) _then;

  /// Create a copy of PassportData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
    Object? credentials = null,
  }) {
    return _then(_PassportData(
      data: null == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<EncryptedPassportElement>,
      credentials: null == credentials
          ? _self.credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as EncryptedCredentials,
    ));
  }

  /// Create a copy of PassportData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EncryptedCredentialsCopyWith<$Res> get credentials {
    return $EncryptedCredentialsCopyWith<$Res>(_self.credentials, (value) {
      return _then(_self.copyWith(credentials: value));
    });
  }
}
