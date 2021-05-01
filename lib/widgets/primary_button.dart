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
  }) : super(key: key);

  final double margin;
  final double padding;
  final Function onTap;
  final double width;
  final double elevation;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: this.onTap,
      style: ElevatedButton.styleFrom(
        shape: StadiumBorder()
      ).copyWith(
        backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
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
            color: Colors.white,
          ),
        ),
      ),
    );
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(32),
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.white,
        borderRadius: BorderRadius.circular(32),
        child: Container(
          constraints: BoxConstraints.expand(height: 32),
          width: width,
          decoration: BoxDecoration(
            color: color ?? Theme.of(context).primaryColor.withOpacity(.8),
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.all(padding ?? 8.0),
          child: Text(
            title.toUpperCase(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              letterSpacing: 1.2,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
