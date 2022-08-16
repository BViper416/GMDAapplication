import 'package:flutter/material.dart';
import 'package:gmda/pages/home_page.dart';
import 'package:gmda/pages/login_page.dart';
import 'package:gmda/pages/splashscreen_page.dart';
import 'package:gmda/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';


void main() async {
  // await Firebase.initializeApp();
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        theme: ThemeData(primarySwatch: Colors.green),
        routes: {
          "/": (context) => splashscreen(),
          MyRoutes.splashroute: (context) => splashscreen(),
          MyRoutes.homeroute: (context) => HomePage(),
          MyRoutes.loginRoute: (context) => LoginPage(),
        });
  }
}
