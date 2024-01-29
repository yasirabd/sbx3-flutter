void main() {
  var counter = 1;
  for (; counter <= 10;) {
    print('Perulangan ke-$counter');

    counter++;
  }

  for (var counter = 1; counter <= 10; counter++) {
    print('Perulangan ke-$counter');
  }
}
