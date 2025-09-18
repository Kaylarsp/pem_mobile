import 'dart:io';

void main() {
  print("=== Aplikasi Konversi Unit ===");

  while (true) {
    print("\nPilih kategori konversi:");
    print("1. Panjang");
    print("2. Massa");
    print("3. Volume");
    print("4. Suhu");
    print("0. Keluar");

    stdout.write("Pilihan: ");
    String? pilihan = stdin.readLineSync();

    if (pilihan == "0") {
      print("Terima kasih sudah menggunakan aplikasi!");
      break;
    }

    switch (pilihan) {
      case "1":
        konversi("Panjang", {
          "m": 1.0,
          "cm": 0.01,
          "mm": 0.001,
          "km": 1000.0,
          "inch": 0.0254
        }, allowNegative: false);
        break;

      case "2":
        konversi("Massa", {
          "kg": 1.0,
          "g": 0.001,
          "mg": 0.000001,
          "lb": 0.453592,
          "ons": 0.0283495
        }, allowNegative: false);
        break;

      case "3":
        konversi("Volume", {
          "L": 1.0,
          "mL": 0.001,
          "m3": 1000.0,
          "galon": 3.78541,
          "cup": 0.24
        }, allowNegative: false);
        break;

      case "4":
        konversiSuhu();
        break;

      default:
        print("Pilihan tidak valid!");
    }
  }
}

void konversi(String kategori, Map<String, double> faktor,
    {bool allowNegative = true}) {
  print("\n=== Konversi $kategori ===");
  print("Unit tersedia: ${faktor.keys.join(", ")}");

  stdout.write("Masukkan nilai: ");
  double? nilai = double.tryParse(stdin.readLineSync() ?? "");

  if (nilai == null) {
    print("Input tidak valid!");
    return;
  }

  if (!allowNegative && nilai < 0) {
    print("Nilai tidak boleh negatif!");
    return;
  }

  stdout.write("Dari unit: ");
  String? from = stdin.readLineSync();

  stdout.write("Ke unit: ");
  String? to = stdin.readLineSync();

  if (!faktor.containsKey(from) || !faktor.containsKey(to)) {
    print("Unit tidak ditemukan!");
    return;
  }

  double hasil = nilai * faktor[from]! / faktor[to]!;
  print("\n$nilai $from = ${hasil.toStringAsFixed(4)} $to");
}

void konversiSuhu() {
  print("\n=== Konversi Suhu ===");
  print("Unit tersedia: C, F, K, R, Re");

  stdout.write("Masukkan nilai: ");
  double? nilai = double.tryParse(stdin.readLineSync() ?? "");

  if (nilai == null) {
    print("Input tidak valid!");
    return;
  }

  stdout.write("Dari unit: ");
  String? from = stdin.readLineSync()?.toUpperCase();

  stdout.write("Ke unit: ");
  String? to = stdin.readLineSync()?.toUpperCase();

  double? celsius;

  // konversi ke Celsius dulu
  switch (from) {
    case "C":
      celsius = nilai;
      break;
    case "F":
      celsius = (nilai - 32) * 5 / 9;
      break;
    case "K":
      celsius = nilai - 273.15;
      break;
    case "R":
      celsius = nilai * 5 / 4;
      break;
    case "RE":
      celsius = nilai * 5 / 4; 
      break;
    default:
      print("Unit tidak ditemukan!");
      return;
  }

  double hasil;
  switch (to) {
    case "C":
      hasil = celsius;
      break;
    case "F":
      hasil = (celsius * 9 / 5) + 32;
      break;
    case "K":
      hasil = celsius + 273.15;
      break;
    case "R":
      hasil = celsius * 4 / 5;
      break;
    case "RE":
      hasil = celsius * 4 / 5;
      break;
    default:
      print("Unit tidak ditemukan!");
      return;
  }

  print("\n$nilai $from = ${hasil.toStringAsFixed(2)} $to");
}
