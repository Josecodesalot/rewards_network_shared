import 'package:flutter/cupertino.dart';
import 'package:rewards_network_shared/models/user_type.dart';

@immutable
abstract class User{
  final String uid;
  final String name;
  final String email;
  final String password;
  final String dateCreated;
  final UserType userType;

  User({this.uid, this.name, this.email, this.password, this.dateCreated, this.userType});
}

