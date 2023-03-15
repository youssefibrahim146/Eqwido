import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData lightAppTheme() {
  return ThemeData(
    primaryColor: kprimaryColor,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: kSecondaryColor,
    background: kSecondaryColor
    ),
    buttonTheme: const ButtonThemeData(
      shape: StadiumBorder(),
      buttonColor: kSecondaryColor,
    ),
    appBarTheme: const AppBarTheme(
      color: kprimaryColor
    ),
  );
}

ThemeData darkAppTheme() {
  return ThemeData.dark();
}
