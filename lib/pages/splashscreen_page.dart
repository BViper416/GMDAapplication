import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:gmda/pages/login_page.dart';
import 'package:gmda/pages/selection_page.dart';
import 'package:page_transition/page_transition.dart';

class splashscreen extends StatelessWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedSplashScreen(
        splash: Column(
          children: [
            Image.asset(
              'assets/loading.gif',
              fit: BoxFit.contain,
            )
          ],
        ),
        nextScreen: Selectionpage(),
        splashIconSize: 400,
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.leftToRightWithFade
        // animationDuration: 5000,
      ),
    );
  }
}
