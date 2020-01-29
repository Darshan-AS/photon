import 'package:flutter/material.dart';

final ThemeData lightTheme = _buildLightTheme();

TextTheme _buildTextTheme(TextTheme base) {
  return base.copyWith().apply(fontFamily: 'GoogleSans');
}

ThemeData _buildLightTheme() {
  final ThemeData base = ThemeData.light();

  const Color primaryColor = Color(0xFF0175c2);
  const Color secondaryColor = Color(0xFF13B9FD);

  return base.copyWith(
    brightness: Brightness.light,
    accentColorBrightness: Brightness.dark,
    primaryColor: primaryColor,
    buttonColor: primaryColor,
    indicatorColor: Colors.white,
    toggleableActiveColor: const Color(0xFF1E88E5),
    splashColor: Colors.white24,
    cardColor: Colors.white,
    textSelectionColor: primaryColor,
    splashFactory: InkRipple.splashFactory,
    accentColor: secondaryColor,
    canvasColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    backgroundColor: Colors.white,
    errorColor: const Color(0xFFB00020),
    buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
    textTheme: _buildTextTheme(base.textTheme),
    primaryTextTheme: _buildTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildTextTheme(base.accentTextTheme),
    primaryIconTheme: base.iconTheme.copyWith(color: secondaryColor),
  );
}
