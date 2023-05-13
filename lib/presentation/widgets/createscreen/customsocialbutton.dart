import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:graduation_app/component/createscreen/createscreen.dart';
import 'package:graduation_app/constants/images.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        defaultButtonSocial(url: ImageAsset.google, text: "Google"),
        defaultButtonSocial(url: ImageAsset.facebook, text: "Facebook"),
      ],
    );
  }
}
