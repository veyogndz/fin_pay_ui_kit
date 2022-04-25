import 'package:fin_pay_ui_kit/atomic_design/molecule/reason_use_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../atomic_design/atom/big_text.dart';
import '../atomic_design/atom/grey_small_text.dart';

class SelectReason extends StatelessWidget {
  const SelectReason({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.h),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: InkWell(
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_sharp,
                  size: 30.r,
                  color: Colors.black,
                )),
          ),
          leadingWidth: 80.w,
        ),
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                width: 311.w,
                child: const BigText(variable: "Main reason for using FinPay")),
            SizedBox(height: 9.h),
            SizedBox(
              width: 311.w,
              child: const GreySmallText(
                  variable:
                      "We need to know this regulatory reasons. And also,we're curios!"),
            ),
            SizedBox(
              height: 40.h,
            ),
            const ReasonUseButton(variable: "Spend or save daily"),
            SizedBox(
              height: 20.h,
            ),
            const ReasonUseButton(variable: "Spend while travelling"),
            SizedBox(
              height: 20.h,
            ),
            const ReasonUseButton(variable: "Send money"),
            SizedBox(
              height: 20.h,
            ),
            const ReasonUseButton(
                variable: "Gain exposure to financial assets"),
          ],
        ),
      ),
    );
  }
}
