List<String> splitEmail(final String emails) =>
    emails.split(",").map((e) => e.trim()).toList(growable: false);

void main(List<String> args) {
  final String text = "mail1@gmail.com, user@hotmail.com";
  final List<String> emails = splitEmail(text);
  print(emails); // [mail1@gmail.com, user@hotmail.com]
}
