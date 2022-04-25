import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SettingText extends StatelessWidget {
  final String variable;
  const SettingText({Key? key,required this.variable}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      variable,
      style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 16.r,
        color: Colors.black
      ),
    );
  }
}
