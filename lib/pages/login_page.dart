import "package:flutter/material.dart";

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        Image.asset("assets/image/logo.png"),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical:2,horizontal:15),
            child: Text("Let's start by",
                style: TextStyle(fontSize: 20)),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical:2,horizontal:15),
            child: Text("Logging in your account",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Username/Email-Id", labelText: "Username"),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Enter Password", labelText: "Password"),
            )
          ]),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: () {
              print("Welcome User");
            },
            child: Text(
              "SIGN IN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ))
      ],
    ));
  }
}
