import 'dart:io';

void main() {
  // 1. Minta input berat badan
  stdout.write("Masukkan berat badan (kg): ");
  double berat = double.parse(stdin.readLineSync()!);

  // 2. Minta input tinggi badan
  stdout.write("Masukkan tinggi badan (cm): ");
  double tinggiCm = double.parse(stdin.readLineSync()!);

  // 3. Konversi cm ke meter
  double tinggi = tinggiCm / 100;

  // 4. Hitung BMI
  double bmi = berat / (tinggi * tinggi);

  // 5. Tampilkan hasil BMI
  print("BMI kamu adalah: ${bmi.toStringAsFixed(2)}");

  // 6. Kategori BMI
  if (bmi < 18.5) {
    print("Kategori: Berat badan kurang");
  } else if (bmi >= 18.5 && bmi < 24.9) {
    print("Kategori: Normal (ideal)");
  } else if (bmi >= 25 && bmi < 29.9) {
    print("Kategori: Kelebihan berat badan");
  } else {
    print("Kategori: Obesitas");
  }
}
