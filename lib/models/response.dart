import 'package:flutter/material.dart';

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
