import '../model/user.dart';

class UserRepository {
  List<User> _users = [
    User('rtromero.sp@gmail.com','fon')
  ];

  void add(User user) {
    _users.add(user);
  }

  bool login(User user) {
    for (var u in _users) {
      if (u.email == user.email && u.password == user.password) return true;
    }
    return false;
  }
}
