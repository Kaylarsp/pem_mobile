// TUGAS MANDIRI

import 'dart:io';

bool isPrima(int angka) {
  if (angka < 2) return false;

  for (int i = 2; i <= angka ~/ 2; i++) {
    if (angka % i == 0) {
      return false;
    }
  }
  return true;
}

void main() {
  stdout.write("Masukkan angka: ");
  int n = int.parse(stdin.readLineSync()!);

  print("Bilangan prima sampai $n adalah:");
  for (int i = 2; i <= n; i++) {
    if (isPrima(i)) {
      print(i);
    }
  }
}
