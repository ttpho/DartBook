void main(List<String> args) {
  /// 🐞 Bad state: Pattern matching error
  final [x, y] = [1, 2, 3];
  print("$x $y");
}
