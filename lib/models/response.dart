import 'package:flutter/material.dart';

class Response<T>{
  Response({@required this.data, this.error});
  T data;
  ResponseError error;

  bool get hasError => error!=null;
}

class ResponseError{
  ResponseError(this.message);
  final String message;
}