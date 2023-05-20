import 'dart:io';

abstract class FileCreatorTemplate {
  void create({
    required Map<String, dynamic> map,
    required final String fileName,
  }) {
    final File file = File(fileName);
    final sink = file.openWrite();
    sink.writeln(makeContentFile(map));
    sink.close();
  }

  String makeContentFile(final Map<String, dynamic> map);
}
