import 'dart:io';

double calBodyMassIndex({
  required final double mass,
  required final double height,
}) {
  if (mass <= 0) {
    throw ArgumentError(
      "must greater than 0",
      "mass",
    );
  }

  if (height <= 0) {
    throw ArgumentError(
      "must greater than 0",
      "height",
    );
  }

  return mass / (height * height);
}

String bodyStatus(final double bmi) {
  if (bmi < 16.0) {
    return "Underweight (Severe thinness)";
  }

  if (bmi < 17.0) {
    return "Underweight (Moderate thinness)";
  }

  if (bmi < 18.5) {
    return "Underweight (Mild thinness)";
  }

  if (bmi < 25.0) {
    return "Normal range";
  }

  if (bmi < 30.0) {
    return "Overweight (Pre-obese)";
  }

  if (bmi < 35.0) {
    return "Obese (Class I)";
  }

  if (bmi < 40.0) {
    return "Obese (Class II)";
  }

  return "Obese (Class III)";
}

void main(List<String> args) {
  print("Your mass(kg): ");
  final String massText = stdin.readLineSync() ?? "";

  print("Your height(m): ");
  final String heightText = stdin.readLineSync() ?? "";

  final double mass = double.tryParse(massText) ?? 0;
  final double height = double.tryParse(heightText) ?? 0;

  try {
    final bmi = calBodyMassIndex(
      mass: mass,
      height: height,
    );

    print("BMI: ${bmi.toStringAsFixed(2)}");

    print("Status: ${bodyStatus(bmi)}");
  } on ArgumentError catch (e) {
    print("Error: ${e.name} ${e.message}");
  }
}
