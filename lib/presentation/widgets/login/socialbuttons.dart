import 'package:flutter/material.dart';
import 'package:graduation_app/component/app_components.dart';
import 'package:graduation_app/constants/images.dart';

class SocialButtonsLogin extends StatelessWidget {
  const SocialButtonsLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DefaultSocialButtons(url: ImageAsset.google, text: "Google"),
        DefaultSocialButtons(
          url: ImageAsset.facebook,
          text: "Facebook",
        ),
      ],
    );
  }
}
