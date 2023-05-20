import 'dart:convert';

void main(List<String> args) {
  final String jsonString = """
  {"name": "John Smith", "age": 30}
  """;
  final Map<String, dynamic> jsonMap = jsonDecode(jsonString);
  print(jsonMap['name']); // John Smith
  print(jsonMap['age']); // 30

  final Map<String, dynamic> map = {
    "userName": "ttpho",
    "email": "ttpho@email.com"
  };

  print(jsonEncode(map)); // {"userName":"ttpho","email":"ttpho@email.com"}
}
