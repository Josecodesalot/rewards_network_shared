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
    if ((client == null || identical(client, this.user)) &&
        (status == null || identical(status, this.status))) {
      return this;
    }

    return new UserState(
      user: client ?? client,
      status: status ?? status,
    );
  }
}
