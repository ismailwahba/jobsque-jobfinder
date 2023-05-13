import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:graduation_app/constants/images.dart';

class HomeIndecator extends StatelessWidget {
  const HomeIndecator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          ImageAsset.homeIndicatorImage,
        ),
      ],
    );
  }
}
