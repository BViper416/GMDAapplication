import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SmallText extends StatelessWidget {
  final Color? color;
  final String text;
  double size;
  double height;

   SmallText({Key? key, this.color, required this.text, this.size=12, this.height=1.2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines:1,
      text,
      style:TextStyle(color: color, fontWeight: FontWeight.w400, fontSize: size),
    );
  }
}
