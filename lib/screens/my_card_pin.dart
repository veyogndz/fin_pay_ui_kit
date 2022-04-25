import 'package:fin_pay_ui_kit/atomic_design/molecule/login_button.dart';
import 'package:fin_pay_ui_kit/screens/profile.dart';
import 'package:fin_pay_ui_kit/util/util_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class MyCardPin extends StatefulWidget {
  const MyCardPin({Key? key}) : super(key: key);

  @override
  _MyCardPinState createState() => _MyCardPinState();
}

class _MyCardPinState extends State<MyCardPin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
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
              ),
            ),
          ),
          title: Row(
            children: [
              SizedBox(width: 60.w),
              Text(
                "My Cards",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.r,
                    fontWeight: FontWeight.w800),
              ),
            ],
          ),
          leadingWidth: 80.w,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 32.w, right: 32.w),
        child: Column(
          children: [
            SizedBox(height: 32.h),
            SizedBox(
              width: 357,
              height: 310,
              child: SvgPicture.asset(
                "assets/new_card.svg",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 32.h),
            Text(
              "Add a pin number to make your card more secure",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.r, color: UtilColor.dotGrey),
            ),
            SizedBox(height: 32.h),
            PinCodeTextField(
              defaultBorderColor: UtilColor.thinGrey,
              maxLength: 4,
              onTextChanged: (text) {},
              onDone: (text) {
                print("DONE $text");
              },
              pinBoxWidth: 66,
              pinBoxHeight: 66,
              pinTextStyle: const TextStyle(fontSize: 22.0),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 90.h),
            LoginButton(
                variable: "Save pin",
                buttonColor: UtilColor.difBlue,
                fontColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Profile()),
                  );
                })
          ],
        ),
      ),
    );
  }
}
