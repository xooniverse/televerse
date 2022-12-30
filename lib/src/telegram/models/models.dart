import 'dart:io';

void main(List<String> args) {
  /// list all file in this directory
  final files = Directory.current.listSync(recursive: true).toList();

  /// read their content
  // if starts with part of then leave it, otherwise add a new line at the beginning
  // "part of models;"

  for (var file in files) {
    if (file is File) {
      final content = file.readAsStringSync();
      if (content.startsWith("part of")) {
        continue;
      } else {
        file.writeAsStringSync("part of models;\n$content");
      }
    }
  }

  // now create a new file called "modelsx.dart" and add all filenames to it as "part 'filename.dart';"
  final modelx = File("modelsx.dart");
  modelx.writeAsStringSync("library models;\n");
  for (var file in files) {
    if (file is File) {
      var name = file.path.split("/").last;
      if (file.path.contains("abstracts")) {
        name = "abstracts/$name";
      }
      modelx.writeAsStringSync("part '$name';\n", mode: FileMode.append);
    }
  }

  // that's it
}
