// ignore_for_file: prefer_const_constructors, override_on_non_overriding_member

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_app/component/createscreen/createscreen.dart';
import 'package:graduation_app/component/interestedtypesscreen/interestedtypes_screen.dart';
import 'package:graduation_app/constants/hexa_color.dart';
import 'package:graduation_app/presentation/widgets/createscreen/homeindecator.dart';
import 'package:graduation_app/presentation/widgets/interestedtypes/custombutton.dart';
import 'package:graduation_app/presentation/widgets/interestedtypes/gridbuilder.dart';
import 'package:graduation_app/presentation/widgets/interestedtypes/headers.dart';

class InterestedTypesScreen extends StatefulWidget {
  const InterestedTypesScreen({super.key});

  @override
  State<InterestedTypesScreen> createState() => _InterestedTypesScreenState();
}

class _InterestedTypesScreenState extends State<InterestedTypesScreen> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              TitleInterestedScreen(),
              SelectedTypes(),
              CustomButton(),
            ],
          ),
        ),
      ),
    );
  }
}
