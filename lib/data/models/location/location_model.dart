// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:multi_select_flutter/util/multi_select_item.dart';
// class LocationCountry extends StatefulWidget {
//   const LocationCountry({super.key});
// String? image;
//   String? title;

// class _LocationCountry extends State<MyWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
// // class LocationCountry {
// //   String? image;
// //   String? title;
// //   LocationCountry({
// //     this.image,
// //     this.title,
// //   });

// ignore_for_file: must_be_immutable, unused_field, unused_element, use_function_type_syntax_for_parameters, non_constant_identifier_names, avoid_types_as_parameter_names

// }
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'package:graduation_app/constants/hexa_color.dart';

class LocationCountry extends StatefulWidget {
  String? image;
  String? title;
  LocationCountry({super.key, this.image, this.title});
  @override
  State<LocationCountry> createState() => _LocationCountryState();
}

class _LocationCountryState extends State<LocationCountry> {
  var _isSelectedCountry = false;
  @override
  Widget build(BuildContext context) {
    return FilterChip(
        // labelPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        // labelStyle: TextStyle(),

        label: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "${widget.image}",
            ),
            Text(
              "${widget.title}",
              style: TextStyle(
                  color: HexColor("#111827"),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        selected: _isSelectedCountry,
        backgroundColor: HexColor("#E5E7EB"),
        selectedColor: HexColor("#3366FF"),
        // iconTheme: IconThemeData(size: 15.sp),
        // labelStyle: TextStyle(fontSize: 14.sp),
        padding: EdgeInsets.symmetric(vertical: 10.h),
        showCheckmark: false,
        // labelPadding: ,
        onSelected: (bool isSelectedCountry) {
          setState(() {
            _isSelectedCountry = isSelectedCountry;
          });
        });
  }
}
