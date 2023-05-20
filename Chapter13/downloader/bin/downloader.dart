import 'dart:io';
import 'package:http/http.dart' as http;

void main() async {
  final url = "https://dartpad.dev/dart-192.png";
  final uri = Uri.parse(url);
  final fileName = 'dart-192.png';

  final response = await http.get(uri);
  if (response.statusCode == 200) {
    final bodyBytes = response.bodyBytes;
    final file = File(fileName);

    await file.writeAsBytes(bodyBytes);
    print("File is created: ${file.path}");
  }
}
