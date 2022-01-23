import 'package:first_app/home_page.dart';
import 'package:first_app/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      routes: {"/": (context) => LoginPage(), "/home": (context) => HomePage()},
    );
  }
}
