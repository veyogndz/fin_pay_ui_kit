import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../atom/grey_small_text.dart';
class FakeListTile extends StatelessWidget {
  const FakeListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: 343.w,
      height: 76.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset("assets/apple.svg",
                  width: 40.w, height: 40.h),
              SizedBox(width: 16.w,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Apple Store",style: TextStyle(
                      fontSize: 14.r,
                      fontWeight: FontWeight.w500
                  ),),
                  SizedBox(height: 5.h,),
                  Row(
                    children: [
                      Image.asset("assets/red_arrow.png"),
                      const GreySmallText(variable: " iPhone 12 Case")
                    ],
                  )
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Text("-\$120,90",style: TextStyle(fontSize: 14.r,fontWeight:FontWeight.w500),),
              SizedBox(
                height: 5.h,
              ),
              const GreySmallText(variable: "09:39 AM")
            ],
          )
        ],
      ),
    );
  }
}
