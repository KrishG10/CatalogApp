import 'package:first_app/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  String name = "Krish";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First app"),
      ),
      body: Center(
        child: Text("Welcome to $days days  $name"),
      ),
      drawer: MyDrawer(),
    );
  }
}
