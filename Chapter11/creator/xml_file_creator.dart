import 'file_creator_template.dart';

class XmlFileCreator extends FileCreatorTemplate {
  @override
  String makeContentFile(final Map<String, dynamic> map) {
    final List<String> items = [];
    map.forEach(
      (key, value) => items.add("\t<string name=\"${key}\">$value</string>"),
    );
    return """
<?xml version="1.0" encoding="utf-8"?>
<resources>
${items.join("\n")}
</resource>
""";
  }
}
