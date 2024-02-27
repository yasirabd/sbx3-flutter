void main() {
  var name = 'Yasir';

  void sayHello() {
    var hello = 'Hello $name';
    print(hello);
  }

  sayHello();
  //print(hello); // tidak bisa diakses
}
