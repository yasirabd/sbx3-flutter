void main() {
  // membuat Map
  Map<String, String> person = {};
  var product = Map<String, String>();
  var address = <String, String>{};

  print(person);
  print(product);
  print(address);

  /**
   * Manipulasi Map
   * map.length -> panjang Map
   * map[key] -> get data
   * map[key] = value -> change data
   * map.remove(key) -> remove data
   */
  var myName = <String, String>{};
  myName['depan'] = 'Yasir';
  myName['belakang'] = 'Abdur Rohman';

  print(myName['depan']); // hasilnya 'Yasir'
  myName['depan'] = 'Ammar';
  print(myName); // hasilnya {depan: Ammar, belakang: Abdur Rohman}
  myName.remove('depan'); // hasilnya {belakang: Abdur Rohman}
}
