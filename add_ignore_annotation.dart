// File: add_ignore_annotation.dart
import 'dart:io';

void main() async {
  // Get current directory
  final dir = Directory.current;

  // Get all dart files in current directory
  final dartFiles = await dir
      .list(recursive: true)
      .where((entity) =>
          entity is File &&
          entity.path.endsWith('.dart') &&
          !entity.path.endsWith('.g.dart') &&
          !entity.path.endsWith('.freezed.dart') &&
          !entity.path.endsWith('models.dart') &&
          !entity.path.endsWith('add_ignore_annotation.dart'))
      .cast<File>()
      .toList();

  const elements = ["@freezed", "@Freezed", "@JsonKey"];

  // Process each file
  for (final file in dartFiles) {
    try {
      final content = await file.readAsString();

      // Check if file has @freezed annotation
      if (elements.any((e) => content.contains(e))) {
        print('Processing ${file.path}');

        // Check if the annotation is already present
        if (!content
            .contains('// ignore_for_file: invalid_annotation_target')) {
          // Add the ignore annotation at the top of the file
          final updatedContent =
              '// ignore_for_file: invalid_annotation_target\n$content';

          // Write the updated content back to the file
          await file.writeAsString(updatedContent);
          print('  Added ignore annotation to ${file.path}');
        } else {
          print('  Ignore annotation already exists in ${file.path}');
        }
      } else {
        print('Skipping ${file.path} (no @freezed annotation found)');
      }
    } catch (e) {
      print('Error processing ${file.path}: $e');
    }
  }

  print('Done!');
}
