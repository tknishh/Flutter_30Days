import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spogger/pages/home_page.dart';
import 'package:spogger/pages/login_page.dart';
import 'package:spogger/utils/routes.dart';
import 'package:spogger/widgets/themes.dart';

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
      theme: MyTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => home_page(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
