// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passport_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PassportData _$PassportDataFromJson(Map<String, dynamic> json) {
  return _PassportData.fromJson(json);
}

/// @nodoc
mixin _$PassportData {
  /// Array with information about documents and other Telegram Passport
  /// elements that was shared with the bot
  @JsonKey(name: 'data')
  List<EncryptedPassportElement> get data => throw _privateConstructorUsedError;

  /// Encrypted credentials required to decrypt the data
  @JsonKey(name: 'credentials')
  EncryptedCredentials get credentials => throw _privateConstructorUsedError;

  /// Serializes this PassportData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PassportData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PassportDataCopyWith<PassportData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PassportDataCopyWith<$Res> {
  factory $PassportDataCopyWith(
          PassportData value, $Res Function(PassportData) then) =
      _$PassportDataCopyWithImpl<$Res, PassportData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<EncryptedPassportElement> data,
      @JsonKey(name: 'credentials') EncryptedCredentials credentials});

  $EncryptedCredentialsCopyWith<$Res> get credentials;
}

/// @nodoc
class _$PassportDataCopyWithImpl<$Res, $Val extends PassportData>
    implements $PassportDataCopyWith<$Res> {
  _$PassportDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PassportData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? credentials = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<EncryptedPassportElement>,
      credentials: null == credentials
          ? _value.credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as EncryptedCredentials,
    ) as $Val);
  }

  /// Create a copy of PassportData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EncryptedCredentialsCopyWith<$Res> get credentials {
    return $EncryptedCredentialsCopyWith<$Res>(_value.credentials, (value) {
      return _then(_value.copyWith(credentials: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PassportDataImplCopyWith<$Res>
    implements $PassportDataCopyWith<$Res> {
  factory _$$PassportDataImplCopyWith(
          _$PassportDataImpl value, $Res Function(_$PassportDataImpl) then) =
      __$$PassportDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<EncryptedPassportElement> data,
      @JsonKey(name: 'credentials') EncryptedCredentials credentials});

  @override
  $EncryptedCredentialsCopyWith<$Res> get credentials;
}

/// @nodoc
class __$$PassportDataImplCopyWithImpl<$Res>
    extends _$PassportDataCopyWithImpl<$Res, _$PassportDataImpl>
    implements _$$PassportDataImplCopyWith<$Res> {
  __$$PassportDataImplCopyWithImpl(
      _$PassportDataImpl _value, $Res Function(_$PassportDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PassportData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? credentials = null,
  }) {
    return _then(_$PassportDataImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<EncryptedPassportElement>,
      credentials: null == credentials
          ? _value.credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as EncryptedCredentials,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PassportDataImpl implements _PassportData {
  const _$PassportDataImpl(
      {@JsonKey(name: 'data')
      required final List<EncryptedPassportElement> data,
      @JsonKey(name: 'credentials') required this.credentials})
      : _data = data;

  factory _$PassportDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PassportDataImplFromJson(json);

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

  @override
  String toString() {
    return 'PassportData(data: $data, credentials: $credentials)';
  }

  /// Create a copy of PassportData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PassportDataImplCopyWith<_$PassportDataImpl> get copyWith =>
      __$$PassportDataImplCopyWithImpl<_$PassportDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PassportDataImplToJson(
      this,
    );
  }
}

abstract class _PassportData implements PassportData {
  const factory _PassportData(
      {@JsonKey(name: 'data')
      required final List<EncryptedPassportElement> data,
      @JsonKey(name: 'credentials')
      required final EncryptedCredentials credentials}) = _$PassportDataImpl;

  factory _PassportData.fromJson(Map<String, dynamic> json) =
      _$PassportDataImpl.fromJson;

  /// Array with information about documents and other Telegram Passport
  /// elements that was shared with the bot
  @override
  @JsonKey(name: 'data')
  List<EncryptedPassportElement> get data;

  /// Encrypted credentials required to decrypt the data
  @override
  @JsonKey(name: 'credentials')
  EncryptedCredentials get credentials;

  /// Create a copy of PassportData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PassportDataImplCopyWith<_$PassportDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
