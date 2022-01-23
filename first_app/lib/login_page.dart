import "package:flutter/material.dart";

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/Image/login.png"),
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            "Welcome",
            style: TextStyle(
              fontSize: 24,
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
                  height: 20.0,
                ),
                ElevatedButton(
                  child: Text("Login"),
                  onPressed: () {},
                  style: TextButton.styleFrom(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
