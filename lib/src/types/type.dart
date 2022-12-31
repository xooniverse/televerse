import 'dart:io';

void main(List<String> args) async {
  final files = await Directory.current.list().toList();
  // read each file and add "part of types" to the top
  for (final file in files) {
    if (file is File) {
      final content = await file.readAsString();
      if (content.contains("part of types")) {
        continue;
      }
      final newContent = "part of types;\n\n$content";
      await file.writeAsString(newContent);
    }
  }

  // create a new file named types.dart and all file names as
  // part 'file_name.dart';
  final typesFile = File("types.dart");
  final typesContent =
      files.map((e) => "part '${e.path.split("/").last}';").join("\n");
  await typesFile.writeAsString(typesContent);
  print('done');
}
