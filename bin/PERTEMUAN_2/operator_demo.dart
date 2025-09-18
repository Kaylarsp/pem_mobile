void main() {
  print("=== Contoh Semua Operator di Dart ===\n");

  // --- Operator Aritmatika ---
  int a = 10;
  int b = 3;
  print("Aritmatika:");
  print("$a + $b = ${a + b}");
  print("$a - $b = ${a - b}");
  print("$a * $b = ${a * b}");
  print("$a / $b = ${a / b}");
  print("$a ~/ $b = ${a ~/ b}");
  print("$a % $b = ${a % b}\n");

  // --- Operator Increment / Decrement ---
  int x = 5;
  print("Increment/Decrement:");
  print("x awal = $x");
  print("x++ = ${x++} (post-increment), nilai x sekarang = $x");
  print("++x = ${++x} (pre-increment), nilai x sekarang = $x");
  print("x-- = ${x--} (post-decrement), nilai x sekarang = $x");
  print("--x = ${--x} (pre-decrement), nilai x sekarang = $x\n");

  // --- Operator Relasional ---
  print("Relasional:");
  print("$a == $b : ${a == b}");
  print("$a != $b : ${a != b}");
  print("$a > $b : ${a > b}");
  print("$a < $b : ${a < b}");
  print("$a >= $b : ${a >= b}");
  print("$a <= $b : ${a <= b}\n");

  // --- Operator Logika ---
  bool benar = true;
  bool salah = false;
  print("Logika:");
  print("true && false = ${benar && salah}");
  print("true || false = ${benar || salah}");
  print("!true = ${!benar}\n");

  // --- Operator Penugasan ---
  int y = 10;
  print("Penugasan:");
  print("y awal = $y");
  y += 5;
  print("y += 5 -> $y");
  y *= 2;
  print("y *= 2 -> $y");
  y ~/= 3;
  print("y ~/= 3 -> $y\n");

  // --- Operator Null-aware ---
  String? nama;
  String tampil = nama ?? "Guest";
  print("Null-aware:");
  print("nama ?? 'Guest' = $tampil");
  nama = "Kayla";
  print("nama setelah diisi = ${nama ?? "Guest"}\n");

  // --- Operator Type Test ---
  var data = 100;
  print("Type Test:");
  print("data is int : ${data is int}");
  print("data is! String : ${data is! String}\n");

  // --- Operator Kondisional (ternary) ---
  int nilai = 75;
  String hasil = nilai >= 70 ? "Lulus" : "Tidak Lulus";
  print("Kondisional:");
  print("Nilai = $nilai, Status = $hasil\n");

  // --- Operator Bitwise ---
  int p = 5; // 0101
  int q = 3; // 0011
  print("Bitwise:");
  print("p & q = ${p & q}");
  print("p | q = ${p | q}");
  print("p ^ q = ${p ^ q}");
  print("~p = ${~p}");
  print("p << 1 = ${p << 1}");
  print("p >> 1 = ${p >> 1}");
}
