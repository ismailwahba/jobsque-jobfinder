// ignore_for_file: depend_on_referenced_packages, unnecessary_import, implementation_imports, prefer_const_constructors, unused_import

import 'package:flutter/src/widgets/container.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/hexa_color.dart';
import '../onboarding/onboarding_screen.dart';
// import 'package:ecommerce_app/modules/login/login_screen.dart';

// import 'package:flutter_projectone/main.dart';
// import 'package:page_transition/page_transition.dart';

// import '../../models/bottomnav/bottomnav_screen.dart';

class Splach extends StatefulWidget {
  const Splach({super.key});

  @override
  State<Splach> createState() => _SplachState();
}

class _SplachState extends State<Splach> {
  // var gradient;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amber,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: AnimatedSplashScreen(
          splashIconSize: 400,
          duration: 3000,
          splash: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/images/Blur.png"),
                fit: BoxFit.cover,
              )),
              child: Image.asset("assets/images/Logo.png")),
          nextScreen: FindGobScreen(),
          splashTransition: SplashTransition.fadeTransition,
        ),
      ),
    );
  }
}
