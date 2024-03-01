import 'package:flutter/material.dart';

class AppColors {
  static const boxShadowColor = [
    BoxShadow(
      color: Color(0xFFD3D4D9),
      spreadRadius: 1,
      blurRadius: 10,
    ),
  ];
  static const appPrimaryGradientColor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
  );
  static const carouselGradientColor = LinearGradient(
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
      colors: [Color.fromARGB(200, 0, 0, 0), Color.fromARGB(0, 0, 0, 0)]);

  static const appBackgroundColor = Color(0xFFFAFAFA);
  static const appMenuBackground = Color.fromRGBO(243,241,241,1.0);
  static const appPrimaryColor = Color(0xFF262D60);
  static const appBlueColor = Color(0xFF262D60);
  static const appSecondaryColor = Color(0xFFFF8300);
  static const appOrangeColor = Color(0xFFFF8300);
  static const appLightOrangeColor = Color(0xFFF6DDCC);
  static const appGreenColor = Colors.green;
  static const appLightGrayColor = Color(0xFFE9EAEF);
  static const appMediumGrayColor = Color(0xFFD4D4D4);
  static const appGreyColor = Color(0xFF828282);
  static const appBlackColor = Color(0xFF1C1C1B);
  static const appLightBlackColor = Color(0xFF1C1C1B);
  static const appRedColor = Color(0xFFEE5A30);
  static const appNavyColor = Color(0xFF9BA7C5);
  static const appWhiteColor = Color(0xFFFFFFFF);
  static const appLightBlue = Color(0xFFF0F6FC);
  static const appTextColor = Color(0xFF757575);

  static final ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      primaryColor: appPrimaryColor,
      backgroundColor: appWhiteColor,
      buttonTheme: const ButtonThemeData(
        buttonColor: appPrimaryColor,
        disabledColor: Colors.grey,
      ));


}