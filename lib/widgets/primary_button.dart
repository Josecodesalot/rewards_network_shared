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
    this.leadingWidget = const SizedBox(),
    this.endingWidget =  const SizedBox(),
    this.enabled =true,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  }) : super(key: key);

  final Widget leadingWidget;
  final Widget endingWidget;
  final bool enabled;
  final double margin;
  final double padding;
  final Function onTap;
  final double width;
  final double elevation;
  final String title;
  final Color color;
  final Color textColor;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;


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
        child: Row(
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment,
          children: [
            leadingWidget,
            Text(
              title.toUpperCase(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                letterSpacing: 1.2,
                fontWeight: FontWeight.w600,
                color: textColor ??Colors.white,
              ),
            ),

            endingWidget
          ],
        ),
      ),
    );
  }
}
