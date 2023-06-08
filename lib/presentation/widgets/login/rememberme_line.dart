import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_app/constants/hexa_color.dart';
import 'package:graduation_app/cubit/login/login_cubit.dart';

class RememberMeLine extends StatefulWidget {
  const RememberMeLine({super.key});

  @override
  State<RememberMeLine> createState() => _RememberMeLineState();
}

class _RememberMeLineState extends State<RememberMeLine> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        final cubit = context.read<LoginCubit>();

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(
                  value: cubit.check,
                  onChanged: (val) {
                    setState(() {
                      cubit.check = val!;
                    });
                  },
                ),
                Text(
                  "Remember me",
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: HexColor("#1F2937"),
                      letterSpacing: .1,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Forget Password?",
                style: TextStyle(
                  fontSize: 14.sp,
                  // color: Colors.white70,
                  fontWeight: FontWeight.w400,
                  // decoration: TextDecoration.underline,
                  // decorationThickness: 2,
                  // decorationColor: Colors.blue
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
