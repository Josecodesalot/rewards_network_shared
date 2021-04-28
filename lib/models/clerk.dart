import 'package:flutter/cupertino.dart';
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
    return ClerkAccount(
      dateCreated: map['dateCreated'],
      email: map['email'],
      name: map['name'],
      password: map['password'],
      uid: map['uid'],
      userType: (map['userType'] as String).toUserType(),
    );
  }

  Map<String, String> toMap() {
    return {
      'dateCreated': this.dateCreated,
      'email': this.email,
      'name': this.name,
      'password': this.password,
      'uid': this.uid,
      'userType': userType.makeString(),
    };
  }
}
