

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gmda/widgets/big_text.dart';
import 'package:gmda/widgets/drawer.dart';
import 'package:gmda/widgets/small_text.dart';

import 'home_page_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children : [Container(
            margin: EdgeInsets.only(top: 45, bottom: 15),
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    BigText(
                      text: "India",
                      color: Colors.green,
                    ),
                    Row(
                      children: [
                        SmallText(text: "Karnal", color: Colors.grey, size: 10),
                        Icon(Icons.arrow_drop_down),
                      ],
                    )
                  ],
                ),
                Column(children: [
                  Center(
                    child: Container(
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      // ListTile(
                      //   leading: Icon(CupertinoIcons.search),
                      // ),
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.green),
                    ),
                  ),
                  
                ],
                
                ),
               
              ],
            )),
        Expanded(child: SingleChildScrollView(child: FullPageBody(),)),
        ] ,
      

      ),
      
    );
    
    
  }
}
