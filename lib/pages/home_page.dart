import 'package:flutter/material.dart';
import 'package:gmda/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GMDA")),
      drawer: MyDrawer(),
      body: Center(child: const Text("Welcome to GMDA Official Application")),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Row(
          children: [
            Column(
              children: [
                Text("Country"),
                Text("City")
              ],
            ),
            Container(
              width:45,
              height:45,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
              color: Colors.blue),
            ),
          ],
         
       )
      ),
    );
  }
}
