// TUGAS MANDIRI

import 'dart:io';
import 'dart:math';

bool isPrima(int angka) {
  if (angka < 2) return false;

  for (int i = 2; i <= sqrt(angka).toInt(); i++) {
    if (angka % i == 0) {
      return false;
    }
  }
  return true;
}

void main() {
  stdout.write("Masukkan angka: ");
  String? input = stdin.readLineSync();

  if (input == null || int.tryParse(input) == null) {
    print("Input tidak valid! Harus berupa angka.");
    return;
  }

  int n = int.parse(input);
  if (n < 2) {
    print("Tidak ada bilangan prima kurang dari 2.");
    return;
  }

  print("Bilangan prima sampai $n adalah:");
  for (int i = 2; i <= n; i++) {
    if (isPrima(i)) {
      print(i);
    }
  }
}
