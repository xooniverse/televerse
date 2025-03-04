// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'encrypted_passport_element.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EncryptedPassportElement _$EncryptedPassportElementFromJson(
    Map<String, dynamic> json) {
  return _EncryptedPassportElement.fromJson(json);
}

/// @nodoc
mixin _$EncryptedPassportElement {
  /// Type of Telegram Passport element
  @JsonKey(name: 'type')
  PassportType get type => throw _privateConstructorUsedError;

  /// Optional. Base64-encoded encrypted Telegram Passport element data
  /// provided by the user, available for “personal_details”, “passport”,
  /// “driver_license”, “identity_card”, “internal_passport” and “address”
  /// types. Can be decrypted and verified using the accompanying
  /// EncryptedCredentials.
  @JsonKey(name: 'data')
  String? get data => throw _privateConstructorUsedError;

  /// Optional. User's verified phone number, available only for
  /// “phone_number” type
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;

  /// Optional. User's verified email address, available only for “email” type
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;

  /// Optional. Array of encrypted files with documents provided by the user,
  /// available for “utility_bill”, “bank_statement”, “rental_agreement”,
  /// “passport_registration” and “temporary_registration” types. Files can be
  /// decrypted and verified using the accompanying EncryptedCredentials.
  @JsonKey(name: 'files')
  List<PassportFile>? get files => throw _privateConstructorUsedError;

  /// Optional. Encrypted file with the front side of the document, provided
  /// by the user. Available for “passport”, “driver_license”, “identity_card”
  /// and “internal_passport”. The file can be decrypted and verified using
  /// the accompanying EncryptedCredentials.
  @JsonKey(name: 'front_side')
  PassportFile? get frontSide => throw _privateConstructorUsedError;

  /// Optional. Encrypted file with the reverse side of the document, provided
  /// by the user. Available for “driver_license” and “identity_card”. The
  /// file can be decrypted and verified using the accompanying
  /// EncryptedCredentials.
  @JsonKey(name: 'reverse_side')
  PassportFile? get reverseSide => throw _privateConstructorUsedError;

  /// Optional. Encrypted file with the selfie of the user holding a document,
  /// provided by the user; available for “passport”, “driver_license”,
  /// “identity_card” and “internal_passport”. The file can be decrypted and
  /// verified using the accompanying EncryptedCredentials.
  @JsonKey(name: 'selfie')
  PassportFile? get selfie => throw _privateConstructorUsedError;

  /// Optional. Array of encrypted files with translated versions of documents
  /// provided by the user. Available if requested for “passport”,
  /// “driver_license”, “identity_card”, “internal_passport”, “utility_bill”,
  /// “bank_statement”, “rental_agreement”, “passport_registration” and
  /// “temporary_registration” types. Files can be decrypted and verified
  /// using the accompanying EncryptedCredentials.
  @JsonKey(name: 'translation')
  List<PassportFile>? get translation => throw _privateConstructorUsedError;

  /// Base64-encoded element hash for using in PassportElementErrorUnspecified
  @JsonKey(name: 'hash')
  String get hash => throw _privateConstructorUsedError;

  /// Serializes this EncryptedPassportElement to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EncryptedPassportElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EncryptedPassportElementCopyWith<EncryptedPassportElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EncryptedPassportElementCopyWith<$Res> {
  factory $EncryptedPassportElementCopyWith(EncryptedPassportElement value,
          $Res Function(EncryptedPassportElement) then) =
      _$EncryptedPassportElementCopyWithImpl<$Res, EncryptedPassportElement>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') PassportType type,
      @JsonKey(name: 'data') String? data,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'files') List<PassportFile>? files,
      @JsonKey(name: 'front_side') PassportFile? frontSide,
      @JsonKey(name: 'reverse_side') PassportFile? reverseSide,
      @JsonKey(name: 'selfie') PassportFile? selfie,
      @JsonKey(name: 'translation') List<PassportFile>? translation,
      @JsonKey(name: 'hash') String hash});

  $PassportFileCopyWith<$Res>? get frontSide;
  $PassportFileCopyWith<$Res>? get reverseSide;
  $PassportFileCopyWith<$Res>? get selfie;
}

/// @nodoc
class _$EncryptedPassportElementCopyWithImpl<$Res,
        $Val extends EncryptedPassportElement>
    implements $EncryptedPassportElementCopyWith<$Res> {
  _$EncryptedPassportElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EncryptedPassportElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? data = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? files = freezed,
    Object? frontSide = freezed,
    Object? reverseSide = freezed,
    Object? selfie = freezed,
    Object? translation = freezed,
    Object? hash = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PassportType,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      files: freezed == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<PassportFile>?,
      frontSide: freezed == frontSide
          ? _value.frontSide
          : frontSide // ignore: cast_nullable_to_non_nullable
              as PassportFile?,
      reverseSide: freezed == reverseSide
          ? _value.reverseSide
          : reverseSide // ignore: cast_nullable_to_non_nullable
              as PassportFile?,
      selfie: freezed == selfie
          ? _value.selfie
          : selfie // ignore: cast_nullable_to_non_nullable
              as PassportFile?,
      translation: freezed == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as List<PassportFile>?,
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of EncryptedPassportElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PassportFileCopyWith<$Res>? get frontSide {
    if (_value.frontSide == null) {
      return null;
    }

    return $PassportFileCopyWith<$Res>(_value.frontSide!, (value) {
      return _then(_value.copyWith(frontSide: value) as $Val);
    });
  }

  /// Create a copy of EncryptedPassportElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PassportFileCopyWith<$Res>? get reverseSide {
    if (_value.reverseSide == null) {
      return null;
    }

    return $PassportFileCopyWith<$Res>(_value.reverseSide!, (value) {
      return _then(_value.copyWith(reverseSide: value) as $Val);
    });
  }

  /// Create a copy of EncryptedPassportElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PassportFileCopyWith<$Res>? get selfie {
    if (_value.selfie == null) {
      return null;
    }

    return $PassportFileCopyWith<$Res>(_value.selfie!, (value) {
      return _then(_value.copyWith(selfie: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EncryptedPassportElementImplCopyWith<$Res>
    implements $EncryptedPassportElementCopyWith<$Res> {
  factory _$$EncryptedPassportElementImplCopyWith(
          _$EncryptedPassportElementImpl value,
          $Res Function(_$EncryptedPassportElementImpl) then) =
      __$$EncryptedPassportElementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') PassportType type,
      @JsonKey(name: 'data') String? data,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'files') List<PassportFile>? files,
      @JsonKey(name: 'front_side') PassportFile? frontSide,
      @JsonKey(name: 'reverse_side') PassportFile? reverseSide,
      @JsonKey(name: 'selfie') PassportFile? selfie,
      @JsonKey(name: 'translation') List<PassportFile>? translation,
      @JsonKey(name: 'hash') String hash});

  @override
  $PassportFileCopyWith<$Res>? get frontSide;
  @override
  $PassportFileCopyWith<$Res>? get reverseSide;
  @override
  $PassportFileCopyWith<$Res>? get selfie;
}

/// @nodoc
class __$$EncryptedPassportElementImplCopyWithImpl<$Res>
    extends _$EncryptedPassportElementCopyWithImpl<$Res,
        _$EncryptedPassportElementImpl>
    implements _$$EncryptedPassportElementImplCopyWith<$Res> {
  __$$EncryptedPassportElementImplCopyWithImpl(
      _$EncryptedPassportElementImpl _value,
      $Res Function(_$EncryptedPassportElementImpl) _then)
      : super(_value, _then);

  /// Create a copy of EncryptedPassportElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? data = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? files = freezed,
    Object? frontSide = freezed,
    Object? reverseSide = freezed,
    Object? selfie = freezed,
    Object? translation = freezed,
    Object? hash = null,
  }) {
    return _then(_$EncryptedPassportElementImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PassportType,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      files: freezed == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<PassportFile>?,
      frontSide: freezed == frontSide
          ? _value.frontSide
          : frontSide // ignore: cast_nullable_to_non_nullable
              as PassportFile?,
      reverseSide: freezed == reverseSide
          ? _value.reverseSide
          : reverseSide // ignore: cast_nullable_to_non_nullable
              as PassportFile?,
      selfie: freezed == selfie
          ? _value.selfie
          : selfie // ignore: cast_nullable_to_non_nullable
              as PassportFile?,
      translation: freezed == translation
          ? _value._translation
          : translation // ignore: cast_nullable_to_non_nullable
              as List<PassportFile>?,
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EncryptedPassportElementImpl implements _EncryptedPassportElement {
  const _$EncryptedPassportElementImpl(
      {@JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'data') this.data,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'files') final List<PassportFile>? files,
      @JsonKey(name: 'front_side') this.frontSide,
      @JsonKey(name: 'reverse_side') this.reverseSide,
      @JsonKey(name: 'selfie') this.selfie,
      @JsonKey(name: 'translation') final List<PassportFile>? translation,
      @JsonKey(name: 'hash') required this.hash})
      : _files = files,
        _translation = translation;

  factory _$EncryptedPassportElementImpl.fromJson(Map<String, dynamic> json) =>
      _$$EncryptedPassportElementImplFromJson(json);

  /// Type of Telegram Passport element
  @override
  @JsonKey(name: 'type')
  final PassportType type;

  /// Optional. Base64-encoded encrypted Telegram Passport element data
  /// provided by the user, available for “personal_details”, “passport”,
  /// “driver_license”, “identity_card”, “internal_passport” and “address”
  /// types. Can be decrypted and verified using the accompanying
  /// EncryptedCredentials.
  @override
  @JsonKey(name: 'data')
  final String? data;

  /// Optional. User's verified phone number, available only for
  /// “phone_number” type
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;

  /// Optional. User's verified email address, available only for “email” type
  @override
  @JsonKey(name: 'email')
  final String? email;

  /// Optional. Array of encrypted files with documents provided by the user,
  /// available for “utility_bill”, “bank_statement”, “rental_agreement”,
  /// “passport_registration” and “temporary_registration” types. Files can be
  /// decrypted and verified using the accompanying EncryptedCredentials.
  final List<PassportFile>? _files;

  /// Optional. Array of encrypted files with documents provided by the user,
  /// available for “utility_bill”, “bank_statement”, “rental_agreement”,
  /// “passport_registration” and “temporary_registration” types. Files can be
  /// decrypted and verified using the accompanying EncryptedCredentials.
  @override
  @JsonKey(name: 'files')
  List<PassportFile>? get files {
    final value = _files;
    if (value == null) return null;
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Optional. Encrypted file with the front side of the document, provided
  /// by the user. Available for “passport”, “driver_license”, “identity_card”
  /// and “internal_passport”. The file can be decrypted and verified using
  /// the accompanying EncryptedCredentials.
  @override
  @JsonKey(name: 'front_side')
  final PassportFile? frontSide;

  /// Optional. Encrypted file with the reverse side of the document, provided
  /// by the user. Available for “driver_license” and “identity_card”. The
  /// file can be decrypted and verified using the accompanying
  /// EncryptedCredentials.
  @override
  @JsonKey(name: 'reverse_side')
  final PassportFile? reverseSide;

  /// Optional. Encrypted file with the selfie of the user holding a document,
  /// provided by the user; available for “passport”, “driver_license”,
  /// “identity_card” and “internal_passport”. The file can be decrypted and
  /// verified using the accompanying EncryptedCredentials.
  @override
  @JsonKey(name: 'selfie')
  final PassportFile? selfie;

  /// Optional. Array of encrypted files with translated versions of documents
  /// provided by the user. Available if requested for “passport”,
  /// “driver_license”, “identity_card”, “internal_passport”, “utility_bill”,
  /// “bank_statement”, “rental_agreement”, “passport_registration” and
  /// “temporary_registration” types. Files can be decrypted and verified
  /// using the accompanying EncryptedCredentials.
  final List<PassportFile>? _translation;

  /// Optional. Array of encrypted files with translated versions of documents
  /// provided by the user. Available if requested for “passport”,
  /// “driver_license”, “identity_card”, “internal_passport”, “utility_bill”,
  /// “bank_statement”, “rental_agreement”, “passport_registration” and
  /// “temporary_registration” types. Files can be decrypted and verified
  /// using the accompanying EncryptedCredentials.
  @override
  @JsonKey(name: 'translation')
  List<PassportFile>? get translation {
    final value = _translation;
    if (value == null) return null;
    if (_translation is EqualUnmodifiableListView) return _translation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Base64-encoded element hash for using in PassportElementErrorUnspecified
  @override
  @JsonKey(name: 'hash')
  final String hash;

  @override
  String toString() {
    return 'EncryptedPassportElement(type: $type, data: $data, phoneNumber: $phoneNumber, email: $email, files: $files, frontSide: $frontSide, reverseSide: $reverseSide, selfie: $selfie, translation: $translation, hash: $hash)';
  }

  /// Create a copy of EncryptedPassportElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EncryptedPassportElementImplCopyWith<_$EncryptedPassportElementImpl>
      get copyWith => __$$EncryptedPassportElementImplCopyWithImpl<
          _$EncryptedPassportElementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EncryptedPassportElementImplToJson(
      this,
    );
  }
}

abstract class _EncryptedPassportElement implements EncryptedPassportElement {
  const factory _EncryptedPassportElement(
          {@JsonKey(name: 'type') required final PassportType type,
          @JsonKey(name: 'data') final String? data,
          @JsonKey(name: 'phone_number') final String? phoneNumber,
          @JsonKey(name: 'email') final String? email,
          @JsonKey(name: 'files') final List<PassportFile>? files,
          @JsonKey(name: 'front_side') final PassportFile? frontSide,
          @JsonKey(name: 'reverse_side') final PassportFile? reverseSide,
          @JsonKey(name: 'selfie') final PassportFile? selfie,
          @JsonKey(name: 'translation') final List<PassportFile>? translation,
          @JsonKey(name: 'hash') required final String hash}) =
      _$EncryptedPassportElementImpl;

  factory _EncryptedPassportElement.fromJson(Map<String, dynamic> json) =
      _$EncryptedPassportElementImpl.fromJson;

  /// Type of Telegram Passport element
  @override
  @JsonKey(name: 'type')
  PassportType get type;

  /// Optional. Base64-encoded encrypted Telegram Passport element data
  /// provided by the user, available for “personal_details”, “passport”,
  /// “driver_license”, “identity_card”, “internal_passport” and “address”
  /// types. Can be decrypted and verified using the accompanying
  /// EncryptedCredentials.
  @override
  @JsonKey(name: 'data')
  String? get data;

  /// Optional. User's verified phone number, available only for
  /// “phone_number” type
  @override
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;

  /// Optional. User's verified email address, available only for “email” type
  @override
  @JsonKey(name: 'email')
  String? get email;

  /// Optional. Array of encrypted files with documents provided by the user,
  /// available for “utility_bill”, “bank_statement”, “rental_agreement”,
  /// “passport_registration” and “temporary_registration” types. Files can be
  /// decrypted and verified using the accompanying EncryptedCredentials.
  @override
  @JsonKey(name: 'files')
  List<PassportFile>? get files;

  /// Optional. Encrypted file with the front side of the document, provided
  /// by the user. Available for “passport”, “driver_license”, “identity_card”
  /// and “internal_passport”. The file can be decrypted and verified using
  /// the accompanying EncryptedCredentials.
  @override
  @JsonKey(name: 'front_side')
  PassportFile? get frontSide;

  /// Optional. Encrypted file with the reverse side of the document, provided
  /// by the user. Available for “driver_license” and “identity_card”. The
  /// file can be decrypted and verified using the accompanying
  /// EncryptedCredentials.
  @override
  @JsonKey(name: 'reverse_side')
  PassportFile? get reverseSide;

  /// Optional. Encrypted file with the selfie of the user holding a document,
  /// provided by the user; available for “passport”, “driver_license”,
  /// “identity_card” and “internal_passport”. The file can be decrypted and
  /// verified using the accompanying EncryptedCredentials.
  @override
  @JsonKey(name: 'selfie')
  PassportFile? get selfie;

  /// Optional. Array of encrypted files with translated versions of documents
  /// provided by the user. Available if requested for “passport”,
  /// “driver_license”, “identity_card”, “internal_passport”, “utility_bill”,
  /// “bank_statement”, “rental_agreement”, “passport_registration” and
  /// “temporary_registration” types. Files can be decrypted and verified
  /// using the accompanying EncryptedCredentials.
  @override
  @JsonKey(name: 'translation')
  List<PassportFile>? get translation;

  /// Base64-encoded element hash for using in PassportElementErrorUnspecified
  @override
  @JsonKey(name: 'hash')
  String get hash;

  /// Create a copy of EncryptedPassportElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EncryptedPassportElementImplCopyWith<_$EncryptedPassportElementImpl>
      get copyWith => throw _privateConstructorUsedError;
}
