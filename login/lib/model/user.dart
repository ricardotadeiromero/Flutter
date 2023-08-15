// ignore_for_file: public_member_api_docs, sort_constructors_first
class User {

  String _email;
  String _password;

  get email => _email;

 set email( value) => _email = value;

  get password => _password;

 set password( value) => _password = value;
  User(
     this._email,
     this._password,
  );

}
