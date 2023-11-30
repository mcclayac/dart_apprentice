

class User {
  String name;
  int id;

  User(this.name, this.id);

  @override
  String toString() => '${this.name} - ${this.id}';
}

void cascadeObjects() {

  print('\ncascade Objects');
  User aUser1 = User('Tony', 53);
  User aUser2 = User('Maxine', 73);
  aUser2
    ..name = 'Alexis'
    ..id = 51;

  print(aUser1);
  print(aUser2);

  print('\nList Users');
  List<User> listUsers = [
    User('Lisa', 53),
    User('Mona', 53),
    User('Maria', 53),
    User('Victoria', 53),
    User('Cara', 53),
  ];
  for ( User aUser in listUsers) {
    print(aUser);
  }
}

void main() {

  cascadeObjects();
}