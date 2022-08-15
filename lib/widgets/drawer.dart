import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
 
      child: Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Padding(padding: EdgeInsets.zero,),
            DrawerHeader(child: UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("assets/image/IMG_1644.JPG")),
      
              margin: EdgeInsets.zero,
              accountName: Text("Manish Kumar Singh"), accountEmail: Text("punekv1@gmail.com",)
              )
              ),
              ListTile(
                leading: Icon(CupertinoIcons.home),
               title: Text("Home"),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.gear_alt),
               title: Text("Settings"),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.person_2),
               title: Text("Contact Us"),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.profile_circled),
               title: Text("Profile"),
              ),
          ],
        ),
      ),
    );
  }
}
