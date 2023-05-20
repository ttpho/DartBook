import 'env_file_creator.dart';
import 'file_creator_template.dart';
import 'xml_file_creator.dart';

enum FileFormat {
  xml,
  env,
}

extension FileFormatExtension on FileFormat {
  FileCreatorTemplate makeCreator() {
    switch (this) {
      case FileFormat.xml:
        return XmlFileCreator();
      case FileFormat.env:
        return EnvFileCreator();
    }
  }
}
