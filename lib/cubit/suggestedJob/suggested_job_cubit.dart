// ignore_for_file: avoid_print, unused_local_variable

// import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_app/data/models/suggestjob/suggestjob_model.dart';
// import 'package:graduation_app/constants/string.dart';
// import 'package:graduation_app/data/models/suggestjob/suggestjob_model.dart';
import 'package:graduation_app/utils/cach_helper.dart';
// import 'package:graduation_app/utils/suggestedjob/dio_helper.dart';

import 'package:http/http.dart' as http;
// import 'dart:convert' as convert;

part 'suggested_job_state.dart';

class SuggestedJobCubit extends Cubit<SuggestedJobState> {
  SuggestedJobCubit() : super(SuggestedJobInitial());
  static SuggestedJobCubit get(context) => BlocProvider.of(context);
  var token = CacheHelper.getData(key: "TOKEN");
  List<SuggestedModel> jobs = [];
  // var headers = {'Authorization': 'Bearer $token'};
  void suggestedJob() async {
    var headers = {'Authorization': 'Bearer $token'};
    var request = http.Request(
        'GET', Uri.parse('http://167.71.79.133/api/jobs/sugest/2'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }
}
