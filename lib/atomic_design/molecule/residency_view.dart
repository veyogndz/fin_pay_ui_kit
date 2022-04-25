import 'package:fin_pay_ui_kit/atomic_design/atom/grey_small_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ResidencyView extends StatelessWidget {
  const ResidencyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> titleContents = <String>[
      "Passport",
      "Identity Card",
      "My info digital document"
    ];
    List<String> assetName = <String>[
      "assets/identity_icon.svg",
      "assets/verification_icon.svg",
      "assets/digital_icon.svg",
    ];

    return SizedBox(
      width: 311.w,
      height: 245.h,
      child: ListView.builder(
          itemCount: titleContents.length,
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 70.h,
              child: ListTile(
                leading:SizedBox(
                    width: 43.w,
                    height: 43.h,
                    child: SvgPicture.asset(assetName[index])),
                title:
                    Text(titleContents[index],
                        style: TextStyle(fontSize: 16.r)),
                subtitle: const GreySmallText(variable: "Issued in Germany"),
              ),
            );
          }),
    );
  }
}
