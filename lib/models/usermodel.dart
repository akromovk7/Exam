class UserModel {
  int? _id;
  String? _name;
  String? _email;
  String? _password;

  UserModel(int id, String name, String email, String password) {
    _id = id;
    _name = name;
    _email = email;
    _password = password;
  }

  int? get id => _id;

  get name => _name;

  get email => _email;

  get password => _password;
}
