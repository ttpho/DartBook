import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class OpenAIRepository {
  final http.Client _client = http.Client();

  Map<String, String> _makeHeader() {
    final String? openApiKey = dotenv.env['OPENAI_API_KEY'];
    return {
      "Accept": "application/json",
      "Content-Type": "application/json",
      "Authorization": "Bearer $openApiKey"
    };
  }

  Uri _makeUri() => Uri.https("api.openai.com", getPath());

  String getPath();

  Future<http.Response> post({Object? body}) {
    return _client.post(
      _makeUri(),
      headers: _makeHeader(),
      body: body,
    );
  }
}
