import 'package:flutter/cupertino.dart';
import 'package:rewards_network_shared/models/user.dart';
import 'package:rewards_network_shared/models/user_type.dart';


class ClientAccount implements User{
  const ClientAccount({
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
    return <String,String>{
      'dateCreated': this.dateCreated,
      'email': this.email,
      'name': this.name,
      'password': this.password,
      'uid': this.uid,
      'userType': this.userType.makeString(),
    };
  }
}
