import 'package:flutter/material.dart';
import 'package:rooheman/views/home.dart';
import 'package:rooheman/resources/theme/theme_constants.dart';
import 'package:rooheman/resources/theme/theme_manager.dart';

void main() {
  runApp(const MyApp());
}

ThemeManager _themeManager = ThemeManager();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rooheman',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
      },
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeManager.themeMode,
    );
  }
}
