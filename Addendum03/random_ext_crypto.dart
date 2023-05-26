import 'dart:convert';
import 'dart:math';

extension RandomExt on Random {
  String genCryptoString([int length = 32]) {
    final random = Random.secure();
    final values = List<int>.generate(length, (i) => random.nextInt(256));
    return base64Url.encode(values);
  }
}

void main(List<String> args) {
  final random = Random();
  print(random.genCryptoString(6)); // aEfBj3Jw
}
