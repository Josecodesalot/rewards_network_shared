import 'package:rewards_network_shared/models/user.dart';
import 'package:rewards_network_shared/models/user_type.dart';

class ClerkAccount implements User {
  ClerkAccount({
    this.dateCreated,
    this.email,
    this.name,
    this.password,
    this.uid,
    this.placeId,
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

  final String placeId;

  factory ClerkAccount.fromMap(Map<String, dynamic> map) {
    return ClerkAccount(
      dateCreated: map['dateCreated'],
      placeId: map['placeId'],
      email: map['email'],
      name: map['name'],
      password: map['password'],
      uid: map['uid'],
      userType: (map['userType']),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'dateCreated': dateCreated,
      'email': email,
      'name': name,
      'password': password,
      'uid': uid,
      'userType': userType,
    };
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
