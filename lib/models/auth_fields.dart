import 'package:meta/meta.dart';

@immutable
class AuthFields{
  const AuthFields({this.email, this.password, this.name, this.placeId});
  final String email, password, name, placeId;

  AuthFields copyWith({
    String email,
    String password,
    String name,
    String placeId,
  }) {
    return AuthFields(
      email: email ?? this.email,
      password: password ?? this.password,
      name: name ?? this.name,
      placeId: placeId ?? this.placeId,
    );
  }
}