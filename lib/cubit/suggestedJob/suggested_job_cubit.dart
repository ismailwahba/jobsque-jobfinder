// ignore_for_file: avoid_print, unused_local_variable

// import 'dart:convert';

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_app/constants/string.dart';
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
  List<Data> jobs = [];
  suggestedJob() async {
    emit(SuggestedJobLoadingState());
    String token = await CacheHelper.getToken();

    print('getToken : $token');
    final response = await http.get(Uri.parse(SuggestedJob_Url), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    });
    // print("hamada:  ${response.body}");
    // print(response);
// response.headers.addAll(headers);

    // http.StreamedResponse resp =  response.send() as http.StreamedResponse;
    if (response.statusCode == 200) {
      final suggested = jsonDecode(response.body);
      final model = SuggestedModel.fromJson(suggested);
      jobs = model.dataJobs ?? [];
      emit(SuggestedJobSuccessState());

      // }
      print(" model : $model");
      print(" Name : ${model.dataJobs?.first.name}");
    } else {
      emit(SuggestedJobErrorState());
      print("Exception");
      throw Exception('Failed to load themes');
    }
  }
  // var token = CacheHelper.getData(key: "TOKEN");
  // List<SuggestedModel> jobs = [];
  // var headers = {'Authorization': 'Bearer $token'};
  // void suggestedJob() async {
  //   var headers = {'Authorization': 'Bearer $token'};
  //   var request = http.Request(
  //       'GET', Uri.parse('http://167.71.79.133/api/jobs/sugest/2'));

  //   request.headers.addAll(headers);

  // http.StreamedResponse response = await request.send();

  //   if (response.statusCode == 200) {
  //     print(await response.stream.bytesToString());
  //   } else {
  //     print(response.reasonPhrase);
  //   }
  // }

  // void getProducts() async {
  //   emit(SuggestedJobLoadingState());
  //   var headers = {'Authorization': 'Bearer $token'};
  //   request.headers.addAll(headers);

  //   http.StreamedResponse response = await request.send();

  //   var request = await http.get(Uri.parse(SuggestedJob_Url))
  //     if (value.statusCode == 200) {
  //       jobs = [];
  //       for (var element in jsonDecode(value.body)) {
  //         jobs.add(SuggestedModel.fromJson(element));
  //       }

  //       emit(SuggestedJobSuccessState());
  //     } else {
  //       emit(SuggestedJobErrorState());
  //     }

  // }
}
