import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_app/constants/images.dart';

class HomeIndecator extends StatelessWidget {
  const HomeIndecator({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      // alignment: Alignment.bottomCenter,
      ImageAsset.homeIndicatorImage, width: ScreenUtil().setWidth(134),
      height: ScreenUtil().setHeight(5),
    );
  }
}
