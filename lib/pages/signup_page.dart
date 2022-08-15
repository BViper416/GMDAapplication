import "package:flutter/material.dart";
import 'package:flutter_svg/svg.dart';
import 'package:gmda/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:date_time_picker/date_time_picker.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Signup Page",
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(appBar: AppBar(title: const Text("Sign Up")),)
    );
  }
}

class Signuppage extends StatefulWidget {
  const Signuppage({Key? key}) : super(key: key);

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  String name = "";
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

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
            // SvgPicture.asset(
            //   "assets/image/Logo.svg",
            //   fit: BoxFit.scaleDown,
            //   height: 50, width: 50,
            // ),

            // Padding(
            //   padding: EdgeInsets.all(0.0),
            //   child: Align(
            //     alignment: Alignment.topCenter,
            //     child: Text(
            //       "Welcome $name",
            //       style: TextStyle(
            //         fontSize: 25,
            //         fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //   ),
            // ),

            //ignore: unnecessary_new

            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 50, left: 15),
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
            SizedBox(
              height: 30,
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
                        hintText: "Please enter a valid Name",
                        labelText: "Name"),
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "Name cannot be empty";
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
                    obscureText: false,
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: "Enter email address",
                        labelText: "Email-ID"),
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "please enter a valid email address";
                      }
                      {
                        return null;
                      }
                    }),
                SizedBox(
                  height: 30,
                ),
                IntlPhoneField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                  initialCountryCode: 'IN',
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                )
              ]),
            ),

            SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                controller: password,
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
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                controller: confirmpassword,
                obscureText: true,
                decoration: InputDecoration(
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "Enter Password",
                    labelText: "Confirm Password"),
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return 'Please re-enter password';
                  }
                  print(password.text);
                  print(confirmpassword.text);
                  if (password.text != confirmpassword.text) {
                    return "Password does not match";
                  }
                  return null;
                },
              ),
            ),

            SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 10),
              child: DateTimePicker(
                initialValue: '',
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
                dateLabelText: 'Date of Birth',
                onChanged: (val) => print(val),
                validator: (val) {
                  print(val);
                  return null;
                },
                onSaved: (val) => print(val),
              ),
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
                        "SIGN UP",
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
