import 'package:rewards_network_shared/models/user.dart';
import 'package:rewards_network_shared/models/user_type.dart';


class MasterAccount implements User {
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

  MasterAccount({
    this.dateCreated,
    this.email,
    this.name,
    this.password,
    this.uid,
    this.userType = UserType.master,
  });

  factory MasterAccount.fromMap(map) {
    return MasterAccount(
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
      'dateCreated': this.dateCreated,
      'email': this.email,
      'name': this.name,
      'password': this.password,
      'uid': this.uid,
      'userType': this.userType.makeString(),
    };
  }
}
