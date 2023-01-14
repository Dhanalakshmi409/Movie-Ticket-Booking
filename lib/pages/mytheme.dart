import 'package:flutter/material.dart';
  
class Mytheme{
  static const splash = Colors.lightBlueAccent;
  static const statusBar = Color(0xFF2E3147);
  static const appBarColor = Color(0xFF222539);
  static const greenColor = Colors.green;
  static const orangecolor = Colors.orange;
  static const greyColor = Color.fromARGB(255, 170, 167, 167);
  static const blueBorder = Colors.blue;
  static const redBorder = Colors.red;
  static const redLight = Colors.redAccent;
  static const blueLight = Colors.blueAccent;
  static List<Color> redGiftGradientColors = [ const
    Color(0xFFFCCAC6).withOpacity(0.3),
    const Color(0xFFD85449).withOpacity(0.3),
  ];
  static List<Color> greenGiftGradientcolors = [ const
    Color(0xFF89D980).withOpacity(0.3),
   const Color(0xFF34Ba25).withOpacity(0.3),
  ];
  static const redTextColor = Color(0xFFD05045);
  static const greenTextColor = Color(0xFF8CC153);

  static final myLightTheme = ThemeData(
    primaryColor: splash,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextTheme(
      subtitle1: TextStyle( color: Colors.white.withOpacity(0.7),
      inherit: true),
    ),
    brightness: Brightness.light,
    backgroundColor: Colors.white,
    fontFamily: 'Poppins',
    buttonTheme: const ButtonThemeData(
      colorScheme: ColorScheme.light(
        background: splash,
        primary: splash,
      ),
    ),
    appBarTheme: const AppBarTheme(
      color: appBarColor,
    ),
  );

  static final mydarkTheme = ThemeData(
    primaryColor: splash,
    scaffoldBackgroundColor: appBarColor,
    brightness: Brightness.dark,
    backgroundColor: appBarColor,
    fontFamily: 'Poppins',
    buttonTheme: const ButtonThemeData(
      colorScheme: ColorScheme.dark(
        background: splash,
        primary: splash,
      ),
  ),
  appBarTheme: const AppBarTheme(
    color: appBarColor,
  ),
  );
}  