enum Color { red, green, blue }

extension ColorExt on Color {
  String? hexCode() {
    final Map<Color, String> mapHexCode = {
      Color.red: "#FF0000",
      Color.green: "#00FF00",
      Color.blue: "#0000FF",
    };
    return mapHexCode[this];
  }
}
