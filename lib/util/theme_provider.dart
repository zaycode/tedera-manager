import 'package:flutter/material.dart';
import 'package:tederaadmin/util/color.dart';

class CustomTheme {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: CustomColor.primary,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      titleSpacing: -5,
      iconTheme: IconThemeData(
        color: Color.fromRGBO(120, 120, 120, 1),
      ),
      backgroundColor: Colors.white,
      centerTitle: false,
      elevation: 0,
      textTheme: TextTheme(
          headline6: TextStyle(
              color: CustomColor.darkBlue,
              fontSize: 15,
              fontWeight: FontWeight.w700)),
    ),
    fontFamily: 'Montserrat',
    iconTheme: IconThemeData(
      color: Color.fromRGBO(120, 120, 120, 1),
    ),

  );
}
