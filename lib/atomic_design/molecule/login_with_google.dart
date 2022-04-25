import 'package:fin_pay_ui_kit/util/util_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginWithGoogle extends StatelessWidget {
  final String variable;

  const LoginWithGoogle({Key? key, required this.variable}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 327.w,
      height: 56.h,
      child: ElevatedButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 30.w,
              height: 50.h,
              child: const Image(
                image: AssetImage("assets/google.png"),
              ),
            ),
            SizedBox(
              width: 30.w,
            ),
            Text(
              variable,
              style: TextStyle(color: Colors.black, fontSize: 20.r),
            )
          ],
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: const BorderSide(color: UtilColor.thinGrey)),
        ),
      ),
    );
  }
}
