part of '../../../televerse.dart';

/// This class helps to create multipart request
class _MultipartHelper {
  /// The file to be uploaded
  final InputFile file;

  /// The field name of the file
  final String field;

  /// Creates a new multipart helper
  const _MultipartHelper(this.file, this.field);

  /// The InputFile Type
  InputFileType get type => file.type;

  /// Returns the file name of the [InputFile].
  String get name => file.name ?? 'file';
}
