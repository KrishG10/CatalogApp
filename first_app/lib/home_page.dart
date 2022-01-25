import 'package:first_app/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  String name = "Krish";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Catalog app",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Center(
        child: Text("Welcome to $days days  $name"),
      ),
      drawer: MyDrawer(),
    );
  }
}
