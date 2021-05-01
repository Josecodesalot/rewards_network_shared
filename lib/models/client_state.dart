import 'package:flutter/foundation.dart';
import 'package:rewards_network_shared/models/user.dart';
import 'package:rewards_network_shared/models/user_status.dart';

@immutable
class UserState<User>{
  UserState({this.user, this.status});

  final User user;
  final UserStatus status;

  UserState copyWith({
    User client,
    UserStatus status,
  }) {

    return UserState(
      user: client ?? client,
      status: status ?? status,
    );
  }
}
