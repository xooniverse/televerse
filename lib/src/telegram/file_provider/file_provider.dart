import 'package:televerse/televerse.dart' show InputFile;

/// Define a common interface for anything that can hold files
abstract interface class InputFileProvider {
  /// Returns an iterable of files
  Iterable<InputFile?> getInputFiles();
}
