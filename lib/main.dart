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

  print("Input valid: Tinggi = $tinggi cm, Berat = $berat kg");
}
