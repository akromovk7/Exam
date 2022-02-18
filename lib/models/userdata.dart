import 'package:exam/models/usermodel.dart';

class Userdata {

  static List<UserModel> users = [
    UserModel(1, 'John', 'john@gmail.com', 'wickjohn777'),
    UserModel(2, 'Wick', 'wick@gmail.com', 'johnwick777'),
  ];

  static UserModel currentUser = users[0];
}
