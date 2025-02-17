// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passport_element_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PassportElementError _$PassportElementErrorFromJson(Map<String, dynamic> json) {
  switch (json['source']) {
    case 'data_field':
      return PassportElementErrorDataField.fromJson(json);
    case 'front_side':
      return PassportElementErrorFrontSide.fromJson(json);
    case 'reverse_side':
      return PassportElementErrorReverseSide.fromJson(json);
    case 'selfie':
      return PassportElementErrorSelfie.fromJson(json);
    case 'file':
      return PassportElementErrorFile.fromJson(json);
    case 'files':
      return PassportElementErrorFiles.fromJson(json);
    case 'translation_file':
      return PassportElementErrorTranslationFile.fromJson(json);
    case 'translation_files':
      return PassportElementErrorTranslationFiles.fromJson(json);
    case 'unspecified':
      return PassportElementErrorUnspecified.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'source', 'PassportElementError',
          'Invalid union type "${json['source']}"!');
  }
}

/// @nodoc
mixin _$PassportElementError {
  /// Error source, must be "data"
  PassportElementErrorSource get source => throw _privateConstructorUsedError;

  /// The section of the user's Telegram Passport which has the error
  PassportType get type => throw _privateConstructorUsedError;

  /// Error message
  String get message => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PassportElementErrorDataField value) dataField,
    required TResult Function(PassportElementErrorFrontSide value) frontSide,
    required TResult Function(PassportElementErrorReverseSide value)
        reverseSide,
    required TResult Function(PassportElementErrorSelfie value) selfie,
    required TResult Function(PassportElementErrorFile value) file,
    required TResult Function(PassportElementErrorFiles value) files,
    required TResult Function(PassportElementErrorTranslationFile value)
        translationFile,
    required TResult Function(PassportElementErrorTranslationFiles value)
        translationFiles,
    required TResult Function(PassportElementErrorUnspecified value)
        unspecified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PassportElementErrorDataField value)? dataField,
    TResult? Function(PassportElementErrorFrontSide value)? frontSide,
    TResult? Function(PassportElementErrorReverseSide value)? reverseSide,
    TResult? Function(PassportElementErrorSelfie value)? selfie,
    TResult? Function(PassportElementErrorFile value)? file,
    TResult? Function(PassportElementErrorFiles value)? files,
    TResult? Function(PassportElementErrorTranslationFile value)?
        translationFile,
    TResult? Function(PassportElementErrorTranslationFiles value)?
        translationFiles,
    TResult? Function(PassportElementErrorUnspecified value)? unspecified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PassportElementErrorDataField value)? dataField,
    TResult Function(PassportElementErrorFrontSide value)? frontSide,
    TResult Function(PassportElementErrorReverseSide value)? reverseSide,
    TResult Function(PassportElementErrorSelfie value)? selfie,
    TResult Function(PassportElementErrorFile value)? file,
    TResult Function(PassportElementErrorFiles value)? files,
    TResult Function(PassportElementErrorTranslationFile value)?
        translationFile,
    TResult Function(PassportElementErrorTranslationFiles value)?
        translationFiles,
    TResult Function(PassportElementErrorUnspecified value)? unspecified,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this PassportElementError to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PassportElementErrorCopyWith<PassportElementError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PassportElementErrorCopyWith<$Res> {
  factory $PassportElementErrorCopyWith(PassportElementError value,
          $Res Function(PassportElementError) then) =
      _$PassportElementErrorCopyWithImpl<$Res, PassportElementError>;
  @useResult
  $Res call(
      {PassportElementErrorSource source, PassportType type, String message});
}

/// @nodoc
class _$PassportElementErrorCopyWithImpl<$Res,
        $Val extends PassportElementError>
    implements $PassportElementErrorCopyWith<$Res> {
  _$PassportElementErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? type = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as PassportElementErrorSource,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PassportType,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PassportElementErrorDataFieldImplCopyWith<$Res>
    implements $PassportElementErrorCopyWith<$Res> {
  factory _$$PassportElementErrorDataFieldImplCopyWith(
          _$PassportElementErrorDataFieldImpl value,
          $Res Function(_$PassportElementErrorDataFieldImpl) then) =
      __$$PassportElementErrorDataFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PassportElementErrorSource source,
      PassportType type,
      String message,
      @JsonKey(name: 'field_name') String fieldName,
      @JsonKey(name: 'data_hash') String dataHash});
}

/// @nodoc
class __$$PassportElementErrorDataFieldImplCopyWithImpl<$Res>
    extends _$PassportElementErrorCopyWithImpl<$Res,
        _$PassportElementErrorDataFieldImpl>
    implements _$$PassportElementErrorDataFieldImplCopyWith<$Res> {
  __$$PassportElementErrorDataFieldImplCopyWithImpl(
      _$PassportElementErrorDataFieldImpl _value,
      $Res Function(_$PassportElementErrorDataFieldImpl) _then)
      : super(_value, _then);

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? type = null,
    Object? message = null,
    Object? fieldName = null,
    Object? dataHash = null,
  }) {
    return _then(_$PassportElementErrorDataFieldImpl(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as PassportElementErrorSource,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PassportType,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      fieldName: null == fieldName
          ? _value.fieldName
          : fieldName // ignore: cast_nullable_to_non_nullable
              as String,
      dataHash: null == dataHash
          ? _value.dataHash
          : dataHash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PassportElementErrorDataFieldImpl
    implements PassportElementErrorDataField {
  const _$PassportElementErrorDataFieldImpl(
      {this.source = PassportElementErrorSource.data,
      required this.type,
      required this.message,
      @JsonKey(name: 'field_name') required this.fieldName,
      @JsonKey(name: 'data_hash') required this.dataHash})
      : assert(source == PassportElementErrorSource.data,
            'source must be PassportElementErrorSource.data');

  factory _$PassportElementErrorDataFieldImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PassportElementErrorDataFieldImplFromJson(json);

  /// Error source, must be "data"
  @override
  @JsonKey()
  final PassportElementErrorSource source;

  /// The section of the user's Telegram Passport which has the error
  @override
  final PassportType type;

  /// Error message
  @override
  final String message;

  /// Name of the data field which has the error
  @override
  @JsonKey(name: 'field_name')
  final String fieldName;

  /// Base64-encoded data hash
  @override
  @JsonKey(name: 'data_hash')
  final String dataHash;

  @override
  String toString() {
    return 'PassportElementError.dataField(source: $source, type: $type, message: $message, fieldName: $fieldName, dataHash: $dataHash)';
  }

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PassportElementErrorDataFieldImplCopyWith<
          _$PassportElementErrorDataFieldImpl>
      get copyWith => __$$PassportElementErrorDataFieldImplCopyWithImpl<
          _$PassportElementErrorDataFieldImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PassportElementErrorDataField value) dataField,
    required TResult Function(PassportElementErrorFrontSide value) frontSide,
    required TResult Function(PassportElementErrorReverseSide value)
        reverseSide,
    required TResult Function(PassportElementErrorSelfie value) selfie,
    required TResult Function(PassportElementErrorFile value) file,
    required TResult Function(PassportElementErrorFiles value) files,
    required TResult Function(PassportElementErrorTranslationFile value)
        translationFile,
    required TResult Function(PassportElementErrorTranslationFiles value)
        translationFiles,
    required TResult Function(PassportElementErrorUnspecified value)
        unspecified,
  }) {
    return dataField(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PassportElementErrorDataField value)? dataField,
    TResult? Function(PassportElementErrorFrontSide value)? frontSide,
    TResult? Function(PassportElementErrorReverseSide value)? reverseSide,
    TResult? Function(PassportElementErrorSelfie value)? selfie,
    TResult? Function(PassportElementErrorFile value)? file,
    TResult? Function(PassportElementErrorFiles value)? files,
    TResult? Function(PassportElementErrorTranslationFile value)?
        translationFile,
    TResult? Function(PassportElementErrorTranslationFiles value)?
        translationFiles,
    TResult? Function(PassportElementErrorUnspecified value)? unspecified,
  }) {
    return dataField?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PassportElementErrorDataField value)? dataField,
    TResult Function(PassportElementErrorFrontSide value)? frontSide,
    TResult Function(PassportElementErrorReverseSide value)? reverseSide,
    TResult Function(PassportElementErrorSelfie value)? selfie,
    TResult Function(PassportElementErrorFile value)? file,
    TResult Function(PassportElementErrorFiles value)? files,
    TResult Function(PassportElementErrorTranslationFile value)?
        translationFile,
    TResult Function(PassportElementErrorTranslationFiles value)?
        translationFiles,
    TResult Function(PassportElementErrorUnspecified value)? unspecified,
    required TResult orElse(),
  }) {
    if (dataField != null) {
      return dataField(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PassportElementErrorDataFieldImplToJson(
      this,
    );
  }
}

abstract class PassportElementErrorDataField implements PassportElementError {
  const factory PassportElementErrorDataField(
          {final PassportElementErrorSource source,
          required final PassportType type,
          required final String message,
          @JsonKey(name: 'field_name') required final String fieldName,
          @JsonKey(name: 'data_hash') required final String dataHash}) =
      _$PassportElementErrorDataFieldImpl;

  factory PassportElementErrorDataField.fromJson(Map<String, dynamic> json) =
      _$PassportElementErrorDataFieldImpl.fromJson;

  /// Error source, must be "data"
  @override
  PassportElementErrorSource get source;

  /// The section of the user's Telegram Passport which has the error
  @override
  PassportType get type;

  /// Error message
  @override
  String get message;

  /// Name of the data field which has the error
  @JsonKey(name: 'field_name')
  String get fieldName;

  /// Base64-encoded data hash
  @JsonKey(name: 'data_hash')
  String get dataHash;

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PassportElementErrorDataFieldImplCopyWith<
          _$PassportElementErrorDataFieldImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PassportElementErrorFrontSideImplCopyWith<$Res>
    implements $PassportElementErrorCopyWith<$Res> {
  factory _$$PassportElementErrorFrontSideImplCopyWith(
          _$PassportElementErrorFrontSideImpl value,
          $Res Function(_$PassportElementErrorFrontSideImpl) then) =
      __$$PassportElementErrorFrontSideImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PassportElementErrorSource source,
      PassportType type,
      String message,
      @JsonKey(name: 'file_hash') String fileHash});
}

/// @nodoc
class __$$PassportElementErrorFrontSideImplCopyWithImpl<$Res>
    extends _$PassportElementErrorCopyWithImpl<$Res,
        _$PassportElementErrorFrontSideImpl>
    implements _$$PassportElementErrorFrontSideImplCopyWith<$Res> {
  __$$PassportElementErrorFrontSideImplCopyWithImpl(
      _$PassportElementErrorFrontSideImpl _value,
      $Res Function(_$PassportElementErrorFrontSideImpl) _then)
      : super(_value, _then);

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? type = null,
    Object? message = null,
    Object? fileHash = null,
  }) {
    return _then(_$PassportElementErrorFrontSideImpl(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as PassportElementErrorSource,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PassportType,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      fileHash: null == fileHash
          ? _value.fileHash
          : fileHash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PassportElementErrorFrontSideImpl
    implements PassportElementErrorFrontSide {
  const _$PassportElementErrorFrontSideImpl(
      {this.source = PassportElementErrorSource.frontSide,
      required this.type,
      required this.message,
      @JsonKey(name: 'file_hash') required this.fileHash})
      : assert(source == PassportElementErrorSource.frontSide,
            'source must be PassportElementErrorSource.frontSide');

  factory _$PassportElementErrorFrontSideImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PassportElementErrorFrontSideImplFromJson(json);

  /// Error source, must be "front_side"
  @override
  @JsonKey()
  final PassportElementErrorSource source;

  /// The section of the user's Telegram Passport which has the error
  @override
  final PassportType type;

  /// Error message
  @override
  final String message;

  /// Base64-encoded hash of the file with the front side of the document
  @override
  @JsonKey(name: 'file_hash')
  final String fileHash;

  @override
  String toString() {
    return 'PassportElementError.frontSide(source: $source, type: $type, message: $message, fileHash: $fileHash)';
  }

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PassportElementErrorFrontSideImplCopyWith<
          _$PassportElementErrorFrontSideImpl>
      get copyWith => __$$PassportElementErrorFrontSideImplCopyWithImpl<
          _$PassportElementErrorFrontSideImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PassportElementErrorDataField value) dataField,
    required TResult Function(PassportElementErrorFrontSide value) frontSide,
    required TResult Function(PassportElementErrorReverseSide value)
        reverseSide,
    required TResult Function(PassportElementErrorSelfie value) selfie,
    required TResult Function(PassportElementErrorFile value) file,
    required TResult Function(PassportElementErrorFiles value) files,
    required TResult Function(PassportElementErrorTranslationFile value)
        translationFile,
    required TResult Function(PassportElementErrorTranslationFiles value)
        translationFiles,
    required TResult Function(PassportElementErrorUnspecified value)
        unspecified,
  }) {
    return frontSide(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PassportElementErrorDataField value)? dataField,
    TResult? Function(PassportElementErrorFrontSide value)? frontSide,
    TResult? Function(PassportElementErrorReverseSide value)? reverseSide,
    TResult? Function(PassportElementErrorSelfie value)? selfie,
    TResult? Function(PassportElementErrorFile value)? file,
    TResult? Function(PassportElementErrorFiles value)? files,
    TResult? Function(PassportElementErrorTranslationFile value)?
        translationFile,
    TResult? Function(PassportElementErrorTranslationFiles value)?
        translationFiles,
    TResult? Function(PassportElementErrorUnspecified value)? unspecified,
  }) {
    return frontSide?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PassportElementErrorDataField value)? dataField,
    TResult Function(PassportElementErrorFrontSide value)? frontSide,
    TResult Function(PassportElementErrorReverseSide value)? reverseSide,
    TResult Function(PassportElementErrorSelfie value)? selfie,
    TResult Function(PassportElementErrorFile value)? file,
    TResult Function(PassportElementErrorFiles value)? files,
    TResult Function(PassportElementErrorTranslationFile value)?
        translationFile,
    TResult Function(PassportElementErrorTranslationFiles value)?
        translationFiles,
    TResult Function(PassportElementErrorUnspecified value)? unspecified,
    required TResult orElse(),
  }) {
    if (frontSide != null) {
      return frontSide(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PassportElementErrorFrontSideImplToJson(
      this,
    );
  }
}

abstract class PassportElementErrorFrontSide implements PassportElementError {
  const factory PassportElementErrorFrontSide(
          {final PassportElementErrorSource source,
          required final PassportType type,
          required final String message,
          @JsonKey(name: 'file_hash') required final String fileHash}) =
      _$PassportElementErrorFrontSideImpl;

  factory PassportElementErrorFrontSide.fromJson(Map<String, dynamic> json) =
      _$PassportElementErrorFrontSideImpl.fromJson;

  /// Error source, must be "front_side"
  @override
  PassportElementErrorSource get source;

  /// The section of the user's Telegram Passport which has the error
  @override
  PassportType get type;

  /// Error message
  @override
  String get message;

  /// Base64-encoded hash of the file with the front side of the document
  @JsonKey(name: 'file_hash')
  String get fileHash;

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PassportElementErrorFrontSideImplCopyWith<
          _$PassportElementErrorFrontSideImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PassportElementErrorReverseSideImplCopyWith<$Res>
    implements $PassportElementErrorCopyWith<$Res> {
  factory _$$PassportElementErrorReverseSideImplCopyWith(
          _$PassportElementErrorReverseSideImpl value,
          $Res Function(_$PassportElementErrorReverseSideImpl) then) =
      __$$PassportElementErrorReverseSideImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PassportElementErrorSource source,
      PassportType type,
      String message,
      @JsonKey(name: 'file_hash') String fileHash});
}

/// @nodoc
class __$$PassportElementErrorReverseSideImplCopyWithImpl<$Res>
    extends _$PassportElementErrorCopyWithImpl<$Res,
        _$PassportElementErrorReverseSideImpl>
    implements _$$PassportElementErrorReverseSideImplCopyWith<$Res> {
  __$$PassportElementErrorReverseSideImplCopyWithImpl(
      _$PassportElementErrorReverseSideImpl _value,
      $Res Function(_$PassportElementErrorReverseSideImpl) _then)
      : super(_value, _then);

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? type = null,
    Object? message = null,
    Object? fileHash = null,
  }) {
    return _then(_$PassportElementErrorReverseSideImpl(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as PassportElementErrorSource,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PassportType,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      fileHash: null == fileHash
          ? _value.fileHash
          : fileHash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PassportElementErrorReverseSideImpl
    implements PassportElementErrorReverseSide {
  const _$PassportElementErrorReverseSideImpl(
      {this.source = PassportElementErrorSource.reverseSide,
      required this.type,
      required this.message,
      @JsonKey(name: 'file_hash') required this.fileHash})
      : assert(source == PassportElementErrorSource.reverseSide,
            'source must be PassportElementErrorSource.reverseSide');

  factory _$PassportElementErrorReverseSideImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PassportElementErrorReverseSideImplFromJson(json);

  /// Error source, must be "reverse_side"
  @override
  @JsonKey()
  final PassportElementErrorSource source;

  /// The section of the user's Telegram Passport which has the error
  @override
  final PassportType type;

  /// Error message
  @override
  final String message;

  /// Base64-encoded hash of the file with the reverse side of the document
  @override
  @JsonKey(name: 'file_hash')
  final String fileHash;

  @override
  String toString() {
    return 'PassportElementError.reverseSide(source: $source, type: $type, message: $message, fileHash: $fileHash)';
  }

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PassportElementErrorReverseSideImplCopyWith<
          _$PassportElementErrorReverseSideImpl>
      get copyWith => __$$PassportElementErrorReverseSideImplCopyWithImpl<
          _$PassportElementErrorReverseSideImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PassportElementErrorDataField value) dataField,
    required TResult Function(PassportElementErrorFrontSide value) frontSide,
    required TResult Function(PassportElementErrorReverseSide value)
        reverseSide,
    required TResult Function(PassportElementErrorSelfie value) selfie,
    required TResult Function(PassportElementErrorFile value) file,
    required TResult Function(PassportElementErrorFiles value) files,
    required TResult Function(PassportElementErrorTranslationFile value)
        translationFile,
    required TResult Function(PassportElementErrorTranslationFiles value)
        translationFiles,
    required TResult Function(PassportElementErrorUnspecified value)
        unspecified,
  }) {
    return reverseSide(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PassportElementErrorDataField value)? dataField,
    TResult? Function(PassportElementErrorFrontSide value)? frontSide,
    TResult? Function(PassportElementErrorReverseSide value)? reverseSide,
    TResult? Function(PassportElementErrorSelfie value)? selfie,
    TResult? Function(PassportElementErrorFile value)? file,
    TResult? Function(PassportElementErrorFiles value)? files,
    TResult? Function(PassportElementErrorTranslationFile value)?
        translationFile,
    TResult? Function(PassportElementErrorTranslationFiles value)?
        translationFiles,
    TResult? Function(PassportElementErrorUnspecified value)? unspecified,
  }) {
    return reverseSide?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PassportElementErrorDataField value)? dataField,
    TResult Function(PassportElementErrorFrontSide value)? frontSide,
    TResult Function(PassportElementErrorReverseSide value)? reverseSide,
    TResult Function(PassportElementErrorSelfie value)? selfie,
    TResult Function(PassportElementErrorFile value)? file,
    TResult Function(PassportElementErrorFiles value)? files,
    TResult Function(PassportElementErrorTranslationFile value)?
        translationFile,
    TResult Function(PassportElementErrorTranslationFiles value)?
        translationFiles,
    TResult Function(PassportElementErrorUnspecified value)? unspecified,
    required TResult orElse(),
  }) {
    if (reverseSide != null) {
      return reverseSide(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PassportElementErrorReverseSideImplToJson(
      this,
    );
  }
}

abstract class PassportElementErrorReverseSide implements PassportElementError {
  const factory PassportElementErrorReverseSide(
          {final PassportElementErrorSource source,
          required final PassportType type,
          required final String message,
          @JsonKey(name: 'file_hash') required final String fileHash}) =
      _$PassportElementErrorReverseSideImpl;

  factory PassportElementErrorReverseSide.fromJson(Map<String, dynamic> json) =
      _$PassportElementErrorReverseSideImpl.fromJson;

  /// Error source, must be "reverse_side"
  @override
  PassportElementErrorSource get source;

  /// The section of the user's Telegram Passport which has the error
  @override
  PassportType get type;

  /// Error message
  @override
  String get message;

  /// Base64-encoded hash of the file with the reverse side of the document
  @JsonKey(name: 'file_hash')
  String get fileHash;

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PassportElementErrorReverseSideImplCopyWith<
          _$PassportElementErrorReverseSideImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PassportElementErrorSelfieImplCopyWith<$Res>
    implements $PassportElementErrorCopyWith<$Res> {
  factory _$$PassportElementErrorSelfieImplCopyWith(
          _$PassportElementErrorSelfieImpl value,
          $Res Function(_$PassportElementErrorSelfieImpl) then) =
      __$$PassportElementErrorSelfieImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PassportElementErrorSource source,
      PassportType type,
      String message,
      @JsonKey(name: 'file_hash') String fileHash});
}

/// @nodoc
class __$$PassportElementErrorSelfieImplCopyWithImpl<$Res>
    extends _$PassportElementErrorCopyWithImpl<$Res,
        _$PassportElementErrorSelfieImpl>
    implements _$$PassportElementErrorSelfieImplCopyWith<$Res> {
  __$$PassportElementErrorSelfieImplCopyWithImpl(
      _$PassportElementErrorSelfieImpl _value,
      $Res Function(_$PassportElementErrorSelfieImpl) _then)
      : super(_value, _then);

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? type = null,
    Object? message = null,
    Object? fileHash = null,
  }) {
    return _then(_$PassportElementErrorSelfieImpl(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as PassportElementErrorSource,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PassportType,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      fileHash: null == fileHash
          ? _value.fileHash
          : fileHash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PassportElementErrorSelfieImpl implements PassportElementErrorSelfie {
  const _$PassportElementErrorSelfieImpl(
      {this.source = PassportElementErrorSource.selfie,
      required this.type,
      required this.message,
      @JsonKey(name: 'file_hash') required this.fileHash})
      : assert(source == PassportElementErrorSource.selfie,
            'source must be PassportElementErrorSource.selfie');

  factory _$PassportElementErrorSelfieImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PassportElementErrorSelfieImplFromJson(json);

  /// Error source, must be "selfie"
  @override
  @JsonKey()
  final PassportElementErrorSource source;

  /// The section of the user's Telegram Passport which has the error
  @override
  final PassportType type;

  /// Error message
  @override
  final String message;

  /// Base64-encoded hash of the file with the selfie
  @override
  @JsonKey(name: 'file_hash')
  final String fileHash;

  @override
  String toString() {
    return 'PassportElementError.selfie(source: $source, type: $type, message: $message, fileHash: $fileHash)';
  }

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PassportElementErrorSelfieImplCopyWith<_$PassportElementErrorSelfieImpl>
      get copyWith => __$$PassportElementErrorSelfieImplCopyWithImpl<
          _$PassportElementErrorSelfieImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PassportElementErrorDataField value) dataField,
    required TResult Function(PassportElementErrorFrontSide value) frontSide,
    required TResult Function(PassportElementErrorReverseSide value)
        reverseSide,
    required TResult Function(PassportElementErrorSelfie value) selfie,
    required TResult Function(PassportElementErrorFile value) file,
    required TResult Function(PassportElementErrorFiles value) files,
    required TResult Function(PassportElementErrorTranslationFile value)
        translationFile,
    required TResult Function(PassportElementErrorTranslationFiles value)
        translationFiles,
    required TResult Function(PassportElementErrorUnspecified value)
        unspecified,
  }) {
    return selfie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PassportElementErrorDataField value)? dataField,
    TResult? Function(PassportElementErrorFrontSide value)? frontSide,
    TResult? Function(PassportElementErrorReverseSide value)? reverseSide,
    TResult? Function(PassportElementErrorSelfie value)? selfie,
    TResult? Function(PassportElementErrorFile value)? file,
    TResult? Function(PassportElementErrorFiles value)? files,
    TResult? Function(PassportElementErrorTranslationFile value)?
        translationFile,
    TResult? Function(PassportElementErrorTranslationFiles value)?
        translationFiles,
    TResult? Function(PassportElementErrorUnspecified value)? unspecified,
  }) {
    return selfie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PassportElementErrorDataField value)? dataField,
    TResult Function(PassportElementErrorFrontSide value)? frontSide,
    TResult Function(PassportElementErrorReverseSide value)? reverseSide,
    TResult Function(PassportElementErrorSelfie value)? selfie,
    TResult Function(PassportElementErrorFile value)? file,
    TResult Function(PassportElementErrorFiles value)? files,
    TResult Function(PassportElementErrorTranslationFile value)?
        translationFile,
    TResult Function(PassportElementErrorTranslationFiles value)?
        translationFiles,
    TResult Function(PassportElementErrorUnspecified value)? unspecified,
    required TResult orElse(),
  }) {
    if (selfie != null) {
      return selfie(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PassportElementErrorSelfieImplToJson(
      this,
    );
  }
}

abstract class PassportElementErrorSelfie implements PassportElementError {
  const factory PassportElementErrorSelfie(
          {final PassportElementErrorSource source,
          required final PassportType type,
          required final String message,
          @JsonKey(name: 'file_hash') required final String fileHash}) =
      _$PassportElementErrorSelfieImpl;

  factory PassportElementErrorSelfie.fromJson(Map<String, dynamic> json) =
      _$PassportElementErrorSelfieImpl.fromJson;

  /// Error source, must be "selfie"
  @override
  PassportElementErrorSource get source;

  /// The section of the user's Telegram Passport which has the error
  @override
  PassportType get type;

  /// Error message
  @override
  String get message;

  /// Base64-encoded hash of the file with the selfie
  @JsonKey(name: 'file_hash')
  String get fileHash;

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PassportElementErrorSelfieImplCopyWith<_$PassportElementErrorSelfieImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PassportElementErrorFileImplCopyWith<$Res>
    implements $PassportElementErrorCopyWith<$Res> {
  factory _$$PassportElementErrorFileImplCopyWith(
          _$PassportElementErrorFileImpl value,
          $Res Function(_$PassportElementErrorFileImpl) then) =
      __$$PassportElementErrorFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PassportElementErrorSource source,
      PassportType type,
      String message,
      @JsonKey(name: 'file_hash') String fileHash});
}

/// @nodoc
class __$$PassportElementErrorFileImplCopyWithImpl<$Res>
    extends _$PassportElementErrorCopyWithImpl<$Res,
        _$PassportElementErrorFileImpl>
    implements _$$PassportElementErrorFileImplCopyWith<$Res> {
  __$$PassportElementErrorFileImplCopyWithImpl(
      _$PassportElementErrorFileImpl _value,
      $Res Function(_$PassportElementErrorFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? type = null,
    Object? message = null,
    Object? fileHash = null,
  }) {
    return _then(_$PassportElementErrorFileImpl(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as PassportElementErrorSource,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PassportType,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      fileHash: null == fileHash
          ? _value.fileHash
          : fileHash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PassportElementErrorFileImpl implements PassportElementErrorFile {
  const _$PassportElementErrorFileImpl(
      {this.source = PassportElementErrorSource.file,
      required this.type,
      required this.message,
      @JsonKey(name: 'file_hash') required this.fileHash})
      : assert(source == PassportElementErrorSource.file,
            'source must be PassportElementErrorSource.file');

  factory _$PassportElementErrorFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$PassportElementErrorFileImplFromJson(json);

  /// Error source, must be "file"
  @override
  @JsonKey()
  final PassportElementErrorSource source;

  /// The section of the user's Telegram Passport which has the error
  @override
  final PassportType type;

  /// Error message
  @override
  final String message;

  /// Base64-encoded file hash
  @override
  @JsonKey(name: 'file_hash')
  final String fileHash;

  @override
  String toString() {
    return 'PassportElementError.file(source: $source, type: $type, message: $message, fileHash: $fileHash)';
  }

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PassportElementErrorFileImplCopyWith<_$PassportElementErrorFileImpl>
      get copyWith => __$$PassportElementErrorFileImplCopyWithImpl<
          _$PassportElementErrorFileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PassportElementErrorDataField value) dataField,
    required TResult Function(PassportElementErrorFrontSide value) frontSide,
    required TResult Function(PassportElementErrorReverseSide value)
        reverseSide,
    required TResult Function(PassportElementErrorSelfie value) selfie,
    required TResult Function(PassportElementErrorFile value) file,
    required TResult Function(PassportElementErrorFiles value) files,
    required TResult Function(PassportElementErrorTranslationFile value)
        translationFile,
    required TResult Function(PassportElementErrorTranslationFiles value)
        translationFiles,
    required TResult Function(PassportElementErrorUnspecified value)
        unspecified,
  }) {
    return file(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PassportElementErrorDataField value)? dataField,
    TResult? Function(PassportElementErrorFrontSide value)? frontSide,
    TResult? Function(PassportElementErrorReverseSide value)? reverseSide,
    TResult? Function(PassportElementErrorSelfie value)? selfie,
    TResult? Function(PassportElementErrorFile value)? file,
    TResult? Function(PassportElementErrorFiles value)? files,
    TResult? Function(PassportElementErrorTranslationFile value)?
        translationFile,
    TResult? Function(PassportElementErrorTranslationFiles value)?
        translationFiles,
    TResult? Function(PassportElementErrorUnspecified value)? unspecified,
  }) {
    return file?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PassportElementErrorDataField value)? dataField,
    TResult Function(PassportElementErrorFrontSide value)? frontSide,
    TResult Function(PassportElementErrorReverseSide value)? reverseSide,
    TResult Function(PassportElementErrorSelfie value)? selfie,
    TResult Function(PassportElementErrorFile value)? file,
    TResult Function(PassportElementErrorFiles value)? files,
    TResult Function(PassportElementErrorTranslationFile value)?
        translationFile,
    TResult Function(PassportElementErrorTranslationFiles value)?
        translationFiles,
    TResult Function(PassportElementErrorUnspecified value)? unspecified,
    required TResult orElse(),
  }) {
    if (file != null) {
      return file(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PassportElementErrorFileImplToJson(
      this,
    );
  }
}

abstract class PassportElementErrorFile implements PassportElementError {
  const factory PassportElementErrorFile(
          {final PassportElementErrorSource source,
          required final PassportType type,
          required final String message,
          @JsonKey(name: 'file_hash') required final String fileHash}) =
      _$PassportElementErrorFileImpl;

  factory PassportElementErrorFile.fromJson(Map<String, dynamic> json) =
      _$PassportElementErrorFileImpl.fromJson;

  /// Error source, must be "file"
  @override
  PassportElementErrorSource get source;

  /// The section of the user's Telegram Passport which has the error
  @override
  PassportType get type;

  /// Error message
  @override
  String get message;

  /// Base64-encoded file hash
  @JsonKey(name: 'file_hash')
  String get fileHash;

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PassportElementErrorFileImplCopyWith<_$PassportElementErrorFileImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PassportElementErrorFilesImplCopyWith<$Res>
    implements $PassportElementErrorCopyWith<$Res> {
  factory _$$PassportElementErrorFilesImplCopyWith(
          _$PassportElementErrorFilesImpl value,
          $Res Function(_$PassportElementErrorFilesImpl) then) =
      __$$PassportElementErrorFilesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PassportElementErrorSource source,
      PassportType type,
      String message,
      @JsonKey(name: 'file_hashes') List<String> fileHashes});
}

/// @nodoc
class __$$PassportElementErrorFilesImplCopyWithImpl<$Res>
    extends _$PassportElementErrorCopyWithImpl<$Res,
        _$PassportElementErrorFilesImpl>
    implements _$$PassportElementErrorFilesImplCopyWith<$Res> {
  __$$PassportElementErrorFilesImplCopyWithImpl(
      _$PassportElementErrorFilesImpl _value,
      $Res Function(_$PassportElementErrorFilesImpl) _then)
      : super(_value, _then);

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? type = null,
    Object? message = null,
    Object? fileHashes = null,
  }) {
    return _then(_$PassportElementErrorFilesImpl(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as PassportElementErrorSource,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PassportType,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      fileHashes: null == fileHashes
          ? _value._fileHashes
          : fileHashes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PassportElementErrorFilesImpl implements PassportElementErrorFiles {
  const _$PassportElementErrorFilesImpl(
      {this.source = PassportElementErrorSource.files,
      required this.type,
      required this.message,
      @JsonKey(name: 'file_hashes') required final List<String> fileHashes})
      : assert(source == PassportElementErrorSource.files,
            'source must be PassportElementErrorSource.files'),
        _fileHashes = fileHashes;

  factory _$PassportElementErrorFilesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PassportElementErrorFilesImplFromJson(json);

  /// Error source, must be "files"
  @override
  @JsonKey()
  final PassportElementErrorSource source;

  /// The section of the user's Telegram Passport which has the error
  @override
  final PassportType type;

  /// Error message
  @override
  final String message;

  /// List of base64-encoded file hashes
  final List<String> _fileHashes;

  /// List of base64-encoded file hashes
  @override
  @JsonKey(name: 'file_hashes')
  List<String> get fileHashes {
    if (_fileHashes is EqualUnmodifiableListView) return _fileHashes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fileHashes);
  }

  @override
  String toString() {
    return 'PassportElementError.files(source: $source, type: $type, message: $message, fileHashes: $fileHashes)';
  }

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PassportElementErrorFilesImplCopyWith<_$PassportElementErrorFilesImpl>
      get copyWith => __$$PassportElementErrorFilesImplCopyWithImpl<
          _$PassportElementErrorFilesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PassportElementErrorDataField value) dataField,
    required TResult Function(PassportElementErrorFrontSide value) frontSide,
    required TResult Function(PassportElementErrorReverseSide value)
        reverseSide,
    required TResult Function(PassportElementErrorSelfie value) selfie,
    required TResult Function(PassportElementErrorFile value) file,
    required TResult Function(PassportElementErrorFiles value) files,
    required TResult Function(PassportElementErrorTranslationFile value)
        translationFile,
    required TResult Function(PassportElementErrorTranslationFiles value)
        translationFiles,
    required TResult Function(PassportElementErrorUnspecified value)
        unspecified,
  }) {
    return files(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PassportElementErrorDataField value)? dataField,
    TResult? Function(PassportElementErrorFrontSide value)? frontSide,
    TResult? Function(PassportElementErrorReverseSide value)? reverseSide,
    TResult? Function(PassportElementErrorSelfie value)? selfie,
    TResult? Function(PassportElementErrorFile value)? file,
    TResult? Function(PassportElementErrorFiles value)? files,
    TResult? Function(PassportElementErrorTranslationFile value)?
        translationFile,
    TResult? Function(PassportElementErrorTranslationFiles value)?
        translationFiles,
    TResult? Function(PassportElementErrorUnspecified value)? unspecified,
  }) {
    return files?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PassportElementErrorDataField value)? dataField,
    TResult Function(PassportElementErrorFrontSide value)? frontSide,
    TResult Function(PassportElementErrorReverseSide value)? reverseSide,
    TResult Function(PassportElementErrorSelfie value)? selfie,
    TResult Function(PassportElementErrorFile value)? file,
    TResult Function(PassportElementErrorFiles value)? files,
    TResult Function(PassportElementErrorTranslationFile value)?
        translationFile,
    TResult Function(PassportElementErrorTranslationFiles value)?
        translationFiles,
    TResult Function(PassportElementErrorUnspecified value)? unspecified,
    required TResult orElse(),
  }) {
    if (files != null) {
      return files(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PassportElementErrorFilesImplToJson(
      this,
    );
  }
}

abstract class PassportElementErrorFiles implements PassportElementError {
  const factory PassportElementErrorFiles(
          {final PassportElementErrorSource source,
          required final PassportType type,
          required final String message,
          @JsonKey(name: 'file_hashes')
          required final List<String> fileHashes}) =
      _$PassportElementErrorFilesImpl;

  factory PassportElementErrorFiles.fromJson(Map<String, dynamic> json) =
      _$PassportElementErrorFilesImpl.fromJson;

  /// Error source, must be "files"
  @override
  PassportElementErrorSource get source;

  /// The section of the user's Telegram Passport which has the error
  @override
  PassportType get type;

  /// Error message
  @override
  String get message;

  /// List of base64-encoded file hashes
  @JsonKey(name: 'file_hashes')
  List<String> get fileHashes;

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PassportElementErrorFilesImplCopyWith<_$PassportElementErrorFilesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PassportElementErrorTranslationFileImplCopyWith<$Res>
    implements $PassportElementErrorCopyWith<$Res> {
  factory _$$PassportElementErrorTranslationFileImplCopyWith(
          _$PassportElementErrorTranslationFileImpl value,
          $Res Function(_$PassportElementErrorTranslationFileImpl) then) =
      __$$PassportElementErrorTranslationFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PassportElementErrorSource source,
      PassportType type,
      String message,
      @JsonKey(name: 'file_hash') String fileHash});
}

/// @nodoc
class __$$PassportElementErrorTranslationFileImplCopyWithImpl<$Res>
    extends _$PassportElementErrorCopyWithImpl<$Res,
        _$PassportElementErrorTranslationFileImpl>
    implements _$$PassportElementErrorTranslationFileImplCopyWith<$Res> {
  __$$PassportElementErrorTranslationFileImplCopyWithImpl(
      _$PassportElementErrorTranslationFileImpl _value,
      $Res Function(_$PassportElementErrorTranslationFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? type = null,
    Object? message = null,
    Object? fileHash = null,
  }) {
    return _then(_$PassportElementErrorTranslationFileImpl(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as PassportElementErrorSource,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PassportType,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      fileHash: null == fileHash
          ? _value.fileHash
          : fileHash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PassportElementErrorTranslationFileImpl
    implements PassportElementErrorTranslationFile {
  const _$PassportElementErrorTranslationFileImpl(
      {this.source = PassportElementErrorSource.translationFile,
      required this.type,
      required this.message,
      @JsonKey(name: 'file_hash') required this.fileHash})
      : assert(source == PassportElementErrorSource.translationFile,
            'source must be PassportElementErrorSource.translationFile');

  factory _$PassportElementErrorTranslationFileImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PassportElementErrorTranslationFileImplFromJson(json);

  /// Error source, must be "translation_file"
  @override
  @JsonKey()
  final PassportElementErrorSource source;

  /// The section of the user's Telegram Passport which has the error
  @override
  final PassportType type;

  /// Error message
  @override
  final String message;

  /// Base64-encoded file hash
  @override
  @JsonKey(name: 'file_hash')
  final String fileHash;

  @override
  String toString() {
    return 'PassportElementError.translationFile(source: $source, type: $type, message: $message, fileHash: $fileHash)';
  }

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PassportElementErrorTranslationFileImplCopyWith<
          _$PassportElementErrorTranslationFileImpl>
      get copyWith => __$$PassportElementErrorTranslationFileImplCopyWithImpl<
          _$PassportElementErrorTranslationFileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PassportElementErrorDataField value) dataField,
    required TResult Function(PassportElementErrorFrontSide value) frontSide,
    required TResult Function(PassportElementErrorReverseSide value)
        reverseSide,
    required TResult Function(PassportElementErrorSelfie value) selfie,
    required TResult Function(PassportElementErrorFile value) file,
    required TResult Function(PassportElementErrorFiles value) files,
    required TResult Function(PassportElementErrorTranslationFile value)
        translationFile,
    required TResult Function(PassportElementErrorTranslationFiles value)
        translationFiles,
    required TResult Function(PassportElementErrorUnspecified value)
        unspecified,
  }) {
    return translationFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PassportElementErrorDataField value)? dataField,
    TResult? Function(PassportElementErrorFrontSide value)? frontSide,
    TResult? Function(PassportElementErrorReverseSide value)? reverseSide,
    TResult? Function(PassportElementErrorSelfie value)? selfie,
    TResult? Function(PassportElementErrorFile value)? file,
    TResult? Function(PassportElementErrorFiles value)? files,
    TResult? Function(PassportElementErrorTranslationFile value)?
        translationFile,
    TResult? Function(PassportElementErrorTranslationFiles value)?
        translationFiles,
    TResult? Function(PassportElementErrorUnspecified value)? unspecified,
  }) {
    return translationFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PassportElementErrorDataField value)? dataField,
    TResult Function(PassportElementErrorFrontSide value)? frontSide,
    TResult Function(PassportElementErrorReverseSide value)? reverseSide,
    TResult Function(PassportElementErrorSelfie value)? selfie,
    TResult Function(PassportElementErrorFile value)? file,
    TResult Function(PassportElementErrorFiles value)? files,
    TResult Function(PassportElementErrorTranslationFile value)?
        translationFile,
    TResult Function(PassportElementErrorTranslationFiles value)?
        translationFiles,
    TResult Function(PassportElementErrorUnspecified value)? unspecified,
    required TResult orElse(),
  }) {
    if (translationFile != null) {
      return translationFile(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PassportElementErrorTranslationFileImplToJson(
      this,
    );
  }
}

abstract class PassportElementErrorTranslationFile
    implements PassportElementError {
  const factory PassportElementErrorTranslationFile(
          {final PassportElementErrorSource source,
          required final PassportType type,
          required final String message,
          @JsonKey(name: 'file_hash') required final String fileHash}) =
      _$PassportElementErrorTranslationFileImpl;

  factory PassportElementErrorTranslationFile.fromJson(
          Map<String, dynamic> json) =
      _$PassportElementErrorTranslationFileImpl.fromJson;

  /// Error source, must be "translation_file"
  @override
  PassportElementErrorSource get source;

  /// The section of the user's Telegram Passport which has the error
  @override
  PassportType get type;

  /// Error message
  @override
  String get message;

  /// Base64-encoded file hash
  @JsonKey(name: 'file_hash')
  String get fileHash;

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PassportElementErrorTranslationFileImplCopyWith<
          _$PassportElementErrorTranslationFileImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PassportElementErrorTranslationFilesImplCopyWith<$Res>
    implements $PassportElementErrorCopyWith<$Res> {
  factory _$$PassportElementErrorTranslationFilesImplCopyWith(
          _$PassportElementErrorTranslationFilesImpl value,
          $Res Function(_$PassportElementErrorTranslationFilesImpl) then) =
      __$$PassportElementErrorTranslationFilesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PassportElementErrorSource source,
      PassportType type,
      String message,
      @JsonKey(name: 'file_hashes') List<String> fileHashes});
}

/// @nodoc
class __$$PassportElementErrorTranslationFilesImplCopyWithImpl<$Res>
    extends _$PassportElementErrorCopyWithImpl<$Res,
        _$PassportElementErrorTranslationFilesImpl>
    implements _$$PassportElementErrorTranslationFilesImplCopyWith<$Res> {
  __$$PassportElementErrorTranslationFilesImplCopyWithImpl(
      _$PassportElementErrorTranslationFilesImpl _value,
      $Res Function(_$PassportElementErrorTranslationFilesImpl) _then)
      : super(_value, _then);

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? type = null,
    Object? message = null,
    Object? fileHashes = null,
  }) {
    return _then(_$PassportElementErrorTranslationFilesImpl(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as PassportElementErrorSource,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PassportType,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      fileHashes: null == fileHashes
          ? _value._fileHashes
          : fileHashes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PassportElementErrorTranslationFilesImpl
    implements PassportElementErrorTranslationFiles {
  const _$PassportElementErrorTranslationFilesImpl(
      {this.source = PassportElementErrorSource.translationFiles,
      required this.type,
      required this.message,
      @JsonKey(name: 'file_hashes') required final List<String> fileHashes})
      : assert(source == PassportElementErrorSource.translationFiles,
            'source must be PassportElementErrorSource.translationFiles'),
        _fileHashes = fileHashes;

  factory _$PassportElementErrorTranslationFilesImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PassportElementErrorTranslationFilesImplFromJson(json);

  /// Error source, must be "translation_files"
  @override
  @JsonKey()
  final PassportElementErrorSource source;

  /// The section of the user's Telegram Passport which has the error
  @override
  final PassportType type;

  /// Error message
  @override
  final String message;

  /// List of base64-encoded file hashes
  final List<String> _fileHashes;

  /// List of base64-encoded file hashes
  @override
  @JsonKey(name: 'file_hashes')
  List<String> get fileHashes {
    if (_fileHashes is EqualUnmodifiableListView) return _fileHashes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fileHashes);
  }

  @override
  String toString() {
    return 'PassportElementError.translationFiles(source: $source, type: $type, message: $message, fileHashes: $fileHashes)';
  }

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PassportElementErrorTranslationFilesImplCopyWith<
          _$PassportElementErrorTranslationFilesImpl>
      get copyWith => __$$PassportElementErrorTranslationFilesImplCopyWithImpl<
          _$PassportElementErrorTranslationFilesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PassportElementErrorDataField value) dataField,
    required TResult Function(PassportElementErrorFrontSide value) frontSide,
    required TResult Function(PassportElementErrorReverseSide value)
        reverseSide,
    required TResult Function(PassportElementErrorSelfie value) selfie,
    required TResult Function(PassportElementErrorFile value) file,
    required TResult Function(PassportElementErrorFiles value) files,
    required TResult Function(PassportElementErrorTranslationFile value)
        translationFile,
    required TResult Function(PassportElementErrorTranslationFiles value)
        translationFiles,
    required TResult Function(PassportElementErrorUnspecified value)
        unspecified,
  }) {
    return translationFiles(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PassportElementErrorDataField value)? dataField,
    TResult? Function(PassportElementErrorFrontSide value)? frontSide,
    TResult? Function(PassportElementErrorReverseSide value)? reverseSide,
    TResult? Function(PassportElementErrorSelfie value)? selfie,
    TResult? Function(PassportElementErrorFile value)? file,
    TResult? Function(PassportElementErrorFiles value)? files,
    TResult? Function(PassportElementErrorTranslationFile value)?
        translationFile,
    TResult? Function(PassportElementErrorTranslationFiles value)?
        translationFiles,
    TResult? Function(PassportElementErrorUnspecified value)? unspecified,
  }) {
    return translationFiles?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PassportElementErrorDataField value)? dataField,
    TResult Function(PassportElementErrorFrontSide value)? frontSide,
    TResult Function(PassportElementErrorReverseSide value)? reverseSide,
    TResult Function(PassportElementErrorSelfie value)? selfie,
    TResult Function(PassportElementErrorFile value)? file,
    TResult Function(PassportElementErrorFiles value)? files,
    TResult Function(PassportElementErrorTranslationFile value)?
        translationFile,
    TResult Function(PassportElementErrorTranslationFiles value)?
        translationFiles,
    TResult Function(PassportElementErrorUnspecified value)? unspecified,
    required TResult orElse(),
  }) {
    if (translationFiles != null) {
      return translationFiles(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PassportElementErrorTranslationFilesImplToJson(
      this,
    );
  }
}

abstract class PassportElementErrorTranslationFiles
    implements PassportElementError {
  const factory PassportElementErrorTranslationFiles(
          {final PassportElementErrorSource source,
          required final PassportType type,
          required final String message,
          @JsonKey(name: 'file_hashes')
          required final List<String> fileHashes}) =
      _$PassportElementErrorTranslationFilesImpl;

  factory PassportElementErrorTranslationFiles.fromJson(
          Map<String, dynamic> json) =
      _$PassportElementErrorTranslationFilesImpl.fromJson;

  /// Error source, must be "translation_files"
  @override
  PassportElementErrorSource get source;

  /// The section of the user's Telegram Passport which has the error
  @override
  PassportType get type;

  /// Error message
  @override
  String get message;

  /// List of base64-encoded file hashes
  @JsonKey(name: 'file_hashes')
  List<String> get fileHashes;

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PassportElementErrorTranslationFilesImplCopyWith<
          _$PassportElementErrorTranslationFilesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PassportElementErrorUnspecifiedImplCopyWith<$Res>
    implements $PassportElementErrorCopyWith<$Res> {
  factory _$$PassportElementErrorUnspecifiedImplCopyWith(
          _$PassportElementErrorUnspecifiedImpl value,
          $Res Function(_$PassportElementErrorUnspecifiedImpl) then) =
      __$$PassportElementErrorUnspecifiedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PassportElementErrorSource source,
      PassportType type,
      String message,
      @JsonKey(name: 'element_hash') String elementHash});
}

/// @nodoc
class __$$PassportElementErrorUnspecifiedImplCopyWithImpl<$Res>
    extends _$PassportElementErrorCopyWithImpl<$Res,
        _$PassportElementErrorUnspecifiedImpl>
    implements _$$PassportElementErrorUnspecifiedImplCopyWith<$Res> {
  __$$PassportElementErrorUnspecifiedImplCopyWithImpl(
      _$PassportElementErrorUnspecifiedImpl _value,
      $Res Function(_$PassportElementErrorUnspecifiedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? type = null,
    Object? message = null,
    Object? elementHash = null,
  }) {
    return _then(_$PassportElementErrorUnspecifiedImpl(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as PassportElementErrorSource,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PassportType,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      elementHash: null == elementHash
          ? _value.elementHash
          : elementHash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PassportElementErrorUnspecifiedImpl
    implements PassportElementErrorUnspecified {
  const _$PassportElementErrorUnspecifiedImpl(
      {this.source = PassportElementErrorSource.unspecified,
      required this.type,
      required this.message,
      @JsonKey(name: 'element_hash') required this.elementHash})
      : assert(source == PassportElementErrorSource.unspecified,
            'source must be PassportElementErrorSource.unspecified');

  factory _$PassportElementErrorUnspecifiedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PassportElementErrorUnspecifiedImplFromJson(json);

  /// Error source, must be "unspecified"
  @override
  @JsonKey()
  final PassportElementErrorSource source;

  /// The section of the user's Telegram Passport which has the error
  @override
  final PassportType type;

  /// Error message
  @override
  final String message;

  /// Base64-encoded element hash
  @override
  @JsonKey(name: 'element_hash')
  final String elementHash;

  @override
  String toString() {
    return 'PassportElementError.unspecified(source: $source, type: $type, message: $message, elementHash: $elementHash)';
  }

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PassportElementErrorUnspecifiedImplCopyWith<
          _$PassportElementErrorUnspecifiedImpl>
      get copyWith => __$$PassportElementErrorUnspecifiedImplCopyWithImpl<
          _$PassportElementErrorUnspecifiedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PassportElementErrorDataField value) dataField,
    required TResult Function(PassportElementErrorFrontSide value) frontSide,
    required TResult Function(PassportElementErrorReverseSide value)
        reverseSide,
    required TResult Function(PassportElementErrorSelfie value) selfie,
    required TResult Function(PassportElementErrorFile value) file,
    required TResult Function(PassportElementErrorFiles value) files,
    required TResult Function(PassportElementErrorTranslationFile value)
        translationFile,
    required TResult Function(PassportElementErrorTranslationFiles value)
        translationFiles,
    required TResult Function(PassportElementErrorUnspecified value)
        unspecified,
  }) {
    return unspecified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PassportElementErrorDataField value)? dataField,
    TResult? Function(PassportElementErrorFrontSide value)? frontSide,
    TResult? Function(PassportElementErrorReverseSide value)? reverseSide,
    TResult? Function(PassportElementErrorSelfie value)? selfie,
    TResult? Function(PassportElementErrorFile value)? file,
    TResult? Function(PassportElementErrorFiles value)? files,
    TResult? Function(PassportElementErrorTranslationFile value)?
        translationFile,
    TResult? Function(PassportElementErrorTranslationFiles value)?
        translationFiles,
    TResult? Function(PassportElementErrorUnspecified value)? unspecified,
  }) {
    return unspecified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PassportElementErrorDataField value)? dataField,
    TResult Function(PassportElementErrorFrontSide value)? frontSide,
    TResult Function(PassportElementErrorReverseSide value)? reverseSide,
    TResult Function(PassportElementErrorSelfie value)? selfie,
    TResult Function(PassportElementErrorFile value)? file,
    TResult Function(PassportElementErrorFiles value)? files,
    TResult Function(PassportElementErrorTranslationFile value)?
        translationFile,
    TResult Function(PassportElementErrorTranslationFiles value)?
        translationFiles,
    TResult Function(PassportElementErrorUnspecified value)? unspecified,
    required TResult orElse(),
  }) {
    if (unspecified != null) {
      return unspecified(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PassportElementErrorUnspecifiedImplToJson(
      this,
    );
  }
}

abstract class PassportElementErrorUnspecified implements PassportElementError {
  const factory PassportElementErrorUnspecified(
          {final PassportElementErrorSource source,
          required final PassportType type,
          required final String message,
          @JsonKey(name: 'element_hash') required final String elementHash}) =
      _$PassportElementErrorUnspecifiedImpl;

  factory PassportElementErrorUnspecified.fromJson(Map<String, dynamic> json) =
      _$PassportElementErrorUnspecifiedImpl.fromJson;

  /// Error source, must be "unspecified"
  @override
  PassportElementErrorSource get source;

  /// The section of the user's Telegram Passport which has the error
  @override
  PassportType get type;

  /// Error message
  @override
  String get message;

  /// Base64-encoded element hash
  @JsonKey(name: 'element_hash')
  String get elementHash;

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PassportElementErrorUnspecifiedImplCopyWith<
          _$PassportElementErrorUnspecifiedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
