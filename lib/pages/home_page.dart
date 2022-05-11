import 'package:flutter/material.dart';
import 'package:spogger/widgets/drawer.dart';

class home_page extends StatelessWidget {
  final int days = 30;
  final String name = "Tedd";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Spogger",
        ),
      ),
      body: Center(
        child: Container(
          child: Text(context.runtimeType.toString()),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
