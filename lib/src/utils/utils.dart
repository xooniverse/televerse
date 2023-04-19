part of televerse;

/// Filename extension for [io.File] is used to get the filename of a file.
extension Filename on io.File {
  /// The filename of this file.
  String get filename => path.split('/').last;
}
