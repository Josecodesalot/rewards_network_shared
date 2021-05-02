import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  PrimaryButton({
    Key key,
    @required this.title,
    this.margin,
    this.padding,
    this.onTap,
    this.color,
    this.elevation,
    this.width,
    this.textColor,
    this.enabled =true,
  }) : super(key: key);

  final bool enabled;
  final double margin;
  final double padding;
  final Function onTap;
  final double width;
  final double elevation;
  final String title;
  final Color color;
  final Color textColor;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: enabled?onTap:(){},
      style: ElevatedButton.styleFrom(
          shape: StadiumBorder()
      ).copyWith(
        backgroundColor: MaterialStateProperty.all<Color>(enabled?color??Theme.of(context).primaryColor: Colors.grey),
      ),
      child: Container(
        constraints: BoxConstraints.expand(height: 50),
        alignment: Alignment.center,
        child: Text(
          title.toUpperCase(),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            letterSpacing: 1.2,
            fontWeight: FontWeight.w600,
            color: textColor ??Colors.white,
          ),
        ),
      ),
    );
  }
}
