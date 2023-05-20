import 'dart:io';

enum Category {
  severeThinness(
    status: "Underweight (Severe thinness)",
    min: double.minPositive,
    max: 16.0,
  ),
  moderateThinness(
    status: "Underweight (Moderate thinness)",
    min: 16.0,
    max: 17.0,
  ),
  mildThinness(
    status: "Underweight (Mild thinness)",
    min: 17.0,
    max: 18.5,
  ),
  normalRange(
    status: "Normal range",
    min: 18.5,
    max: 25.0,
  ),
  overweight(
    status: "Overweight (Pre-obese)",
    min: 25.0,
    max: 30.0,
  ),
  obeseI(
    status: "Obese (Class I)",
    min: 30.0,
    max: 35.0,
  ),
  obeseII(
    status: "Obese (Class II)",
    min: 35.0,
    max: 40.0,
  ),

  obeseIII(
    status: "Obese (Class III)",
    min: 40.0,
    max: double.maxFinite,
  );

  const Category({
    required this.status,
    required this.min,
    required this.max,
  });

  final String status;
  final double min;
  final double max;

  bool inRange(final double bmi) => min <= bmi && bmi <= max;
}

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
  final result = Category.values.where((e) => e.inRange(bmi));
  return result.first.status;
}

/// dart run bim.dart
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
