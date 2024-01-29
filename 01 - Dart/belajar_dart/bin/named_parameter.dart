void sayHello({String? firstName, String? lastName}) {
  print('Hello $firstName $lastName');
}

void main() {
  sayHello(firstName: 'Yasir', lastName: 'Abdur Rohman');
  sayHello();
  sayHello(firstName: 'Yasir');
  sayHello(lastName: 'Abdur Rohman');
}
