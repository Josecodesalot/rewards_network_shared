import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class SlideAnimation extends StatelessWidget {
  SlideAnimation({
    @required this.child,
    @required this.tween,
    this.delay,
    this.duration = const Duration(milliseconds: 300),
  });

  final Tween<Offset> tween;
  final Duration duration;
  final Duration delay;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return PlayAnimation<Offset>(
      tween: tween,
      duration: duration,
      delay: delay,
      builder: (_, child, value) {
        return Transform.translate(
          offset: value,
          child: child,
        );
      },
      child: child,
    );
  }
}
