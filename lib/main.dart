import 'dart:io';

void main() {
  List<Map<String, dynamic>> riwayat = [];

  for (int i = 0; i < 3; i++) {
    stdout.write("Masukkan tinggi badan (cm): ");
    double? tinggi = double.tryParse(stdin.readLineSync() ?? "");
    stdout.write("Masukkan berat badan (kg): ");
    double? berat = double.tryParse(stdin.readLineSync() ?? "");

    if (tinggi == null || berat == null || tinggi <= 0 || berat <= 0) {
      print("Input tidak valid!");
      continue;
    }

    double tinggiM = tinggi / 100;
    double bmi = berat / (tinggiM * tinggiM);

    String kategori;
    if (bmi < 18.5) {
      kategori = "Kurus";
    } else if (bmi < 25) {
      kategori = "Normal";
    } else if (bmi < 30) {
      kategori = "Gemuk";
    } else {
      kategori = "Obesitas";
    }

    riwayat.add({
      "tinggi": tinggi,
      "berat": berat,
      "bmi": bmi,
      "kategori": kategori
    });
  }

  print("\n=== Riwayat Perhitungan ===");
  for (var data in riwayat) {
    print("Tinggi: ${data['tinggi']} cm, Berat: ${data['berat']} kg, "
          "BMI: ${data['bmi'].toStringAsFixed(2)}, Kategori: ${data['kategori']}");
  }
}
