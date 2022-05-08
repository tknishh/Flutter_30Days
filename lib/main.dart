import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spogger/pages/home_page.dart';
import 'package:spogger/pages/login_page.dart';
import 'package:spogger/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: home_page(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      // debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => home_page(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
