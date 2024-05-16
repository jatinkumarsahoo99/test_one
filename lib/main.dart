import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, _) {
          return MaterialApp(
            theme: themeProvider.themeData,
            home: MyHomePage(),
          );
        },
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Provider Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            themeProvider.toggleTheme();
          },
          child: Text('Toggle Theme'),
        ),
      ),
    );
  }
}

class ThemeProvider with ChangeNotifier {
  ThemeData _lightTheme = ThemeData.light();
  ThemeData _darkTheme = ThemeData.dark();

  ThemeData _currentTheme = ThemeData.light();

  ThemeData get themeData => _currentTheme;

  void toggleTheme() {
    _currentTheme = (_currentTheme == _lightTheme) ? _darkTheme : _lightTheme;
    notifyListeners();
  }
}
