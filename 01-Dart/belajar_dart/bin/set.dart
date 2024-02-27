void main() {
  // set menggunakan {}

  // membuat set dengan type integer
  Set<int> numbers = {};

  // membuat set dengan type double
  final numberDouble = <String>{};

  /**
   * Manipulasi Set
   * set.length -> mendapatkan panjang
   * set.add(value) -> menambah data
   * set.remove(value) -> menghapus data
   */

  // menambahkan data pada list
  var names = <String>{};
  names.add('Yasir');
  names.add('Abdur');
  names.add('Abdur');
  names.add('Rohman');
  names.add('Rohman');
  print(names); // hasilnya tetap {Yasir, Abdur, Rohman}
  print(names.length);

  // menghapus data
  names.remove('Yasir');
  print(names); // hasilnya {Abdur, Rohman}

  // deklarasi secara langsung
  var myName = <String>{'Yasir', 'Yasir', 'Abdur', 'Rohman'};
  print(myName); // hasilnya {Yasir, Abdur, Rohman}
}
