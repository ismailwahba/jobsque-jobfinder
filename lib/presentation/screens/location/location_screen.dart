// ignore_for_file: avoid_print, unused_field, prefer_final_fields, avoid_unnecessary_containers, unnecessary_string_interpolations

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:graduation_app/presentation/widgets/location/countrys.dart';
import 'package:graduation_app/presentation/widgets/location/custombytton.dart';
import 'package:graduation_app/presentation/widgets/location/headers.dart';
import 'package:graduation_app/presentation/widgets/location/toggle.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  List<bool> isSelected = [true, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Headers(),
          Toggle(),
          CountryChoose(),
          CustomButtonLocationScreen()
        ],
      ),
    )));
  }
}
