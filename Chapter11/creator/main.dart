import 'dart:convert';
import 'file_format.dart';
import 'file_creator_template.dart';

void main(List<String> args) {
  final String filePath = "Chapter11/creator/database";
  final String jsonString = """
{
  "user": "root",
  "port": "8080",
  "pass": "123456789"
}
""";
  final Map<String, dynamic> map = jsonDecode(jsonString);

  FileFormat.values.forEach((element) {
    final String fileName = "${filePath}.${element.name}";
    final FileCreatorTemplate template = element.makeCreator();
    template.create(
      map: map,
      fileName: fileName,
    );
  });
}
