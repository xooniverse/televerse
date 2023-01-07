part of televerse;

/// Filename extension for [io.File] is used to get the filename of a file.
extension Filename on io.File {
  String get filename => path.split('/').last;
}
