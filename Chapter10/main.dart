import 'hex_code_color.dart';
import 'iterable_ext.dart';
import 'list_num_extension.dart';

void main(List<String> args) {
  final List<double> list = [1, 2, 5.0, 3 / 2];
  final double sum = list.sum.toDouble();
  print("Sum: $sum"); // Sum: 9.5

  final List<String> lastNames = [
    "Nguyễn",
    "Phan",
    "Trần",
    "Phạm",
    "Huỳnh",
    "Võ",
  ];
  final (String? name, int pos) =
      lastNames.lastOrNullWhere((e) => e.length <= 2);
  print("Last name: $name, position: $pos"); // Last name: Võ, position: 5

  final List<double> numbers = [1, 2, 5.0, -1, 0, 0, 0, 0];

  final (String? item, int p) = numbers.lastOrNullWhere((e) => e > 10);
  print("Item > 10: $item, position: $p"); // Item > 10: null, position: -1

  print(Color.red.hexCode()); // #FF0000
}
