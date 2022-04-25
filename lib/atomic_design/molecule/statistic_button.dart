import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatisticsButton extends StatelessWidget {
  final String variable;
  final Function()? onPressed;
  final TextStyle textStyle;
  final ButtonStyle buttonStyle;

  const StatisticsButton(
      {Key? key,
      required this.variable,
      required this.onPressed,
      required this.textStyle,
      required this.buttonStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(1.r)),
      width: 93.w,
      height: 34.h,
      child: ElevatedButton(
          child: Text(
            variable,
            style: textStyle,
          ),
          style: buttonStyle,
          onPressed: onPressed),
    );
  }
}
