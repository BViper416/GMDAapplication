import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GMDA")),
      drawer: Drawer(),
      body: Center(
        child: const Text("Welcome to GMDA Official Application"),
      ),
    );
  }
}
