import 'package:http/http.dart' as http;

void main() async {
  final url = 'https://dartj.web.app/';
  final uri = Uri.parse(url);
  var response = await http.get(uri);

  print('Response status: ${response.statusCode}');
  print('Response body:\n ${response.body}');
}
