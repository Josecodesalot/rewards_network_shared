import 'package:flutter/material.dart';
import 'package:rewards_network_shared/models/user_type.dart';

class Response<T> {
  Response({@required this.data, this.error});

  T data;
  ResponseError error;

  bool get hasError => error != null;
}

class ResponseError {
  ResponseError(this.message, {this.behaviour});

  final String message;
  final OnErrorBehaviour behaviour;
}

enum OnErrorBehaviour {
  showSnackBar,
  showDialog,
  custom,
}

class ResponseException {
  ResponseException({this.behaviour, @required this.message});

  final String message;
  final OnErrorBehaviour behaviour;
}

class WrongAccountException extends ResponseException {
  WrongAccountException(UserType type)
      : super(
            message: 'This account belongs to a \"${type.makeString()}\" '
                'type of account. in order use this application, '
                'you must create a new account. through this app');
}
