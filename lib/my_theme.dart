import 'package:flutter/material.dart';

class MyTheme{
  ///Colors
  ///Fonts
  ///Light Mode
  ///Dark Mode
 static Color primaryLight = Color(0xffB7935F);
 static Color blackColor = Color(0xff242424);
  static Color whiteColor = Color(0xffffffff);
 static ThemeData LightTheme = ThemeData(
  primaryColor: primaryLight,
  scaffoldBackgroundColor: Colors.transparent,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    iconTheme: IconThemeData(
      color: blackColor,
    )
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: primaryLight,
    selectedItemColor: blackColor,
    unselectedItemColor: whiteColor,
  ),
  textTheme: TextTheme(
    titleLarge: TextStyle(
      fontSize: 33,
      fontWeight: FontWeight.bold,
      color: blackColor,
    ),
    titleMedium: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w500,
      color: blackColor,
    ),
    titleSmall: TextStyle(
      fontSize: 23,
      fontWeight: FontWeight.w500,
      color: blackColor,
    )
  ),
 );
}
