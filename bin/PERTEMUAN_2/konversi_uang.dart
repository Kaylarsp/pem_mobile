import 'dart:io';

void main() {
  // 1. Tampilkan menu pilihan konversi
  print("");
  print("=== Kalkulator Konversi Mata Uang ===");
  print("1. Rupiah (IDR) ke Dollar (USD)");
  print("2. Rupiah (IDR) ke Euro (EUR)");
  print("3. Dollar (USD) ke Rupiah (IDR)");
  print("4. Euro (EUR) ke Rupiah (IDR)");
  print("5. Dollar (USD) ke Euro (EUR)");
  print("6. Euro (EUR) ke Dollar (USD)");

  // 2. Minta input pilihan dari user
  print("");
  stdout.write("Pilih menu (1-6): ");
  int pilihan = int.parse(stdin.readLineSync()!);

  // 3. Minta input jumlah uang yang akan dikonversi
  print("");
  stdout.write("Masukkan jumlah uang: ");
  double jumlah = double.parse(stdin.readLineSync()!);

  // 4. Tentukan kurs (nilai tukar) sederhana
  double kursUsdToIdr = 15000; // 1 USD = 15.000 IDR
  double kursEurToIdr = 16500; // 1 EUR = 16.500 IDR

  double hasil; // variabel untuk menampung hasil konversi

  // 5. Proses konversi berdasarkan pilihan user
  if (pilihan == 1) {
    // IDR ke USD
    hasil = jumlah / kursUsdToIdr;
    print("$jumlah IDR = ${hasil.toStringAsFixed(2)} USD");
  } else if (pilihan == 2) {
    // IDR ke EUR
    hasil = jumlah / kursEurToIdr;
    print("$jumlah IDR = ${hasil.toStringAsFixed(2)} EUR");
  } else if (pilihan == 3) {
    // USD ke IDR
    hasil = jumlah * kursUsdToIdr;
    print("$jumlah USD = ${hasil.toStringAsFixed(2)} IDR");
  } else if (pilihan == 4) {
    // EUR ke IDR
    hasil = jumlah * kursEurToIdr;
    print("$jumlah EUR = ${hasil.toStringAsFixed(2)} IDR");
  } else if (pilihan == 5) {
    // USD ke EUR (konversi via IDR dulu)
    hasil = (jumlah * kursUsdToIdr) / kursEurToIdr;
    print("$jumlah USD = ${hasil.toStringAsFixed(2)} EUR");
  } else if (pilihan == 6) {
    // EUR ke USD (konversi via IDR dulu)
    hasil = (jumlah * kursEurToIdr) / kursUsdToIdr;
    print("$jumlah EUR = ${hasil.toStringAsFixed(2)} USD");
  } else {
    // Jika input menu salah
    print("Pilihan tidak valid!");
  }
}
