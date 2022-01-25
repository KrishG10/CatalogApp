import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Krish Gupta"),
                accountEmail: Text("guptaKrish40@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  // ignore: unnecessary_const
                  backgroundImage: const AssetImage("assets/Image/krish.jpg"),
                ),
              ),
            ),
            // ignore: prefer_const_constructors
            ListTile(
              // ignore: prefer_const_constructors
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: const Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            // ignore: prefer_const_constructors
            ListTile(
              // ignore: prefer_const_constructors
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              // ignore: prefer_const_constructors
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                // ignore: prefer_const_constructors
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            // ignore: prefer_const_constructors
            ListTile(
              // ignore: prefer_const_constructors
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              // ignore: prefer_const_constructors
              title: Text(
                "Email me",
                textScaleFactor: 1.2,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
