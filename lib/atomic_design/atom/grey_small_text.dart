import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class GreySmallText extends StatelessWidget {
  final String variable;
  const GreySmallText({Key? key,required this.variable}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      variable,style:TextStyle(
      color: Colors.grey,
      fontSize: 16.r,
    ),
    );
  }
}
