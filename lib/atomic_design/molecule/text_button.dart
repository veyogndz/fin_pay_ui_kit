import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextsButton extends StatelessWidget {
  final String variable;
  final String variable2;
  final Color color;
  final Color color2;
  final double fontSize;

  const TextsButton(
      {Key? key,
      required this.variable,
      required this.color,
      required this.color2,
      required this.variable2,
      required this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                variable.toString(),
                style: TextStyle(color: color,
                    fontSize: fontSize),
              ),
              Text(variable2.toString(),
              style: TextStyle(
                color: color2,
                fontSize: 14.w
              ),)
            ],
          )),
    );
  }
}
