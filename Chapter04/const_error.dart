void main() {
  // ignore: unused_local_variable
  final String languageName;
  languageName = "Dart"; // 👌

  // ignore: unused_local_variable
  final String color;

  /// 🐞 The final variable 'color' can't be read because it's potentially unassigned at this point. Ensure that it is assigned on necessary execution paths.
  // print(color);

  /// 🐞 The constant 'welcomeMessage' must be initialized.
  /// const String welcomeMessage;
  /// welcomeMessage = "你好";
}
