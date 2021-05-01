import 'package:meta/meta.dart';

@immutable
class AuthFields{
  const AuthFields({@required this.email, @required this.password, this.name});
  final String email, password, name;


  AuthFields copyWith({String email, String password, String name}){
    return AuthFields(
      email: email??this.email,
      password: password??this.password,
      name:  name??this.name,
    );
  }
}