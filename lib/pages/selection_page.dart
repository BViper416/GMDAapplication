import "package:flutter/material.dart";
import 'package:flutter_svg/svg.dart';
import 'package:gmda/pages/login_page.dart';
import 'package:gmda/pages/signup_page.dart';
import 'package:gmda/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class Selectionpage extends StatefulWidget {
  Selectionpage({Key? key}) : super(key: key);

  @override
  State<Selectionpage> createState() => _Selectionpage();
}

class _Selectionpage extends State<Selectionpage> {
  String name = "";
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();

  // moveToHome(BuildContext context) async {
  //   if (_formkey.currentState!.validate()) {
  //     setState(() {
  //       changeButton = true;
  //     });

  //     await Future.delayed(Duration(seconds: 1));
  //     await Navigator.pushNamed(context, MyRoutes.loginRoute);
  //     setState(() {
  //       changeButton = false;
  //     });
  //   }

  //   // moveToHome(BuildContext context) async{
  //   //   if (_formkey.currentState!.validate()){
  //   //     setState(() {
  //   //       changeButton = true;
  //   //     });

  //   //     await Future.delayed(Duration(seconds: 1));
  //   //     await Navigator.pushNamed(context, MyRoutes.signuproute);
  //   //     setState(() {
  //   //       changeButton = false;
  //   //     });
  //   //   }
  //   // }
  // }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Form(
        key: _formkey,
        child: Stack(
          children: [
            Container(
              child: SvgPicture.asset(
                "assets/image/background.svg",
                fit: BoxFit.fill,
              ),
            ),
            Container(
              child: Center(
                child: SvgPicture.asset("assets/image/Logo.svg",
                    height: 300, width: 300, fit: BoxFit.contain),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 140),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Welcome to GMDA',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 600, left: 40),
                child: InkWell(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: ((context) => LoginPage()))),
                  child: AnimatedContainer(
                    duration: Duration(seconds: 5),
                    width: 300,
                    height: 50,
                    //color: Colors.green,
                    alignment: Alignment.center,
                    child: changeButton
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : Text(
                            "SIGN IN",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(40)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 700, left: 40),
                child: InkWell(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: ((context) => Signuppage()))),
                  child: AnimatedContainer(
                    duration: Duration(seconds: 5),
                    width: 300,
                    height: 50,
                    //color: Colors.green,
                    alignment: Alignment.center,
                    child: changeButton
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : Text(
                            "SIGN UP",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(40)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
