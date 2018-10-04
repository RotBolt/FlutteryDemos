import 'package:flutter/material.dart';

class DesignedTheme{

  static String backgroundImg;

  static void getBackgroundImg(String bgImg){
    backgroundImg = bgImg;
  }

  static Color primaryColorStatic;
  static Color primaryColorDarkStatic;
  static Color accentColorStatic;

  static void getPrimaryColor(Color primaryColor){
    primaryColorStatic =primaryColor;
  }
  static void getPrimaryColorDark(Color primaryColorDark){
    primaryColorDarkStatic = primaryColorDark;
  }
  static void getAccentColor(Color accentColor){
    accentColorStatic = accentColor;
  }

  static ThemeData themeSelected() {
    return ThemeData(
      primaryColor: primaryColorStatic,
      primaryColorDark: primaryColorDarkStatic,
      accentColor: accentColorStatic,
    );
  }
}
