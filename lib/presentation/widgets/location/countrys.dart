import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_app/constants/images.dart';
import 'package:graduation_app/data/models/location/location_model.dart';

class CountryChoose extends StatelessWidget {
  const CountryChoose({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .50,
      child: Wrap(
          spacing: 5.w,
          runSpacing: 7.h,
          alignment: WrapAlignment.start,
          // direction: Axis.horizontal,
          children: <Widget>[
            SizedBox(
              width: ScreenUtil().setWidth(151),
              child: LocationCountry(
                image: ImageAsset.unitedStates,
                title: "United States",
              ),
            ),
            SizedBox(
              width: ScreenUtil().setWidth(129),
              // height: ScreenUtil().setHeight(42),
              child: LocationCountry(
                image: ImageAsset.malaysia,
                title: "Malaysia",
              ),
            ),
            SizedBox(
              width: ScreenUtil().setWidth(130),
              child: LocationCountry(
                image: ImageAsset.singapore,
                title: "Singapore",
              ),
            ),
            SizedBox(
              width: ScreenUtil().setWidth(127),
              // padding: EdgeInsets.all(value),
              // height: ScreenUtil().setHeight(42),
              child: LocationCountry(
                image: ImageAsset.indonesia,
                title: "Indonesia",
              ),
            ),
            SizedBox(
              width: ScreenUtil().setWidth(129),
              child: LocationCountry(
                image: ImageAsset.philiphines,
                title: "Philiphines",
              ),
            ),
            SizedBox(
              width: ScreenUtil().setWidth(129),
              child: LocationCountry(
                image: ImageAsset.polandia,
                title: "Polandia",
              ),
            ),
            SizedBox(
              width: ScreenUtil().setWidth(102),
              child: LocationCountry(
                image: ImageAsset.china,
                title: "China",
              ),
            ),
            SizedBox(
              width: ScreenUtil().setWidth(102),
              child: LocationCountry(
                image: ImageAsset.india,
                title: "India",
              ),
            ),
            SizedBox(
              width: ScreenUtil().setWidth(102),
              child: LocationCountry(
                image: ImageAsset.canada,
                title: "Canada",
              ),
            ),
            SizedBox(
              width: ScreenUtil().setWidth(97),
              child: LocationCountry(
                image: ImageAsset.brazil,
                title: "Brazil",
              ),
            ),
            SizedBox(
              width: ScreenUtil().setWidth(118),
              child: LocationCountry(
                image: ImageAsset.vietnam,
                title: "Vietnam",
              ),
            ),
            SizedBox(
              width: ScreenUtil().setWidth(131),
              child: LocationCountry(
                image: ImageAsset.saudiArabia,
                title: "Saudi Arabia",
              ),
            ),
            SizedBox(
              width: ScreenUtil().setWidth(131),
              child: LocationCountry(
                image: ImageAsset.argentina,
                title: "Argentina",
              ),
            ),
          ]),
    );
  }
}
