void main() {
  listEmojis();
  characters();
  reverse();
  concatenate();
  numberFromText();
  numberFromText2();
  replace();
  stringCase();
  stringAdd();
  stringTrim();
  splitString();
}

void splitString() {
  final String emails = "email1@gmail.com,email2@gmail.com";
  final List<String> listEmail = emails.split(",");
  assert(listEmail.first == "email1@gmail.com");
  assert(emails == listEmail.join(","));
}

void reverse() {
  assert(reverse1("trad") == "dart");
  assert(reverse2("trad") == "dart");
  assert(reverse3("trad") == "dart");
}

String reverse1(String text) => text.split('').reversed.join('');

String reverse2(String text) => String.fromCharCodes(text.codeUnits.reversed);

String reverse3(String text) =>
    List.generate(text.length, (index) => text[text.length - 1 - index],
            growable: false)
        .join('');

void concatenate() {
  final String text = "dart";
  assert(text * 3 == "dartdartdart");
}

void listEmojis() {
  final int start = 0x1F600;
  final int end = 0x1F607;
  final List<int> characters =
      List.generate(end - start + 1, (index) => start + index);
  print(String.fromCharCodes(characters)); // 😀😁😂😃😄😅😆😇
}

void characters() {
  final int faceWithTears = 0x1F602; //"U+1F602";
  final String unitCode = String.fromCharCodes([faceWithTears]);
  print(unitCode); // 😂
}

void numberFromText() {
  final String text = "G-568413 is your Google verification code.";
  final List<String?> codes = RegExp(r'\d+')
      .allMatches(text)
      .map((m) => m.group(0))
      .toList(growable: false);

  assert(codes.first == "568413");
}

void numberFromText2() {
  final String text = "G-568413 is your Google verification code.";
  final String code = text.replaceAll(RegExp(r'[^0-9]'), '');

  assert(code == "568413");
}

void replace() {
  final String link = "https://translate.google.com/";
  final String newLink = link.replaceAll("translate", "photos");
  assert(newLink == "https://photos.google.com/");
}

void stringCase() {
  final String keywork = "Dart";
  assert(keywork.toLowerCase() == "dart");
  assert(keywork.toUpperCase() == "DART");
}

void stringAdd() {
  final String keywork = "dart";
  final String googleSearch = "https://www.google.com/search?q=$keywork";
  assert(googleSearch == "https://www.google.com/search?q=dart");
}

void stringTrim() {
  final String keywork = " dart ";
  assert(keywork.trim() == "dart");
  assert(keywork.trimLeft() == "dart ");
  assert(keywork.trimRight() == " dart");
}

void multiline() {
  var userName = 'John Dart';
  var message = """
      $userName!
      Welcome to Programming Dart!
      """;
  print(message);
}
