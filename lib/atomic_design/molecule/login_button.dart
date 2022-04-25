import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginButton extends StatelessWidget {
  final String variable;
  final Color buttonColor;
  final Color fontColor;
  final Function()? onPressed;

  const LoginButton(
      {Key? key,
      required this.variable,
      required this.buttonColor,
      required this.fontColor,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.only(left:8.w,right: 3.w),
      width: 296.w,
      height: 64.h,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          variable,
          style: TextStyle(
            fontSize: 16.w,
            color: fontColor,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation:1
        ),
      ),
    );
  }
}
