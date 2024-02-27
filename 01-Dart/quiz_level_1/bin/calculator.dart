import 'dart:io';

void menu() {
  print("\nKALKULATOR");
  print("NIP: ARN202-35143");
  print("\nMenu");
  print("1. Penambahan");
  print("2. Perkalian");
  print("3. Konversi Kurs");
  print("4. Hitung Body Mass Index (BMI)");
  print("0. Keluar");
  print("\nPilihan?");
}

void tambah() {
  try {
    print("Masukkan bilangan pertama:");
    int? a = int.parse(stdin.readLineSync()!);
    print("Masukkan bilangan kedua:");
    int? b = int.parse(stdin.readLineSync()!);

    print("\n==> Hasil jumlah $a + $b = ${a + b}");
  } on Exception catch (e) {
    print('Input harus bilangan genap!');
    print('Exception: $e');
  }
}

void kali() {
  try {
    print("Masukkan bilangan pertama:");
    double? a = double.parse(stdin.readLineSync()!);
    print("Masukkan bilangan kedua:");
    double? b = double.parse(stdin.readLineSync()!);

    print("\n==> Hasil perkalian $a * $b = ${a * b}");
  } on Exception catch (e) {
    print('Input harus bilangan!');
    print('Exception: $e');
  }
}

void konversi() {
  try {
    print("1. IDR to USD");
    print("2. USD to IDR");
    print("Pilih jenis konversi:");
    String? pilihan = stdin.readLineSync();

    switch (pilihan) {
      case "1":
        print("\nMasukkan nominal IDR: ");
        double? idr = double.parse(stdin.readLineSync()!);
        double usd = (idr * 0.000063).toDouble();
        print("==> Hasil konversi USD: \$$usd");
        break;
      case "2":
        print("\nMasukkan nominal USD:");
        double? usd = double.parse(stdin.readLineSync()!);
        int idr = (usd * 15824.80).toInt();
        print("==> Hasil konversi IDR: Rp $idr");
        break;
      default:
        break;
    }
  } on Exception catch (e) {
    print('Input salah!');
    print('Exception: $e');
  }
}

extension Ex on double {
  double toPrecision(int n) => double.parse(toStringAsFixed(n));
}

void bmi() {
  try {
    // print('Jenis kelamin L/P:');
    // String? sex = stdin.readLineSync();

    print('Berat badan (kg):');
    double? bb = double.parse(stdin.readLineSync()!);

    print('Tinggi badan (m):');
    double? tb = double.parse(stdin.readLineSync()!);

    double bmi = (bb / (tb * tb)).toPrecision(2);
    print('\n==> BMI: $bmi');
    if (bmi < 18.5) {
      print('Berat badan kurang.');
    } else if (bmi >= 18.5 && bmi <= 22.9) {
      print('Berat badan normal.');
    } else if (bmi >= 23 && bmi <= 29.9) {
      print('Berat badan berlebih (cenderung obesitas).');
    } else if (bmi >= 30) {
      print('Obesitas');
    }
  } on Exception catch (e) {
    print('Input salah!');
  }
}

void main() {
  bool active = true;
  while (active == true) {
    menu();
    String? pilihan = stdin.readLineSync();

    switch (pilihan) {
      case '1':
        print('\nMenu Penjumlahan');
        tambah();
        break;
      case '2':
        print('\nMenu Perkalian');
        kali();
        break;
      case '3':
        print('\nMenu Konversi');
        konversi();
        break;
      case '4':
        print('\nMenu BMI');
        bmi();
        break;
      case '0':
        active = false;
      default:
        break;
    }
  }
}
