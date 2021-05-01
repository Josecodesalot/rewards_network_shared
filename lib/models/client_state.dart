import 'package:flutter/foundation.dart';
import 'package:rewards_network_shared/models/user.dart';
import 'package:rewards_network_shared/models/user_status.dart';

@immutable
class ClientState <T>{
  ClientState({this.client, this.status});

  final User client;
  final UserStatus status;

  ClientState copyWith({
    User client,
    UserStatus status,
  }) {
    if ((client == null || identical(client, this.client)) &&
        (status == null || identical(status, this.status))) {
      return this;
    }

    return new ClientState(
      client: client ?? client,
      status: status ?? status,
    );
  }
}
