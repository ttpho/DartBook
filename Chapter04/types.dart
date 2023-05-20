import 'dart:convert';

void main() {
  final double count = double.maxFinite;
  print(count);

  final String eChar = String.fromCharCodes([69]);
  print(eChar); // E

  final String language = 'Dart';

  ///  message is Dart is Programming Language
  final String message = "$language is Programming Language";

  final String quotes = "Single quotes in 'double' quotes";

  final String multiLine = """A
multiline
string
""";

  ///  spaceMessage is Dart is fun
  final String spaceMessage = 'Dart ' 'is ' 'fun!';

  ///  addedMessage is Dart is fun
  final String addedMessage = 'Dart ' + 'is ' + 'fun!';

  final String text = "Hello World";
  print(text[6]);
  print(text.length);

  print(language);
  print(eChar);
  print(quotes);
  print(multiLine);
  print(message);
  print(spaceMessage);
  print(addedMessage);

  final bool isMainThread = true;
  final bool? isLocal = isMainThread;
  print(isMainThread);
  print(isLocal);

  final zeroList = List<int>.filled(5, 0, growable: true);
  print(zeroList); // [0, 0, 0, 0, 0]

  final numbers = <int>[1, 2, 3];
  numbers.add(4);
  print(numbers); // [1, 2, 3, 4]

  final List<int> listNum = [1, -1, 4, 5];
  listNum.sort();
  print(listNum); // [-1, 1, 4, 5]

  final List<String?> listText = ["Android", "iOS", null, "Web"];
  listText.add("Linux");
  listText.remove("Web");
  print(listText[0]); // Android
  print(listText.length); // 4
  print(listText.isEmpty); // false
  print(listText); // [Android, iOS, null, Linux]

  listText.forEach((element) {
    print(element);
  });

  final planets = <num, String>{
    1: 'Mercury',
    2: 'Venus',
    3: 'Earth',
    4: 'Mars',
  };

  print(planets); // {1: Mercury, 2: Venus, 3: Earth, 4: Mars}

  final Map<String, String> loginParam = {
    "userName": "ttpho",
    "password": "ttpho@123",
  };
  print(loginParam.length); // 2
  print(loginParam["userName"]); // ttpho
  print(loginParam["Password"]); // null
  loginParam.putIfAbsent("deviceId", () => "123456789");

  loginParam.forEach((key, value) {
    print("key: $key value: $value");
  });

  final String jsonString = """
{
  "userId": 1,
  "id": 1,
  "title": "sunt aut facere repellat provident",
  "body": "suscipit recusandae consequuntur expedita et cum"
}
""";

  /// import 'dart:convert';
  final Map<String, dynamic> userItem = jsonDecode(jsonString);
  print(userItem["userId"]); // 1

  // key: userId value: 1
  // key: id value: 1
  // key: title value: sunt aut facere repellat provident
  // key: body value: suscipit recusandae consequuntur expedita et cum
  userItem.forEach((key, value) {
    print("key: $key value: $value");
  });

  final Set<String> mobilePlatforms = {"Android", "iOS"};
  mobilePlatforms.add("Windows Phone");
  mobilePlatforms.add("iOS");

  print(mobilePlatforms); // {Android, iOS, Windows Phone}

  print(mobilePlatforms.toList()); // [Android, iOS, Windows Phone]

  final tuple = ("abc", 34, true, 40, "male");
  print(tuple.$1); // abc
  print(tuple.$2); // 34
  print(tuple.$3); // true
  print(tuple.$4); // 40
  print(tuple.$5); // male

  final user = ("ttpho", "1234@");
  final (String userName, String password) = user;
  print("$userName/$password"); // ttpho/1234@
}
