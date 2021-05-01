import 'package:rewards_network_shared/models/user.dart';
import 'package:rewards_network_shared/models/user_type.dart';

class ClerkAccount implements User {
  ClerkAccount({
    this.dateCreated,
    this.email,
    this.name,
    this.password,
    this.uid,
    this.userType = UserType.clerk,
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

  factory ClerkAccount.fromMap(Map<String, dynamic> map) {
    return new ClerkAccount(
      dateCreated: map['dateCreated'] as String,
      email: map['email'] as String,
      name: map['name'] as String,
      password: map['password'] as String,
      uid: map['uid'] as String,
      userType: map['userType'] as UserType,
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'dateCreated': this.dateCreated,
      'email': this.email,
      'name': this.name,
      'password': this.password,
      'uid': this.uid,
      'userType': this.userType,
    } as Map<String, dynamic>;
  }

  ClerkAccount copyWith({
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

    return new ClerkAccount(
      dateCreated: dateCreated ?? this.dateCreated,
      email: email ?? this.email,
      name: name ?? this.name,
      password: password ?? this.password,
      uid: uid ?? this.uid,
      userType: userType ?? this.userType,
    );
  }
}
