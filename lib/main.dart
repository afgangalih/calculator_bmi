import 'dart:io';

void main() {
  stdout.write("Masukkan tinggi badan (cm): ");
  double? tinggi = double.tryParse(stdin.readLineSync() ?? "");
  stdout.write("Masukkan berat badan (kg): ");
  double? berat = double.tryParse(stdin.readLineSync() ?? "");

  if (tinggi == null || berat == null || tinggi <= 0 || berat <= 0) {
    print("Input tidak valid!");
    return;
  }

  double tinggiM = tinggi / 100;
  double bmi = berat / (tinggiM * tinggiM);

  print("BMI kamu: ${bmi.toStringAsFixed(2)}");
}
