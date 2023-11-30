

class User {
  String _name;
  int  _userID;
  String? _email;

  User({required String name, required int userID, String? email})
    :_name = name,
     _userID = userID,
     _email = email;

  factory User.fromJson(Map<String, Object> json) {
    final name = json['name'] as String;
    final id = json['id'] as int;
    final email = (json['email'] ?? 'none') as String;
    // final email;
    // if (json['email'] == null) {
    //   email = 'none';
    // } else {
    //   email = json['email'] as String;
    // }
    return User(name: name, userID: id, email: email);
  }

  @override
  String toString() {
    if (_email == null) {
      return "id: $_userID name: $_name";
    } else {
      return "id: $_userID name: $_name | email : $_email";
    }
  }
}

