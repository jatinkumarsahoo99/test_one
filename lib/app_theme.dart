import 'package:flutter/material.dart';

enum ThemeMode { light, dark }

class ThemeModeProvider with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;

  ThemeMode get themeMode => _themeMode;

  void setThemeMode(ThemeMode mode) {
    _themeMode = mode;
    notifyListeners(); // Notify listeners of the change
  }
}





const Color _lightColorSchemePrimary = Colors.blue;
const Color _lightColorSchemeBackground = Colors.white;
const Color _darkColorSchemePrimary = Colors.white;
const Color _darkColorSchemeBackground = Colors.black;

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: _lightColorSchemePrimary,
  colorScheme: const ColorScheme.light(
    primary: _lightColorSchemePrimary,
    background: _lightColorSchemeBackground,
  ),
  textTheme: const TextTheme(
    bodyText1: TextStyle(fontSize: 16.0),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: _darkColorSchemePrimary,
  colorScheme: const ColorScheme.dark(
    primary: _darkColorSchemePrimary,
    background: _darkColorSchemeBackground,
  ),
  textTheme: const TextTheme(
    bodyText1: TextStyle(fontSize: 16.0, color: Colors.white),
  ),
);
