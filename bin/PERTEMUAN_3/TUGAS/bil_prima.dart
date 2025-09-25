// TUGAS MANDIRI

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
  print("Cek angka 7: ${isPrima(7)}");
}
