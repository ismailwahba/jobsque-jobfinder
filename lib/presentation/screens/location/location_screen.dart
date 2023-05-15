import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_app/constants/colors.dart';
import 'package:graduation_app/constants/hexa_color.dart';

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
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .18,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Where are you prefefred Location?",
                  style: TextStyle(
                      fontSize: 24.sp,
                      color: HexColor("#111827"),
                      letterSpacing: .1,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "Tell us what you’re interested in so we can\ncustomise the app for your needs.",
                  style: TextStyle(
                      fontSize: 16.sp,
                      color: HexColor("#737379"),
                      letterSpacing: .1,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          ToggleButtons(
            borderRadius: BorderRadius.circular(100.r),
            fillColor: AppColor.toggleButtons,
            selectedColor: Colors.white,
            splashColor: AppColor.toggleButtons.withOpacity(.5),
            color: AppColor.grey,
            onPressed: (int newIndex) {
              setState(() {
                for (int index = 0; index < isSelected.length; index++) {
                  if (index == newIndex) {
                    isSelected[index] = true;
                  } else {
                    isSelected[index] = false;
                  }
                }
              });
            },
            isSelected: isSelected,
            children: <Widget>[
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10, 12, 10, 12),
                child: Text(
                  "Work From Office",
                  style: TextStyle(
                      fontSize: 14.sp,
                      letterSpacing: .3,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10, 12, 10, 12),
                child: Text("Remote Work",
                    style: TextStyle(
                        fontSize: 14.sp,
                        letterSpacing: .3,
                        fontWeight: FontWeight.w500)),
              ),
            ],
          )
        ],
      ),
    )));
  }
}
