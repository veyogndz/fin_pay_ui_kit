import 'package:fin_pay_ui_kit/atomic_design/atom/big_text.dart';
import 'package:fin_pay_ui_kit/atomic_design/atom/grey_small_text.dart';
import 'package:fin_pay_ui_kit/atomic_design/molecule/login_button.dart';
import 'package:fin_pay_ui_kit/atomic_design/molecule/skip_button.dart';
import 'package:fin_pay_ui_kit/screens/login_page.dart';
import 'package:fin_pay_ui_kit/screens/sign_up_page.dart';
import 'package:fin_pay_ui_kit/util/util_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final controller = PageController(viewportFraction: 1.0, keepPage: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.only(top: 70.h, left: 32.w, right: 32.w),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  GreySmallText(variable: "Welcome to FinPay"),
                  SkipButton()
                ],
              ),
              SizedBox(
                height: 17.h,
              ),
              SizedBox(
                width: 311.w,
                child: const BigText(
                    variable:
                        "Managing your money is about to get a lot better."),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                width: 232.w,
                height: 320.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: PageView(
                        controller: controller,
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          SizedBox(
                            height: 232.h,
                            width: 232.h,
                            child: const Image(
                              image: AssetImage("assets/page_one.png",),
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(
                            height: 232.h,
                            width: 280.w,
                            child: const Image(
                              image: AssetImage("assets/page_two.png"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: SmoothPageIndicator(
                        controller: controller,
                        count: 2,
                        effect: const ExpandingDotsEffect(
                            dotHeight: 10,
                            dotWidth: 13,
                            radius: 15,
                            dotColor: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 70.h,
              ),
              Column(
                children: [
                  LoginButton(
                    buttonColor: UtilColor.difBlue,
                    variable: "Login",
                    fontColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  LoginButton(
                    variable: "Create an account",
                    buttonColor: UtilColor.lightGrey,
                    fontColor: UtilColor.difBlue,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpPage()));
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
