import 'file_creator_template.dart';

class EnvFileCreator extends FileCreatorTemplate {
  @override
  String makeContentFile(final Map<String, dynamic> map) {
    final List<String> items = [];
    map.forEach(
      (key, value) => items.add("$key=$value"),
    );

    return items.join("\n");
  }
}
