import "package:flutter/material.dart";
import 'package:flutter_svg/svg.dart';
import 'package:gmda/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({Key? key}) : super(key: key);

  @override
  State<Signuppage> createState() => _SignuppageState();
}



class _SignuppageState extends State<Signuppage> {
 String name = "";
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });

      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.loginRoute);
      setState(() {
        changeButton = false;
      });
    }
  }





//Button route above 





  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Form(
        key: _formkey,
        child: Column(
          children: [
            SvgPicture.asset(
              "assets/image/Logo.svg",
              fit: BoxFit.cover,
            ),

            Padding(
              padding: EdgeInsets.all(0.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Welcome $name",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),
                ),
              ),
            ),

            //ignore: unnecessary_new

            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 15),
                child: Text("Let's start by", style: TextStyle(fontSize: 20)),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                child: Text("Creating your account",
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(children: [
                TextFormField(
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: "Username/Email-Id",
                        labelText: "Login-ID"),
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "Login ID cannot be empty";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      name = value;

                      setState(() {});
                    }),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Enter Password",
                      labelText: "Password"),
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "Password cannot be empty";
                    } else if (value != null && value.length < 6) {
                      return "Password length should be greater than 6";
                    }
                    return null;
                  },
                )
              ]),
            ),

            SizedBox(
              height: 20,
            ),


            InkWell(
              onTap: () => moveToHome(context),
              child: AnimatedContainer(
                duration: Duration(seconds: 5),
                width: 150,
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
                    borderRadius: BorderRadius.circular(8)),
              ),
            ),

            // ElevatedButton(
            //     onPressed: () {
            //       Navigator.pushNamed(context, MyRoutes.homeroute);
            //     },
            //     child: Text("SIGN IN",
            //         style: TextStyle(fontWeight: FontWeight.bold))
          
          ],
        ),
      ),

    );
  }
}