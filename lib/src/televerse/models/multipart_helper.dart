part of '../../../televerse.dart';

/// This class helps to create multipart request
class _MultipartHelper {
  /// The file to be uploaded
  final InputFile file;

  /// Creates a new multipart helper
  const _MultipartHelper(this.file);

  /// The InputFile Type
  InputFileType get type => file.type;

  /// Returns the file name of the [InputFile].
  String get name => file.name ?? 'file';
}
