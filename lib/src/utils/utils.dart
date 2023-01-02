part of televerse;

extension Filename on io.File {
  String get filename => path.split('/').last;
}
