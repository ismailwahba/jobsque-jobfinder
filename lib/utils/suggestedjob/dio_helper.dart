// import 'package:dio/dio.dart';
// import 'package:graduation_app/constants/string.dart';

// // import 'end_points.dart';

// class DioHelper {
//   static late Dio dio;

//   static init() {
//     dio = Dio(
//       BaseOptions(
//         baseUrl: Main_Url,
//         receiveDataWhenStatusError: true,
//         validateStatus: (status) {
//           return status! < 500;
//         },
//       ),
//     );
//   }

//   static Future<Response> getData({
//     required String url,
//     Map<String, dynamic>? query,
//   }) async {
//     dio.options.headers = {
//       'Authorization': 'Bearer $userToken',
//       "Content-Type": "application/json",
//     };
//     return await dio.get(
//       url,
//       queryParameters: query,
//     );
//   }

//   static Future<Response> postData({
//     required String url,
//     required Map<String, dynamic> data,
//     Map<String, dynamic>? query,
//   }) async {
//     dio.options.headers = {
//       // "Content-Type": "application/json",
//     };
//     return await dio.post(
//       url,
//       queryParameters: query,
//       data: data,
//     );
//   }

//   static Future<Response> postForm({
//     required String url,
//     required FormData data,
//     Map<String, dynamic>? query,
//   }) async {
//     // dio.options.headers = {
//     //   "Content-Type": "application/json",
//     // };
//     return await dio.post(
//       url,
//       queryParameters: query,
//       data: data,
//     );
//   }

//   static Future<Response> patchData({
//     required String url,
//     required Map<String, dynamic> data,
//     Map<String, dynamic>? query,
//     String? token,
//   }) async {
//     dio.options.headers = {
//       "Content-Type": "application/json",
//     };
//     return await dio.patch(
//       url,
//       queryParameters: query,
//       data: data,
//     );
//   }

//   static Future<Response> deleteData({
//     required String url,
//     Map<String, dynamic>? data,
//     Map<String, dynamic>? query,
//   }) async {
//     dio.options.headers = {
//       "Content-Type": "application/json",
//     };
//     return await dio.delete(
//       url,
//       data: data,
//     );
//   }
// }
