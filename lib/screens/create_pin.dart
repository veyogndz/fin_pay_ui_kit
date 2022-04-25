import 'package:fin_pay_ui_kit/atomic_design/atom/big_text.dart';
import 'package:fin_pay_ui_kit/atomic_design/atom/grey_small_text.dart';
import 'package:fin_pay_ui_kit/atomic_design/molecule/login_button.dart';
import 'package:fin_pay_ui_kit/screens/proof_of_residency.dart';
import 'package:fin_pay_ui_kit/util/util_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class CreatePin extends StatelessWidget {
  const CreatePin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
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
                )),
          ),
          leadingWidth: 80.w,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const BigText(variable: "Create New Pin"),
            SizedBox(
              height: 6.h,
            ),
            const GreySmallText(
                variable: "Add a pin number to make your wallet more secure"),
            SizedBox(
              height: 30.h,
            ),
            PinCodeTextField(
              defaultBorderColor: UtilColor.thinGrey,
              maxLength: 4,
              onTextChanged: (text) {},
              onDone: (text) {
                print("DONE $text");
              },
              pinBoxWidth: 66,
              pinBoxHeight: 66,
              //pinBoxDecoration: ProvidedPinBoxDecoration.defaultPinBoxDecoration,
              pinTextStyle: const TextStyle(fontSize: 22.0),
              //pinTextAnimatedSwitcherTransition: ProvidedPinBoxTextAnimation.scalingTransition,
              //pinTextAnimatedSwitcherDuration: const Duration(milliseconds: 300),
              //highlightAnimation: true,
              //highlightAnimationBeginColor: Colors.black,
              //highlightAnimationEndColor: Colors.white12,
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 50.h,
            ),
            LoginButton(
                variable: "Continue",
                buttonColor: UtilColor.difBlue,
                fontColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProofOfResidency()));
                }),
          ],
        ),
      ),
    );
  }
}
