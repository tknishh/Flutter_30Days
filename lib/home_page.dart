import 'package:flutter/material.dart';

class home_page extends StatelessWidget {
  final int days = 30;
  final String name = "Tedd";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spogger"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome $days by $name!"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
