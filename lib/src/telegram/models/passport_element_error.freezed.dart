// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passport_element_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
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
  @JsonKey(name: 'source')
  PassportElementErrorSource get source;

  /// The section of the user's Telegram Passport which has the error
  @JsonKey(name: 'type')
  PassportType get type;

  /// Error message
  @JsonKey(name: 'message')
  String get message;

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PassportElementErrorCopyWith<PassportElementError> get copyWith =>
      _$PassportElementErrorCopyWithImpl<PassportElementError>(
          this as PassportElementError, _$identity);

  /// Serializes this PassportElementError to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'PassportElementError(source: $source, type: $type, message: $message)';
  }
}

/// @nodoc
abstract mixin class $PassportElementErrorCopyWith<$Res> {
  factory $PassportElementErrorCopyWith(PassportElementError value,
          $Res Function(PassportElementError) _then) =
      _$PassportElementErrorCopyWithImpl;
  @useResult
  $Res call(
      {PassportElementErrorSource source, PassportType type, String message});
}

/// @nodoc
class _$PassportElementErrorCopyWithImpl<$Res>
    implements $PassportElementErrorCopyWith<$Res> {
  _$PassportElementErrorCopyWithImpl(this._self, this._then);

  final PassportElementError _self;
  final $Res Function(PassportElementError) _then;

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? type = null,
    Object? message = null,
  }) {
    return _then(_self.copyWith(
      source: null == source
          ? _self.source
          : source // ignore: cast_nullable_to_non_nullable
              as PassportElementErrorSource,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as PassportType,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class PassportElementErrorDataField implements PassportElementError {
  const PassportElementErrorDataField(
      {this.source = PassportElementErrorSource.data,
      required this.type,
      required this.message,
      @JsonKey(name: 'field_name') required this.fieldName,
      @JsonKey(name: 'data_hash') required this.dataHash})
      : assert(source == PassportElementErrorSource.data,
            'source must be PassportElementErrorSource.data');
  factory PassportElementErrorDataField.fromJson(Map<String, dynamic> json) =>
      _$PassportElementErrorDataFieldFromJson(json);

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
  @JsonKey(name: 'field_name')
  final String fieldName;

  /// Base64-encoded data hash
  @JsonKey(name: 'data_hash')
  final String dataHash;

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PassportElementErrorDataFieldCopyWith<PassportElementErrorDataField>
      get copyWith => _$PassportElementErrorDataFieldCopyWithImpl<
          PassportElementErrorDataField>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PassportElementErrorDataFieldToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'PassportElementError.dataField(source: $source, type: $type, message: $message, fieldName: $fieldName, dataHash: $dataHash)';
  }
}

/// @nodoc
abstract mixin class $PassportElementErrorDataFieldCopyWith<$Res>
    implements $PassportElementErrorCopyWith<$Res> {
  factory $PassportElementErrorDataFieldCopyWith(
          PassportElementErrorDataField value,
          $Res Function(PassportElementErrorDataField) _then) =
      _$PassportElementErrorDataFieldCopyWithImpl;
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
class _$PassportElementErrorDataFieldCopyWithImpl<$Res>
    implements $PassportElementErrorDataFieldCopyWith<$Res> {
  _$PassportElementErrorDataFieldCopyWithImpl(this._self, this._then);

  final PassportElementErrorDataField _self;
  final $Res Function(PassportElementErrorDataField) _then;

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? source = null,
    Object? type = null,
    Object? message = null,
    Object? fieldName = null,
    Object? dataHash = null,
  }) {
    return _then(PassportElementErrorDataField(
      source: null == source
          ? _self.source
          : source // ignore: cast_nullable_to_non_nullable
              as PassportElementErrorSource,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as PassportType,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      fieldName: null == fieldName
          ? _self.fieldName
          : fieldName // ignore: cast_nullable_to_non_nullable
              as String,
      dataHash: null == dataHash
          ? _self.dataHash
          : dataHash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class PassportElementErrorFrontSide implements PassportElementError {
  const PassportElementErrorFrontSide(
      {@JsonKey(name: 'source')
      this.source = PassportElementErrorSource.frontSide,
      @JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'file_hash') required this.fileHash})
      : assert(source == PassportElementErrorSource.frontSide,
            'source must be PassportElementErrorSource.frontSide');
  factory PassportElementErrorFrontSide.fromJson(Map<String, dynamic> json) =>
      _$PassportElementErrorFrontSideFromJson(json);

  /// Error source, must be "front_side"
  @override
  @JsonKey(name: 'source')
  final PassportElementErrorSource source;

  /// The section of the user's Telegram Passport which has the error
  @override
  @JsonKey(name: 'type')
  final PassportType type;

  /// Error message
  @override
  @JsonKey(name: 'message')
  final String message;

  /// Base64-encoded hash of the file with the front side of the document
  @JsonKey(name: 'file_hash')
  final String fileHash;

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PassportElementErrorFrontSideCopyWith<PassportElementErrorFrontSide>
      get copyWith => _$PassportElementErrorFrontSideCopyWithImpl<
          PassportElementErrorFrontSide>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PassportElementErrorFrontSideToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'PassportElementError.frontSide(source: $source, type: $type, message: $message, fileHash: $fileHash)';
  }
}

/// @nodoc
abstract mixin class $PassportElementErrorFrontSideCopyWith<$Res>
    implements $PassportElementErrorCopyWith<$Res> {
  factory $PassportElementErrorFrontSideCopyWith(
          PassportElementErrorFrontSide value,
          $Res Function(PassportElementErrorFrontSide) _then) =
      _$PassportElementErrorFrontSideCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'source') PassportElementErrorSource source,
      @JsonKey(name: 'type') PassportType type,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'file_hash') String fileHash});
}

/// @nodoc
class _$PassportElementErrorFrontSideCopyWithImpl<$Res>
    implements $PassportElementErrorFrontSideCopyWith<$Res> {
  _$PassportElementErrorFrontSideCopyWithImpl(this._self, this._then);

  final PassportElementErrorFrontSide _self;
  final $Res Function(PassportElementErrorFrontSide) _then;

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? source = null,
    Object? type = null,
    Object? message = null,
    Object? fileHash = null,
  }) {
    return _then(PassportElementErrorFrontSide(
      source: null == source
          ? _self.source
          : source // ignore: cast_nullable_to_non_nullable
              as PassportElementErrorSource,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as PassportType,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      fileHash: null == fileHash
          ? _self.fileHash
          : fileHash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class PassportElementErrorReverseSide implements PassportElementError {
  const PassportElementErrorReverseSide(
      {@JsonKey(name: 'source')
      this.source = PassportElementErrorSource.reverseSide,
      @JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'file_hash') required this.fileHash})
      : assert(source == PassportElementErrorSource.reverseSide,
            'source must be PassportElementErrorSource.reverseSide');
  factory PassportElementErrorReverseSide.fromJson(Map<String, dynamic> json) =>
      _$PassportElementErrorReverseSideFromJson(json);

  /// Error source, must be "reverse_side"
  @override
  @JsonKey(name: 'source')
  final PassportElementErrorSource source;

  /// The section of the user's Telegram Passport which has the error
  @override
  @JsonKey(name: 'type')
  final PassportType type;

  /// Error message
  @override
  @JsonKey(name: 'message')
  final String message;

  /// Base64-encoded hash of the file with the reverse side of the document
  @JsonKey(name: 'file_hash')
  final String fileHash;

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PassportElementErrorReverseSideCopyWith<PassportElementErrorReverseSide>
      get copyWith => _$PassportElementErrorReverseSideCopyWithImpl<
          PassportElementErrorReverseSide>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PassportElementErrorReverseSideToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'PassportElementError.reverseSide(source: $source, type: $type, message: $message, fileHash: $fileHash)';
  }
}

/// @nodoc
abstract mixin class $PassportElementErrorReverseSideCopyWith<$Res>
    implements $PassportElementErrorCopyWith<$Res> {
  factory $PassportElementErrorReverseSideCopyWith(
          PassportElementErrorReverseSide value,
          $Res Function(PassportElementErrorReverseSide) _then) =
      _$PassportElementErrorReverseSideCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'source') PassportElementErrorSource source,
      @JsonKey(name: 'type') PassportType type,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'file_hash') String fileHash});
}

/// @nodoc
class _$PassportElementErrorReverseSideCopyWithImpl<$Res>
    implements $PassportElementErrorReverseSideCopyWith<$Res> {
  _$PassportElementErrorReverseSideCopyWithImpl(this._self, this._then);

  final PassportElementErrorReverseSide _self;
  final $Res Function(PassportElementErrorReverseSide) _then;

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? source = null,
    Object? type = null,
    Object? message = null,
    Object? fileHash = null,
  }) {
    return _then(PassportElementErrorReverseSide(
      source: null == source
          ? _self.source
          : source // ignore: cast_nullable_to_non_nullable
              as PassportElementErrorSource,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as PassportType,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      fileHash: null == fileHash
          ? _self.fileHash
          : fileHash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class PassportElementErrorSelfie implements PassportElementError {
  const PassportElementErrorSelfie(
      {@JsonKey(name: 'source') this.source = PassportElementErrorSource.selfie,
      @JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'file_hash') required this.fileHash})
      : assert(source == PassportElementErrorSource.selfie,
            'source must be PassportElementErrorSource.selfie');
  factory PassportElementErrorSelfie.fromJson(Map<String, dynamic> json) =>
      _$PassportElementErrorSelfieFromJson(json);

  /// Error source, must be "selfie"
  @override
  @JsonKey(name: 'source')
  final PassportElementErrorSource source;

  /// The section of the user's Telegram Passport which has the error
  @override
  @JsonKey(name: 'type')
  final PassportType type;

  /// Error message
  @override
  @JsonKey(name: 'message')
  final String message;

  /// Base64-encoded hash of the file with the selfie
  @JsonKey(name: 'file_hash')
  final String fileHash;

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PassportElementErrorSelfieCopyWith<PassportElementErrorSelfie>
      get copyWith =>
          _$PassportElementErrorSelfieCopyWithImpl<PassportElementErrorSelfie>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PassportElementErrorSelfieToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'PassportElementError.selfie(source: $source, type: $type, message: $message, fileHash: $fileHash)';
  }
}

/// @nodoc
abstract mixin class $PassportElementErrorSelfieCopyWith<$Res>
    implements $PassportElementErrorCopyWith<$Res> {
  factory $PassportElementErrorSelfieCopyWith(PassportElementErrorSelfie value,
          $Res Function(PassportElementErrorSelfie) _then) =
      _$PassportElementErrorSelfieCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'source') PassportElementErrorSource source,
      @JsonKey(name: 'type') PassportType type,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'file_hash') String fileHash});
}

/// @nodoc
class _$PassportElementErrorSelfieCopyWithImpl<$Res>
    implements $PassportElementErrorSelfieCopyWith<$Res> {
  _$PassportElementErrorSelfieCopyWithImpl(this._self, this._then);

  final PassportElementErrorSelfie _self;
  final $Res Function(PassportElementErrorSelfie) _then;

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? source = null,
    Object? type = null,
    Object? message = null,
    Object? fileHash = null,
  }) {
    return _then(PassportElementErrorSelfie(
      source: null == source
          ? _self.source
          : source // ignore: cast_nullable_to_non_nullable
              as PassportElementErrorSource,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as PassportType,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      fileHash: null == fileHash
          ? _self.fileHash
          : fileHash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class PassportElementErrorFile implements PassportElementError {
  const PassportElementErrorFile(
      {@JsonKey(name: 'source') this.source = PassportElementErrorSource.file,
      @JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'file_hash') required this.fileHash})
      : assert(source == PassportElementErrorSource.file,
            'source must be PassportElementErrorSource.file');
  factory PassportElementErrorFile.fromJson(Map<String, dynamic> json) =>
      _$PassportElementErrorFileFromJson(json);

  /// Error source, must be "file"
  @override
  @JsonKey(name: 'source')
  final PassportElementErrorSource source;

  /// The section of the user's Telegram Passport which has the error
  @override
  @JsonKey(name: 'type')
  final PassportType type;

  /// Error message
  @override
  @JsonKey(name: 'message')
  final String message;

  /// Base64-encoded file hash
  @JsonKey(name: 'file_hash')
  final String fileHash;

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PassportElementErrorFileCopyWith<PassportElementErrorFile> get copyWith =>
      _$PassportElementErrorFileCopyWithImpl<PassportElementErrorFile>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PassportElementErrorFileToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'PassportElementError.file(source: $source, type: $type, message: $message, fileHash: $fileHash)';
  }
}

/// @nodoc
abstract mixin class $PassportElementErrorFileCopyWith<$Res>
    implements $PassportElementErrorCopyWith<$Res> {
  factory $PassportElementErrorFileCopyWith(PassportElementErrorFile value,
          $Res Function(PassportElementErrorFile) _then) =
      _$PassportElementErrorFileCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'source') PassportElementErrorSource source,
      @JsonKey(name: 'type') PassportType type,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'file_hash') String fileHash});
}

/// @nodoc
class _$PassportElementErrorFileCopyWithImpl<$Res>
    implements $PassportElementErrorFileCopyWith<$Res> {
  _$PassportElementErrorFileCopyWithImpl(this._self, this._then);

  final PassportElementErrorFile _self;
  final $Res Function(PassportElementErrorFile) _then;

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? source = null,
    Object? type = null,
    Object? message = null,
    Object? fileHash = null,
  }) {
    return _then(PassportElementErrorFile(
      source: null == source
          ? _self.source
          : source // ignore: cast_nullable_to_non_nullable
              as PassportElementErrorSource,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as PassportType,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      fileHash: null == fileHash
          ? _self.fileHash
          : fileHash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class PassportElementErrorFiles implements PassportElementError {
  const PassportElementErrorFiles(
      {@JsonKey(name: 'source') this.source = PassportElementErrorSource.files,
      @JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'file_hashes') required final List<String> fileHashes})
      : assert(source == PassportElementErrorSource.files,
            'source must be PassportElementErrorSource.files'),
        _fileHashes = fileHashes;
  factory PassportElementErrorFiles.fromJson(Map<String, dynamic> json) =>
      _$PassportElementErrorFilesFromJson(json);

  /// Error source, must be "files"
  @override
  @JsonKey(name: 'source')
  final PassportElementErrorSource source;

  /// The section of the user's Telegram Passport which has the error
  @override
  @JsonKey(name: 'type')
  final PassportType type;

  /// Error message
  @override
  @JsonKey(name: 'message')
  final String message;

  /// List of base64-encoded file hashes
  final List<String> _fileHashes;

  /// List of base64-encoded file hashes
  @JsonKey(name: 'file_hashes')
  List<String> get fileHashes {
    if (_fileHashes is EqualUnmodifiableListView) return _fileHashes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fileHashes);
  }

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PassportElementErrorFilesCopyWith<PassportElementErrorFiles> get copyWith =>
      _$PassportElementErrorFilesCopyWithImpl<PassportElementErrorFiles>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PassportElementErrorFilesToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'PassportElementError.files(source: $source, type: $type, message: $message, fileHashes: $fileHashes)';
  }
}

/// @nodoc
abstract mixin class $PassportElementErrorFilesCopyWith<$Res>
    implements $PassportElementErrorCopyWith<$Res> {
  factory $PassportElementErrorFilesCopyWith(PassportElementErrorFiles value,
          $Res Function(PassportElementErrorFiles) _then) =
      _$PassportElementErrorFilesCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'source') PassportElementErrorSource source,
      @JsonKey(name: 'type') PassportType type,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'file_hashes') List<String> fileHashes});
}

/// @nodoc
class _$PassportElementErrorFilesCopyWithImpl<$Res>
    implements $PassportElementErrorFilesCopyWith<$Res> {
  _$PassportElementErrorFilesCopyWithImpl(this._self, this._then);

  final PassportElementErrorFiles _self;
  final $Res Function(PassportElementErrorFiles) _then;

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? source = null,
    Object? type = null,
    Object? message = null,
    Object? fileHashes = null,
  }) {
    return _then(PassportElementErrorFiles(
      source: null == source
          ? _self.source
          : source // ignore: cast_nullable_to_non_nullable
              as PassportElementErrorSource,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as PassportType,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      fileHashes: null == fileHashes
          ? _self._fileHashes
          : fileHashes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class PassportElementErrorTranslationFile implements PassportElementError {
  const PassportElementErrorTranslationFile(
      {@JsonKey(name: 'source')
      this.source = PassportElementErrorSource.translationFile,
      @JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'file_hash') required this.fileHash})
      : assert(source == PassportElementErrorSource.translationFile,
            'source must be PassportElementErrorSource.translationFile');
  factory PassportElementErrorTranslationFile.fromJson(
          Map<String, dynamic> json) =>
      _$PassportElementErrorTranslationFileFromJson(json);

  /// Error source, must be "translation_file"
  @override
  @JsonKey(name: 'source')
  final PassportElementErrorSource source;

  /// The section of the user's Telegram Passport which has the error
  @override
  @JsonKey(name: 'type')
  final PassportType type;

  /// Error message
  @override
  @JsonKey(name: 'message')
  final String message;

  /// Base64-encoded file hash
  @JsonKey(name: 'file_hash')
  final String fileHash;

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PassportElementErrorTranslationFileCopyWith<
          PassportElementErrorTranslationFile>
      get copyWith => _$PassportElementErrorTranslationFileCopyWithImpl<
          PassportElementErrorTranslationFile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PassportElementErrorTranslationFileToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'PassportElementError.translationFile(source: $source, type: $type, message: $message, fileHash: $fileHash)';
  }
}

/// @nodoc
abstract mixin class $PassportElementErrorTranslationFileCopyWith<$Res>
    implements $PassportElementErrorCopyWith<$Res> {
  factory $PassportElementErrorTranslationFileCopyWith(
          PassportElementErrorTranslationFile value,
          $Res Function(PassportElementErrorTranslationFile) _then) =
      _$PassportElementErrorTranslationFileCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'source') PassportElementErrorSource source,
      @JsonKey(name: 'type') PassportType type,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'file_hash') String fileHash});
}

/// @nodoc
class _$PassportElementErrorTranslationFileCopyWithImpl<$Res>
    implements $PassportElementErrorTranslationFileCopyWith<$Res> {
  _$PassportElementErrorTranslationFileCopyWithImpl(this._self, this._then);

  final PassportElementErrorTranslationFile _self;
  final $Res Function(PassportElementErrorTranslationFile) _then;

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? source = null,
    Object? type = null,
    Object? message = null,
    Object? fileHash = null,
  }) {
    return _then(PassportElementErrorTranslationFile(
      source: null == source
          ? _self.source
          : source // ignore: cast_nullable_to_non_nullable
              as PassportElementErrorSource,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as PassportType,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      fileHash: null == fileHash
          ? _self.fileHash
          : fileHash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class PassportElementErrorTranslationFiles implements PassportElementError {
  const PassportElementErrorTranslationFiles(
      {@JsonKey(name: 'source')
      this.source = PassportElementErrorSource.translationFiles,
      @JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'file_hashes') required final List<String> fileHashes})
      : assert(source == PassportElementErrorSource.translationFiles,
            'source must be PassportElementErrorSource.translationFiles'),
        _fileHashes = fileHashes;
  factory PassportElementErrorTranslationFiles.fromJson(
          Map<String, dynamic> json) =>
      _$PassportElementErrorTranslationFilesFromJson(json);

  /// Error source, must be "translation_files"
  @override
  @JsonKey(name: 'source')
  final PassportElementErrorSource source;

  /// The section of the user's Telegram Passport which has the error
  @override
  @JsonKey(name: 'type')
  final PassportType type;

  /// Error message
  @override
  @JsonKey(name: 'message')
  final String message;

  /// List of base64-encoded file hashes
  final List<String> _fileHashes;

  /// List of base64-encoded file hashes
  @JsonKey(name: 'file_hashes')
  List<String> get fileHashes {
    if (_fileHashes is EqualUnmodifiableListView) return _fileHashes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fileHashes);
  }

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PassportElementErrorTranslationFilesCopyWith<
          PassportElementErrorTranslationFiles>
      get copyWith => _$PassportElementErrorTranslationFilesCopyWithImpl<
          PassportElementErrorTranslationFiles>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PassportElementErrorTranslationFilesToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'PassportElementError.translationFiles(source: $source, type: $type, message: $message, fileHashes: $fileHashes)';
  }
}

/// @nodoc
abstract mixin class $PassportElementErrorTranslationFilesCopyWith<$Res>
    implements $PassportElementErrorCopyWith<$Res> {
  factory $PassportElementErrorTranslationFilesCopyWith(
          PassportElementErrorTranslationFiles value,
          $Res Function(PassportElementErrorTranslationFiles) _then) =
      _$PassportElementErrorTranslationFilesCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'source') PassportElementErrorSource source,
      @JsonKey(name: 'type') PassportType type,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'file_hashes') List<String> fileHashes});
}

/// @nodoc
class _$PassportElementErrorTranslationFilesCopyWithImpl<$Res>
    implements $PassportElementErrorTranslationFilesCopyWith<$Res> {
  _$PassportElementErrorTranslationFilesCopyWithImpl(this._self, this._then);

  final PassportElementErrorTranslationFiles _self;
  final $Res Function(PassportElementErrorTranslationFiles) _then;

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? source = null,
    Object? type = null,
    Object? message = null,
    Object? fileHashes = null,
  }) {
    return _then(PassportElementErrorTranslationFiles(
      source: null == source
          ? _self.source
          : source // ignore: cast_nullable_to_non_nullable
              as PassportElementErrorSource,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as PassportType,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      fileHashes: null == fileHashes
          ? _self._fileHashes
          : fileHashes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class PassportElementErrorUnspecified implements PassportElementError {
  const PassportElementErrorUnspecified(
      {@JsonKey(name: 'source')
      this.source = PassportElementErrorSource.unspecified,
      @JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'element_hash') required this.elementHash})
      : assert(source == PassportElementErrorSource.unspecified,
            'source must be PassportElementErrorSource.unspecified');
  factory PassportElementErrorUnspecified.fromJson(Map<String, dynamic> json) =>
      _$PassportElementErrorUnspecifiedFromJson(json);

  /// Error source, must be "unspecified"
  @override
  @JsonKey(name: 'source')
  final PassportElementErrorSource source;

  /// The section of the user's Telegram Passport which has the error
  @override
  @JsonKey(name: 'type')
  final PassportType type;

  /// Error message
  @override
  @JsonKey(name: 'message')
  final String message;

  /// Base64-encoded element hash
  @JsonKey(name: 'element_hash')
  final String elementHash;

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PassportElementErrorUnspecifiedCopyWith<PassportElementErrorUnspecified>
      get copyWith => _$PassportElementErrorUnspecifiedCopyWithImpl<
          PassportElementErrorUnspecified>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PassportElementErrorUnspecifiedToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'PassportElementError.unspecified(source: $source, type: $type, message: $message, elementHash: $elementHash)';
  }
}

/// @nodoc
abstract mixin class $PassportElementErrorUnspecifiedCopyWith<$Res>
    implements $PassportElementErrorCopyWith<$Res> {
  factory $PassportElementErrorUnspecifiedCopyWith(
          PassportElementErrorUnspecified value,
          $Res Function(PassportElementErrorUnspecified) _then) =
      _$PassportElementErrorUnspecifiedCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'source') PassportElementErrorSource source,
      @JsonKey(name: 'type') PassportType type,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'element_hash') String elementHash});
}

/// @nodoc
class _$PassportElementErrorUnspecifiedCopyWithImpl<$Res>
    implements $PassportElementErrorUnspecifiedCopyWith<$Res> {
  _$PassportElementErrorUnspecifiedCopyWithImpl(this._self, this._then);

  final PassportElementErrorUnspecified _self;
  final $Res Function(PassportElementErrorUnspecified) _then;

  /// Create a copy of PassportElementError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? source = null,
    Object? type = null,
    Object? message = null,
    Object? elementHash = null,
  }) {
    return _then(PassportElementErrorUnspecified(
      source: null == source
          ? _self.source
          : source // ignore: cast_nullable_to_non_nullable
              as PassportElementErrorSource,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as PassportType,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      elementHash: null == elementHash
          ? _self.elementHash
          : elementHash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}
