import 'package:first_app/utils/routes.dart';
import "package:flutter/material.dart";

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/Image/login.png"),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "Welcome",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                    hintText: " Enter your Username",
                    labelText: "Username",
                  )),
                  TextFormField(
                      obscureText: true,
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        hintText: " Enter Password",
                        labelText: "Password",
                      )),
                  const SizedBox(
                    height: 40.0,
                  ),
                  ElevatedButton(
                    child: const Text("Login"),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    style:
                        TextButton.styleFrom(minimumSize: const Size(150, 45)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
