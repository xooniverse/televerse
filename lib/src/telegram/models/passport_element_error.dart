// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/telegram.dart'
    show PassportElementErrorSource, PassportType;

part 'passport_element_error.freezed.dart';
part 'passport_element_error.g.dart';

/// Interface to expose the `source` property on `PassportElementError`
abstract interface class _PassportElementErrorImpl {
  /// Source of the error
  PassportElementErrorSource get source;

  /// The section of the user's Telegram Passport which has the error
  PassportType get type;
}

/// This object represents an error in the Telegram Passport element. It can be
/// one of:
/// - [PassportElementErrorDataField]
/// - [PassportElementErrorFrontSide]
/// - [PassportElementErrorReverseSide]
/// - [PassportElementErrorSelfie]
/// - [PassportElementErrorFile]
/// - [PassportElementErrorFiles]
/// - [PassportElementErrorTranslationFile]
/// - [PassportElementErrorTranslationFiles]
/// - [PassportElementErrorUnspecified]
@Freezed(
  fromJson: true,
  toJson: true,
  unionKey: 'source',
  unionValueCase: FreezedUnionCase.snake,
)
sealed class PassportElementError
    with _$PassportElementError
    implements _PassportElementErrorImpl {
  /// Represents an error in data provided by the user
  @Assert(
    'source == PassportElementErrorSource.data',
    'source must be PassportElementErrorSource.data',
  )
  const factory PassportElementError.dataField({
    /// Error source, must be "data"
    @Default(PassportElementErrorSource.data) PassportElementErrorSource source,

    /// The section of the user's Telegram Passport which has the error
    required final PassportType type,

    /// Error message
    required final String message,

    /// Name of the data field which has the error
    @JsonKey(name: 'field_name') required final String fieldName,

    /// Base64-encoded data hash
    @JsonKey(name: 'data_hash') required final String dataHash,
  }) = PassportElementErrorDataField;

  /// Represents an error in the front side of a document
  @Assert(
    'source == PassportElementErrorSource.frontSide',
    'source must be PassportElementErrorSource.frontSide',
  )
  const factory PassportElementError.frontSide({
    /// Error source, must be "front_side"
    @Default(PassportElementErrorSource.frontSide)
    @JsonKey(name: 'source')
    PassportElementErrorSource source,

    /// The section of the user's Telegram Passport which has the error
    @JsonKey(name: 'type') required final PassportType type,

    /// Error message
    @JsonKey(name: 'message') required final String message,

    /// Base64-encoded hash of the file with the front side of the document
    @JsonKey(name: 'file_hash') required final String fileHash,
  }) = PassportElementErrorFrontSide;

  /// Represents an error in the reverse side of a document
  @Assert(
    'source == PassportElementErrorSource.reverseSide',
    'source must be PassportElementErrorSource.reverseSide',
  )
  const factory PassportElementError.reverseSide({
    /// Error source, must be "reverse_side"
    @JsonKey(name: 'source')
    @Default(PassportElementErrorSource.reverseSide)
    PassportElementErrorSource source,

    /// The section of the user's Telegram Passport which has the error
    @JsonKey(name: 'type') required final PassportType type,

    /// Error message
    @JsonKey(name: 'message') required final String message,

    /// Base64-encoded hash of the file with the reverse side of the document
    @JsonKey(name: 'file_hash') required final String fileHash,
  }) = PassportElementErrorReverseSide;

  /// Represents an error in the selfie with a document
  @Assert(
    'source == PassportElementErrorSource.selfie',
    'source must be PassportElementErrorSource.selfie',
  )
  const factory PassportElementError.selfie({
    /// Error source, must be "selfie"
    @JsonKey(name: 'source')
    @Default(PassportElementErrorSource.selfie)
    PassportElementErrorSource source,

    /// The section of the user's Telegram Passport which has the error
    @JsonKey(name: 'type') required final PassportType type,

    /// Error message
    @JsonKey(name: 'message') required final String message,

    /// Base64-encoded hash of the file with the selfie
    @JsonKey(name: 'file_hash') required final String fileHash,
  }) = PassportElementErrorSelfie;

  /// Represents an error in a file
  @Assert(
    'source == PassportElementErrorSource.file',
    'source must be PassportElementErrorSource.file',
  )
  const factory PassportElementError.file({
    /// Error source, must be "file"
    @JsonKey(name: 'source')
    @Default(PassportElementErrorSource.file)
    PassportElementErrorSource source,

    /// The section of the user's Telegram Passport which has the error
    @JsonKey(name: 'type') required final PassportType type,

    /// Error message
    @JsonKey(name: 'message') required final String message,

    /// Base64-encoded file hash
    @JsonKey(name: 'file_hash') required final String fileHash,
  }) = PassportElementErrorFile;

  /// Represents an error in files
  @Assert(
    'source == PassportElementErrorSource.files',
    'source must be PassportElementErrorSource.files',
  )
  const factory PassportElementError.files({
    /// Error source, must be "files"
    @JsonKey(name: 'source')
    @Default(PassportElementErrorSource.files)
    PassportElementErrorSource source,

    /// The section of the user's Telegram Passport which has the error
    @JsonKey(name: 'type') required final PassportType type,

    /// Error message
    @JsonKey(name: 'message') required final String message,

    /// List of base64-encoded file hashes
    @JsonKey(name: 'file_hashes') required final List<String> fileHashes,
  }) = PassportElementErrorFiles;

  /// Represents an error in one of the files that constitute the translation of
  /// a document
  @Assert(
    'source == PassportElementErrorSource.translationFile',
    'source must be PassportElementErrorSource.translationFile',
  )
  const factory PassportElementError.translationFile({
    /// Error source, must be "translation_file"
    @JsonKey(name: 'source')
    @Default(PassportElementErrorSource.translationFile)
    PassportElementErrorSource source,

    /// The section of the user's Telegram Passport which has the error
    @JsonKey(name: 'type') required final PassportType type,

    /// Error message
    @JsonKey(name: 'message') required final String message,

    /// Base64-encoded file hash
    @JsonKey(name: 'file_hash') required final String fileHash,
  }) = PassportElementErrorTranslationFile;

  /// Represents an error in the translated version of a document
  @Assert(
    'source == PassportElementErrorSource.translationFiles',
    'source must be PassportElementErrorSource.translationFiles',
  )
  const factory PassportElementError.translationFiles({
    /// Error source, must be "translation_files"
    @JsonKey(name: 'source')
    @Default(PassportElementErrorSource.translationFiles)
    PassportElementErrorSource source,

    /// The section of the user's Telegram Passport which has the error
    @JsonKey(name: 'type') required final PassportType type,

    /// Error message
    @JsonKey(name: 'message') required final String message,

    /// List of base64-encoded file hashes
    @JsonKey(name: 'file_hashes') required final List<String> fileHashes,
  }) = PassportElementErrorTranslationFiles;

  /// Represents an issue in an unspecified place
  @Assert(
    'source == PassportElementErrorSource.unspecified',
    'source must be PassportElementErrorSource.unspecified',
  )
  const factory PassportElementError.unspecified({
    /// Error source, must be "unspecified"
    @JsonKey(name: 'source')
    @Default(PassportElementErrorSource.unspecified)
    PassportElementErrorSource source,

    /// The section of the user's Telegram Passport which has the error
    @JsonKey(name: 'type') required final PassportType type,

    /// Error message
    @JsonKey(name: 'message') required final String message,

    /// Base64-encoded element hash
    @JsonKey(name: 'element_hash') required final String elementHash,
  }) = PassportElementErrorUnspecified;

  /// Creates a new instance of [PassportElementError] from a JSON object.
  factory PassportElementError.fromJson(Map<String, dynamic> json) =>
      _$PassportElementErrorFromJson(json);
}
