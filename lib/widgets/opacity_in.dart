import 'package:flutter/material.dart';

class OpacityAnimation extends StatelessWidget {
  OpacityAnimation({
    @required this.child,
    this.tween,
    this.duration = const Duration(milliseconds: 300),
  });

  final Tween<double> tween;
  final Duration duration;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: tween ?? Tween(begin: 0.0, end: 1.0),
      duration: duration,
      builder: (_, value, child) {
        return Opacity(
          opacity: value,
          child: child,
        );
      },
      child: child,
    );
  }
}