import 'package:rewards_network_shared/models/user.dart';
import 'package:rewards_network_shared/models/user_type.dart';

class ClientAccount implements User {
  ClientAccount({
    this.dateCreated,
    this.email,
    this.name,
    this.password,
    this.uid,
    this.userType = UserType.client,
  });

  @override
  final String dateCreated;

  @override
  final String email;

  @override
  final String name;

  @override
  final String password;

  @override
  final String uid;

  @override
  final UserType userType;

  factory ClientAccount.fromMap(map) {
    return ClientAccount(
      dateCreated: map['dateCreated'],
      email: map['email'],
      name: map['name'],
      password: map['password'],
      uid: map['uid'],
      userType: (map['userType'] as String).toUserType(),
    );
  }

  Map<String, dynamic> toMap() {
    return <String, String>{
      'dateCreated': dateCreated,
      'email': email,
      'name': name,
      'password': password,
      'uid': uid,
      'userType': userType.makeString(),
    };
  }

  ClientAccount copyWith({
    String dateCreated,
    String email,
    String name,
    String password,
    String uid,
    UserType userType,
  }) {
    if ((dateCreated == null || identical(dateCreated, this.dateCreated)) &&
        (email == null || identical(email, this.email)) &&
        (name == null || identical(name, this.name)) &&
        (password == null || identical(password, this.password)) &&
        (uid == null || identical(uid, this.uid)) &&
        (userType == null || identical(userType, this.userType))) {
      return this;
    }

    return ClientAccount(
      dateCreated: dateCreated ?? dateCreated,
      email: email ?? email,
      name: name ?? name,
      password: password ?? password,
      uid: uid ?? uid,
      userType: userType ?? userType,
    );
  }
}
