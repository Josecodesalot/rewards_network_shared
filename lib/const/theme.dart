import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// turn into const

TextTheme get baseTheme => GoogleFonts.alataTextTheme();
TextStyle get baseStyle => GoogleFonts.alata();

Color textColor = Colors.black;
Color primary = Colors.green[400];
Color loadingGreen = Colors.green;

BorderRadius get borderRadius => BorderRadius.circular(32);
const double horizontalPadding = 24.0;

get _headline4 => baseStyle.copyWith(
  fontSize: 36,
  fontWeight: FontWeight.w600,
  letterSpacing: 1,
  color: textColor.withOpacity(.8),
);

get _subtitle1  => baseStyle.copyWith(
  fontSize: 16,
  fontWeight: FontWeight.w300,
  letterSpacing: .6
);

TextTheme get _textTheme =>
    baseTheme.copyWith(
        headline4: _headline4,
        subtitle1: _subtitle1,
    );

ThemeData get lightTheme => ThemeData(
      primaryColor: primary,
      textTheme: _textTheme,
      inputDecorationTheme: InputDecorationTheme(
        border: UnderlineInputBorder(),
        labelStyle: baseStyle.copyWith(
          fontSize: 16,
        ),
      ),
    );

