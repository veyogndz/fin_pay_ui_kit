import 'package:fin_pay_ui_kit/atomic_design/atom/big_text.dart';
import 'package:fin_pay_ui_kit/atomic_design/atom/grey_small_text.dart';
import 'package:fin_pay_ui_kit/atomic_design/molecule/my_text_form_field.dart';
import 'package:fin_pay_ui_kit/atomic_design/molecule/login_button.dart';
import 'package:fin_pay_ui_kit/atomic_design/molecule/login_with_google.dart';
import 'package:fin_pay_ui_kit/atomic_design/molecule/text_button.dart';
import 'package:fin_pay_ui_kit/util/util_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();

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
              icon: Icon(Icons.arrow_back_sharp,size: 30.r,color: Colors.black,)
            ),
          ),
          leadingWidth: 80.w,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(right: 32.w, left: 32.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BigText(variable: "Hi, Welcome Back!"),
            SizedBox(height: 5.h),
            const GreySmallText(variable: "Sign in to your account"),
            SizedBox(
              height: 36.h,
            ),
            MyTextFormField(
              phoneOrPassword: "Phone Number",
              icon: SvgPicture.asset("assets/call_icon.svg",width: 25.w,height: 25.h,),
              controller: phoneController,
              textType: TextInputType.phone,
            ),
            SizedBox(height: 20.h),
            MyTextFormField(
              phoneOrPassword: "Password",
              icon: SvgPicture.asset("assets/lock_icon.svg",width: 25.w,height: 25.h),
              controller: passwordController,
              textType: TextInputType.visiblePassword,
            ),
            SizedBox(height: 10.h),
             TextsButton(
              variable: "Forgot Password?",
              variable2: "",
              color: UtilColor.difBlue,
              color2: UtilColor.difBlue,
               fontSize: 14.w,
            ),
            SizedBox(
              height: 32.h,
            ),
            Column(
              children: [
                LoginButton(
                    variable: "Login",
                    buttonColor: UtilColor.difBlue,
                    fontColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                      );
                    }),
                SizedBox(
                  height: 20.h,
                ),
                 TextsButton(
                  variable: "Don't have account? ",
                  variable2: "Sign Up",
                  color: Colors.grey,
                  color2: UtilColor.difBlue,
                   fontSize: 14.w,
                ),
              ],
            ),
            SizedBox(
              height: 90.h,
            ),
            SizedBox(
              width: 311.w,
              height: 60.h,
              child: Row(children: <Widget>[
                Expanded(
                    child: Divider(
                  thickness: 1.h,
                  color: UtilColor.thinGrey,
                )),
                const GreySmallText(variable: "  Or login with  "),
                Expanded(
                    child: Divider(
                  thickness: 1.h,
                  color: UtilColor.thinGrey,
                )),
              ]),
            ),
            const LoginWithGoogle(variable: " Login with Google"),
          ],
        ),
      ),
    );
  }
}
