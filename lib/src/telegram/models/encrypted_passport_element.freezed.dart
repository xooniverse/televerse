// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'encrypted_passport_element.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EncryptedPassportElement {
  /// Type of Telegram Passport element
  @JsonKey(name: 'type')
  PassportType get type;

  /// Optional. Base64-encoded encrypted Telegram Passport element data
  /// provided by the user, available for “personal_details”, “passport”,
  /// “driver_license”, “identity_card”, “internal_passport” and “address”
  /// types. Can be decrypted and verified using the accompanying
  /// EncryptedCredentials.
  @JsonKey(name: 'data')
  String? get data;

  /// Optional. User's verified phone number, available only for
  /// “phone_number” type
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;

  /// Optional. User's verified email address, available only for “email” type
  @JsonKey(name: 'email')
  String? get email;

  /// Optional. Array of encrypted files with documents provided by the user,
  /// available for “utility_bill”, “bank_statement”, “rental_agreement”,
  /// “passport_registration” and “temporary_registration” types. Files can be
  /// decrypted and verified using the accompanying EncryptedCredentials.
  @JsonKey(name: 'files')
  List<PassportFile>? get files;

  /// Optional. Encrypted file with the front side of the document, provided
  /// by the user. Available for “passport”, “driver_license”, “identity_card”
  /// and “internal_passport”. The file can be decrypted and verified using
  /// the accompanying EncryptedCredentials.
  @JsonKey(name: 'front_side')
  PassportFile? get frontSide;

  /// Optional. Encrypted file with the reverse side of the document, provided
  /// by the user. Available for “driver_license” and “identity_card”. The
  /// file can be decrypted and verified using the accompanying
  /// EncryptedCredentials.
  @JsonKey(name: 'reverse_side')
  PassportFile? get reverseSide;

  /// Optional. Encrypted file with the selfie of the user holding a document,
  /// provided by the user; available for “passport”, “driver_license”,
  /// “identity_card” and “internal_passport”. The file can be decrypted and
  /// verified using the accompanying EncryptedCredentials.
  @JsonKey(name: 'selfie')
  PassportFile? get selfie;

  /// Optional. Array of encrypted files with translated versions of documents
  /// provided by the user. Available if requested for “passport”,
  /// “driver_license”, “identity_card”, “internal_passport”, “utility_bill”,
  /// “bank_statement”, “rental_agreement”, “passport_registration” and
  /// “temporary_registration” types. Files can be decrypted and verified
  /// using the accompanying EncryptedCredentials.
  @JsonKey(name: 'translation')
  List<PassportFile>? get translation;

  /// Base64-encoded element hash for using in PassportElementErrorUnspecified
  @JsonKey(name: 'hash')
  String get hash;

  /// Create a copy of EncryptedPassportElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EncryptedPassportElementCopyWith<EncryptedPassportElement> get copyWith =>
      _$EncryptedPassportElementCopyWithImpl<EncryptedPassportElement>(
          this as EncryptedPassportElement, _$identity);

  /// Serializes this EncryptedPassportElement to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'EncryptedPassportElement(type: $type, data: $data, phoneNumber: $phoneNumber, email: $email, files: $files, frontSide: $frontSide, reverseSide: $reverseSide, selfie: $selfie, translation: $translation, hash: $hash)';
  }
}

/// @nodoc
abstract mixin class $EncryptedPassportElementCopyWith<$Res> {
  factory $EncryptedPassportElementCopyWith(EncryptedPassportElement value,
          $Res Function(EncryptedPassportElement) _then) =
      _$EncryptedPassportElementCopyWithImpl;
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
class _$EncryptedPassportElementCopyWithImpl<$Res>
    implements $EncryptedPassportElementCopyWith<$Res> {
  _$EncryptedPassportElementCopyWithImpl(this._self, this._then);

  final EncryptedPassportElement _self;
  final $Res Function(EncryptedPassportElement) _then;

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
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as PassportType,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      files: freezed == files
          ? _self.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<PassportFile>?,
      frontSide: freezed == frontSide
          ? _self.frontSide
          : frontSide // ignore: cast_nullable_to_non_nullable
              as PassportFile?,
      reverseSide: freezed == reverseSide
          ? _self.reverseSide
          : reverseSide // ignore: cast_nullable_to_non_nullable
              as PassportFile?,
      selfie: freezed == selfie
          ? _self.selfie
          : selfie // ignore: cast_nullable_to_non_nullable
              as PassportFile?,
      translation: freezed == translation
          ? _self.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as List<PassportFile>?,
      hash: null == hash
          ? _self.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of EncryptedPassportElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PassportFileCopyWith<$Res>? get frontSide {
    if (_self.frontSide == null) {
      return null;
    }

    return $PassportFileCopyWith<$Res>(_self.frontSide!, (value) {
      return _then(_self.copyWith(frontSide: value));
    });
  }

  /// Create a copy of EncryptedPassportElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PassportFileCopyWith<$Res>? get reverseSide {
    if (_self.reverseSide == null) {
      return null;
    }

    return $PassportFileCopyWith<$Res>(_self.reverseSide!, (value) {
      return _then(_self.copyWith(reverseSide: value));
    });
  }

  /// Create a copy of EncryptedPassportElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PassportFileCopyWith<$Res>? get selfie {
    if (_self.selfie == null) {
      return null;
    }

    return $PassportFileCopyWith<$Res>(_self.selfie!, (value) {
      return _then(_self.copyWith(selfie: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _EncryptedPassportElement implements EncryptedPassportElement {
  const _EncryptedPassportElement(
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
  factory _EncryptedPassportElement.fromJson(Map<String, dynamic> json) =>
      _$EncryptedPassportElementFromJson(json);

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

  /// Create a copy of EncryptedPassportElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EncryptedPassportElementCopyWith<_EncryptedPassportElement> get copyWith =>
      __$EncryptedPassportElementCopyWithImpl<_EncryptedPassportElement>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EncryptedPassportElementToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'EncryptedPassportElement(type: $type, data: $data, phoneNumber: $phoneNumber, email: $email, files: $files, frontSide: $frontSide, reverseSide: $reverseSide, selfie: $selfie, translation: $translation, hash: $hash)';
  }
}

/// @nodoc
abstract mixin class _$EncryptedPassportElementCopyWith<$Res>
    implements $EncryptedPassportElementCopyWith<$Res> {
  factory _$EncryptedPassportElementCopyWith(_EncryptedPassportElement value,
          $Res Function(_EncryptedPassportElement) _then) =
      __$EncryptedPassportElementCopyWithImpl;
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
class __$EncryptedPassportElementCopyWithImpl<$Res>
    implements _$EncryptedPassportElementCopyWith<$Res> {
  __$EncryptedPassportElementCopyWithImpl(this._self, this._then);

  final _EncryptedPassportElement _self;
  final $Res Function(_EncryptedPassportElement) _then;

  /// Create a copy of EncryptedPassportElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_EncryptedPassportElement(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as PassportType,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      files: freezed == files
          ? _self._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<PassportFile>?,
      frontSide: freezed == frontSide
          ? _self.frontSide
          : frontSide // ignore: cast_nullable_to_non_nullable
              as PassportFile?,
      reverseSide: freezed == reverseSide
          ? _self.reverseSide
          : reverseSide // ignore: cast_nullable_to_non_nullable
              as PassportFile?,
      selfie: freezed == selfie
          ? _self.selfie
          : selfie // ignore: cast_nullable_to_non_nullable
              as PassportFile?,
      translation: freezed == translation
          ? _self._translation
          : translation // ignore: cast_nullable_to_non_nullable
              as List<PassportFile>?,
      hash: null == hash
          ? _self.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of EncryptedPassportElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PassportFileCopyWith<$Res>? get frontSide {
    if (_self.frontSide == null) {
      return null;
    }

    return $PassportFileCopyWith<$Res>(_self.frontSide!, (value) {
      return _then(_self.copyWith(frontSide: value));
    });
  }

  /// Create a copy of EncryptedPassportElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PassportFileCopyWith<$Res>? get reverseSide {
    if (_self.reverseSide == null) {
      return null;
    }

    return $PassportFileCopyWith<$Res>(_self.reverseSide!, (value) {
      return _then(_self.copyWith(reverseSide: value));
    });
  }

  /// Create a copy of EncryptedPassportElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PassportFileCopyWith<$Res>? get selfie {
    if (_self.selfie == null) {
      return null;
    }

    return $PassportFileCopyWith<$Res>(_self.selfie!, (value) {
      return _then(_self.copyWith(selfie: value));
    });
  }
}
