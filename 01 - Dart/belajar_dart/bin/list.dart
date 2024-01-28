void main() {
  // membuat list kosong dengan tipe integer
  List<int> listInt = [];

  // membuat list kosong dengan tipe String
  var listString = <String>[];

  print(listInt);
  print(listString);

  // membuat list names kosong dengan tipe String
  var names = <String>[];
  // menambahkan value pada list names
  names.add('Yasir');
  names.add('Abdur');
  names.add('Rohman');

  print(names);
  print(names.length);

  /**
   * Data Manipulasi menggunakan List
   * list.add(value) -> menambah data
   * list[index] -> mengambil data
   * list[index] = value -> mengubah data
   * list.removeAt(index) -> menghapus data
   */
  print(names[0]); // mengambil data pada index ke-0
  names[0] = 'Ammar'; // mengubah value pada index ke-0
  names.removeAt(2); // menghapus value pada data index ke-2
  print(names);

  // deklarasi list secara langsung
  var myName = <String>['Yasir', 'Abdur', 'Rohman'];
  print(myName);
}
