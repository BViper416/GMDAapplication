import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gmda/utils/routes.dart';
import 'package:splashscreen/splashscreen.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  
    void initstate() {
      super.initState();
      Timer(const Duration(seconds: 5), () {
        Navigator.pushReplacementNamed(context, MyRoutes.loginRoute);
        
      });
    }

    @override
    Widget build(BuildContext context) {
      return new Scaffold(
        body: Container(
          child: Image.asset(
            'assets/loading.gif',
            fit: BoxFit.cover,
          ),
        ),
      );
    }
  }

