import 'package:fin_pay_ui_kit/util/util_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72.w,
      height: 38.h,
      color: Colors.transparent,
      child: ElevatedButton(
        onPressed: () {},
        child:  Text(
          "Skip",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15.w,
              color: Colors.black),
        ),
        style: ElevatedButton.styleFrom(
            primary: UtilColor.skipButton,
            elevation: 0,
          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r))


        ),
      ),
    );
  }
}
