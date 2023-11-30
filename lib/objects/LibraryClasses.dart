import 'package:dart_apprentice/classes/user.dart' as user;

import '../classes/user.dart';






void main() {

  User aTonyUser = User(name: 'Tony', userID: 1, email: 'tony@gmal.com');
  print(aTonyUser);

  List<User> listUsers = [aTonyUser,
    user.User(name: 'Lisa', userID: 2, email: 'list@gmail.com'),
    user.User(name: 'Maxine', userID: 3, email: 'max@gmail.com'),
    user.User(name: 'Vikky', userID: 4, email: 'vikki@gmail.com'),
    user.User(name: 'Angelo', userID: 5, email: 'angelo@gmail.com'),
    user.User(name: 'Alexis', userID: 6),
  ];


  Map<String,Object> json = {"name":"Kristin", "id": 7,"email":"kristin@yahoo.com"};
  User aKristin = User.fromJson(json);
  listUsers.add(aKristin);

  Map<String,Object> jsonKaison = {"name":"Kaison", "id": 8};
  User aKaison = User.fromJson(jsonKaison);
  listUsers.add(aKaison);

  print('print list of users');
  for (User aUser in listUsers) {
    print(aUser);
  }


}



