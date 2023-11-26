part of '../../televerse.dart';

/// Filename extension for [io.File] is used to get the filename of a file.
extension Filename on io.File {
  /// The filename of this file.
  String get filename => path.split('/').last;

  /// The extension of this file.
  String get extension => filename.split('.').last;

  /// The filename without the extension.
  String get filenameWithoutExtension => filename.split('.').first;
}

/// [String] extension, to clean the [String]
extension CleanString on String {
  /// Typesafe for args, replace all white space or multiple space in [String] into single space
  String get clean => trim().replaceAll(RegExp(r'\s{2,}|[\t\r\n]'), ' ');
}

/// Internal method to generate a random id.
/// Include a-z, A-Z, 0-9
String _getRandomID() {
  final random = Random();
  final chars =
      "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
  return List.generate(20, (index) => chars[random.nextInt(chars.length)])
      .join();
}
