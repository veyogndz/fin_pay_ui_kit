import 'package:fin_pay_ui_kit/atomic_design/molecule/login_button.dart';
import 'package:fin_pay_ui_kit/screens/country_of_residence.dart';
import 'package:fin_pay_ui_kit/util/util_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../atomic_design/atom/big_text.dart';
import '../atomic_design/atom/grey_small_text.dart';
import '../atomic_design/molecule/my_text_form_field.dart';
import '../atomic_design/molecule/login_with_google.dart';
import '../atomic_design/molecule/text_button.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();
  bool enemy = false;

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
              ),
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
            const BigText(variable: "Getting Started"),
            SizedBox(height: 8.h),
            const GreySmallText(variable: "Create an account to continue!"),
            SizedBox(
              height: 20.h,
            ),
            MyTextFormField(
              phoneOrPassword: "Full Name",
              icon: SvgPicture.asset("assets/user_icon.svg",
                  width: 25.w, height: 25.h),
              controller: nameController,
              textType: TextInputType.text,
            ),
            SizedBox(height: 20.h),
            MyTextFormField(
              phoneOrPassword: "Phone Number",
              icon: SvgPicture.asset("assets/call_icon.svg",
                  width: 25.w, height: 25.h),
              controller: phoneController,
              textType: TextInputType.phone,
            ),
            SizedBox(height: 20.h),
            MyTextFormField(
              phoneOrPassword: "Password",
              icon: SvgPicture.asset("assets/lock_icon.svg",
                  width: 25.w, height: 25.h),
              controller: passwordController,
              textType: TextInputType.visiblePassword,
            ),
            SizedBox(height: 15.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Transform.scale(
                  scale: 1.5.r,
                  child: Checkbox(
                      //activeColor: Colors.orange,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(6.0),
                        ),
                      ),
                      tristate: false,
                      value: enemy,
                      splashRadius: 30,
                      onChanged: (bool? b) {
                        setState(() {
                          enemy = b!;
                        });
                      }),
                ),
                SizedBox(
                  width: 5.w,
                ),
                SizedBox(
                  width: 255.w,
                  child: Text(
                    "By creating an account, you agree to our Terms and Conditions",
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 15.r,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            LoginButton(
                variable: "Sign Up",
                buttonColor: UtilColor.difBlue,
                fontColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CountryOfResidence()),
                  );
                }),
            SizedBox(
              height: 10.h,
            ),
            TextsButton(
              variable: "Already have an account?",
              variable2: " Login",
              color: Colors.grey,
              color2: UtilColor.difBlue,
              fontSize: 14.w,
            ),
            SizedBox(
              height: 35.h,
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: Divider(
                  thickness: 1.h,
                  color: Colors.grey,
                )),
                const GreySmallText(variable: "Or continue with"),
                Expanded(
                  child: Divider(
                    thickness: 1.h,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            const LoginWithGoogle(variable: "Continue With Google"),
          ],
        ),
      ),
    );
  }
}
