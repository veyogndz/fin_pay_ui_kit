import 'package:fin_pay_ui_kit/atomic_design/atom/big_text.dart';
import 'package:fin_pay_ui_kit/atomic_design/atom/grey_small_text.dart';
import 'package:fin_pay_ui_kit/atomic_design/molecule/login_button.dart';
import 'package:fin_pay_ui_kit/atomic_design/molecule/residency_view.dart';
import 'package:fin_pay_ui_kit/atomic_design/molecule/text_button.dart';
import 'package:fin_pay_ui_kit/screens/home_screen.dart';
import 'package:fin_pay_ui_kit/util/util_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProofOfResidency extends StatelessWidget {
  const ProofOfResidency({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.h),
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
      body: Padding(
        padding: EdgeInsets.only(left: 32.w, right: 32.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BigText(variable: "Proof of residency"),
            SizedBox(
              height: 5.h,
            ),
            const GreySmallText(variable: "Prove you live in Indonesia"),
            SizedBox(
              height: 25.h,
            ),
            const GreySmallText(variable: "NATIONALITY"),
            SizedBox(
              height: 25.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 245.w,
                  child: ListTile(
                    leading: Image.network(
                      "https://files.softicons.com/download/web-icons/world-cup-flags-icons-by-custom-icon-design/png/512x512/Germany.png",
                    ),
                    title: const Text(
                      "Germany",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                 TextsButton(
                    variable: "Change",
                    color: UtilColor.difBlue,
                    color2: Colors.white,
                    variable2: "",
                  fontSize: 14.w,)
              ],
            ),
            SizedBox(
              height: 35.h,
            ),
            const GreySmallText(variable: "METHOD OF VERIFICATION"),
            SizedBox(
              height: 20.h,
            ),
            const ResidencyView(),
            SizedBox(height: 90.h,),
            LoginButton(
                variable: "Continue",
                buttonColor: UtilColor.difBlue,
                fontColor: Colors.white,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen() ));
                }),
          ],
        ),
      ),
    );
  }
}
