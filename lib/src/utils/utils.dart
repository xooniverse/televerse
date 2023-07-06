part of televerse;

/// Filename extension for [io.File] is used to get the filename of a file.
extension Filename on io.File {
  /// The filename of this file.
  String get filename => path.split('/').last;
}

/// [String] extension, to clean the [String]
extension CleanString on String {
  /// Typesafe for args, replace all white space or multiple space in [String] into single space
  String get clean => trim().replaceAll(RegExp(r'\s{2,}|[\t\r\n]'), ' ');
}
