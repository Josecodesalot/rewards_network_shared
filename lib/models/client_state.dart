import 'package:flutter/foundation.dart';
import 'package:rewards_network_shared/models/user.dart';
import 'package:rewards_network_shared/models/user_status.dart';

@immutable
class UserState<User>{
  UserState({this.client, this.status});

  final User client;
  final UserStatus status;

  UserState copyWith({
    User client,
    UserStatus status,
  }) {
    if ((client == null || identical(client, this.client)) &&
        (status == null || identical(status, this.status))) {
      return this;
    }

    return new UserState(
      client: client ?? client,
      status: status ?? status,
    );
  }
}
