import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  String name = "Krish";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First app"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days  $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
