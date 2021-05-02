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

  factory ClerkAccount.fromMap(map) {
    return ClerkAccount(
      dateCreated: map['dateCreated'],
      email: map['email'],
      name: map['name'],
      password: map['password'],
      uid: map['uid'],
      placeId: map['placeId'],
      userType: (map['userType'] as String).toUserType(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'dateCreated': this.dateCreated,
      'email': this.email,
      'name': this.name,
      'password': this.password,
      'uid': this.uid,
      'userType': userType.makeString(),
      'placeId': this.placeId,
    } ;
  }

  ClerkAccount copyWith({
    String dateCreated,
    String email,
    String name,
    String password,
    String uid,
    UserType userType,
    String placeId,
  }) {
    return ClerkAccount(
      dateCreated: dateCreated ?? this.dateCreated,
      email: email ?? this.email,
      name: name ?? this.name,
      password: password ?? this.password,
      uid: uid ?? this.uid,
      userType: userType ?? this.userType,
      placeId: placeId ?? this.placeId,
    );
  }
}
