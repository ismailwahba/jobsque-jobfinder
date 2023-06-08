// ignore_for_file: file_names, unused_local_variable, prefer_const_constructors, unnecessary_string_escapes, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_app/component/app_components.dart';

import 'package:graduation_app/component/suggestedjob/suggestlobcomponents_screen.dart';
// import 'package:graduation_app/component/suggestedjob/suggestlobcomponents_screen.dart';

import 'package:graduation_app/cubit/suggestedJob/suggested_job_cubit.dart';
import 'package:graduation_app/data/models/suggestjob/suggestjob_model.dart';
import 'package:graduation_app/presentation/widgets/suggestedscreen/headerssection.dart';
// import 'package:json_annotation/json_annotation.dart';

class SuggestJobScreen extends StatefulWidget {
  const SuggestJobScreen({super.key});

  @override
  State<SuggestJobScreen> createState() => _SuggestJobScreenState();
}

class _SuggestJobScreenState extends State<SuggestJobScreen> {
  SuggestedModel? item;
  // HttpHandler httpHandler =HttpHandler();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        child: SingleChildScrollView(
          // physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .18,
              child: HeadersSection(),
            ),
            Row(
              children: [defaultSearchForm()],
            ),

            SizedBox(child: SuggestedJobgroup()),

            SizedBox(child: RecentJobGroup()),

            // ),
          ]),
        ),
      )),
    );
  }
}
