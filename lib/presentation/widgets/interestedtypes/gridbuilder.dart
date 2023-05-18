import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_app/component/interestedtypesscreen/interestedtypes_screen.dart';
import 'package:graduation_app/constants/colors.dart';
import 'package:graduation_app/constants/hexa_color.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class SelectedTypes extends StatefulWidget {
  const SelectedTypes({super.key});

  @override
  State<SelectedTypes> createState() => _SelectedTypesState();
}

class _SelectedTypesState extends State<SelectedTypes> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .62,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 1.5,
          crossAxisSpacing: 12.w,
          mainAxisSpacing: 12.h,
        ),
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        itemCount: contentstypes.length,
        itemBuilder: (ctx, index) {
          return GestureDetector(
            // onSecondaryTapCancel: (){
            //   selectedIndex=!selectedIndex;
            // },
            onTap: () {
              setState(() {
                print("now selected ===>>> $index");
                selectedIndex = index;
                // showButton = true;
              });
            },

            child: GridTile(
                child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
              // width: ScreenUtil().setWidth(145),
              height: ScreenUtil().setHeight(50),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: selectedIndex == index
                      ? HexColor("#D6E4FF")
                      : HexColor("#1F0F172A"),
                  border: Border.all(
                      color: selectedIndex == index
                          ? HexColor("#3366FF")
                          : AppColor.borderColor,
                      width: 1.5.w)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: selectedIndex == index
                              ? HexColor("#3366FF")
                              : AppColor.borderColor,
                          width: 2.w),
                    ),
                    child: IconButton(
                      // iconSize: 20.w,
                      // color: AppColor.borderColor,
                      color: selectedIndex == index
                          ? HexColor("#3366FF")
                          : HexColor("#292D32"),
                      onPressed: () {},
                      icon: Image.asset(
                        "${contentstypes[index].image}",
                        // width: ScreenUtil().setWidth(50),
                      ),
                    ),
                  ),
                  Text(
                    "${contentstypes[index].title}",
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: HexColor("#111827"),
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            )),
          );
        },
      ),
    );
  }
}
