import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BigText extends StatelessWidget {
  final String variable;

  const BigText({Key? key, required this.variable}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      variable,
      style: TextStyle(
        color: Colors.black,
        fontSize: 32.r,
        fontWeight: FontWeight.w900,
      ),
    );
  }
}
