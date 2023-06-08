import 'package:flutter/material.dart';
import 'package:graduation_app/component/app_components.dart';
import 'package:graduation_app/constants/string.dart';

class BackIcon extends StatefulWidget {
  const BackIcon({super.key});

  @override
  State<BackIcon> createState() => _BackIconState();
}

class _BackIconState extends State<BackIcon> {
  @override
  Widget build(BuildContext context) {
    return ArrowBackIcon(
      onPressed: () {
        Navigator.pushNamed(context, routeOnboardingScreen);
      },
    );
  }
}
