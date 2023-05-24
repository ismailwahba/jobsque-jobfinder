// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:graduation_app/component/createscreen/createscreen.dart';
// import 'package:graduation_app/constants/colors.dart';
// import 'package:graduation_app/constants/controller.dart';
// import 'package:graduation_app/constants/hexa_color.dart';
// import 'package:graduation_app/cubit/register/cubit/register_cubit.dart';

// class SignUpInformation extends StatefulWidget {
//   const SignUpInformation({super.key});

//   @override
//   State<SignUpInformation> createState() => _SignUpInformationState();
// }

// class _SignUpInformationState extends State<SignUpInformation> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("Already have an account?",
//                 style: TextStyle(
//                   fontSize: 16.sp,
//                   color: AppColor.textformfield,
//                   // letterSpacing: 1
//                 )),
//             TextButton(
//                 onPressed: () {},
//                 child: Text(
//                   "Login",
//                   style: TextStyle(fontSize: 14.sp, color: HexColor("#3366FF")
//                       // fontWeight: FontWeight.w500,
//                       ),
//                 ))
//           ],
//         ),
//         defaultButtonCreateScreen(
//           color: AppColor.primaryColor,
//           onPressed: () {
//             print(RegisterCubit.usernameController.text);
//             print(RegisterCubit.emailController.text);
//             print(RegisterCubit.passwordController.text);
//           },
//         ),
//         // RegisterCubit.get(context).changeButton(),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             SizedBox(
//                 width: ScreenUtil().setWidth(64.5),
//                 height: ScreenUtil().setHeight(2),
//                 child: Container(
//                   decoration: BoxDecoration(color: AppColor.borderColor),
//                 )),
//             TextButton(
//               child: Text(
//                 "Or Sign up With Account",
//                 style: TextStyle(
//                     color: HexColor("#6B7280"),
//                     fontSize: 14.sp,
//                     letterSpacing: .50.w),
//               ),
//               onPressed: () {},
//             ),
//             SizedBox(
//                 width: ScreenUtil().setWidth(64.5),
//                 height: ScreenUtil().setHeight(2),
//                 child: Container(
//                   decoration: BoxDecoration(color: AppColor.borderColor),
//                 )),
//           ],
//         ),
//       ],
//     );
//   }
// }
