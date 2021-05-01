import 'package:flutter/material.dart';

class CustomSnackBar {
  CustomSnackBar(
      this.context, {
    @required this.message,
    this.color = Colors.red,
    this.duration,
    this.icon,
  });

  final String message;
  final Color color;
  final int duration;
  final Icon icon;
  final BuildContext context;

  show() {
    final Widget snackBar = SnackBar(
        content: Text(message),
        duration: Duration(seconds: duration ?? 4),
        backgroundColor: color);
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
