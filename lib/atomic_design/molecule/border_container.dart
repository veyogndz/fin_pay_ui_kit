import 'package:fin_pay_ui_kit/util/util_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BorderContainer extends StatelessWidget {
  final SvgPicture svgPicture;

  const BorderContainer({Key? key, required this.svgPicture}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(

          width: 70.w,
          height: 70.h,
          margin:  EdgeInsets.all(19.0.r),
          padding:  EdgeInsets.all(20.r),
          decoration: BoxDecoration(
            border: Border.all(
              color: UtilColor.thinGrey
            ),
            borderRadius: BorderRadius.circular(60 ),
          ),
          //       <--- BoxDecoration here
          child: SizedBox(
              width: 24.w,
              height: 24.h,
              child: svgPicture),
        ),
      ],
    );
  }
}
