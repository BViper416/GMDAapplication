import 'package:flutter/material.dart';
import 'package:gmda/pages/home_page.dart';
import 'package:gmda/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.light,
        theme: ThemeData(primarySwatch: Colors.green),
        routes: {
          "/": (context) => LoginPage(),
          "/Homepage": (context) => HomePage(),
          "/login": (context) => LoginPage(),
        });
  }
}
