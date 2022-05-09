import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageurl =
        "data:image/jpeg;base64,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";
    return Drawer(
      child: Container(
        color: Colors.deepPurpleAccent,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(color: Colors.deepPurpleAccent),
                accountName: Text("Tanish khandelwal"),
                accountEmail: Text("tanishk002@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageurl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading:
                  Icon(CupertinoIcons.profile_circled, color: Colors.white),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail, color: Colors.white),
              title: Text(
                "Email me",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
