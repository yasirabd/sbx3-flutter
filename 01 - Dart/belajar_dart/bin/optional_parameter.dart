void sayHello(String firstName, [String? lastName]) {
  print('Hello World!');
  print('Hello $firstName $lastName');
}

void main() {
  sayHello('Yasir', 'Abdur Rohman');
  sayHello('Yasir');
}
