import 'package:fin_pay_ui_kit/screens/add_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../util/util_colors.dart';

class MyCard extends StatefulWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  int currentTab = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        backgroundColor: UtilColor.difBlue,
        child: SvgPicture.asset("assets/float_icon.svg"),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10.r,
        child: SizedBox(
          height: 60.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SvgPicture.asset(
                          "assets/home_icon.svg",
                          color: currentTab == 0
                              ? UtilColor.difBlue
                              : UtilColor.bottomGrey,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                              fontSize: 12.r,
                              color: currentTab == 0
                                  ? UtilColor.difBlue
                                  : UtilColor.bottomGrey),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SvgPicture.asset("assets/statistic_icon.svg",
                            color: currentTab == 1
                                ? UtilColor.difBlue
                                : UtilColor.bottomGrey),
                        Text(
                          'Statistic',
                          style: TextStyle(
                              fontSize: 12.r,
                              color: currentTab == 1
                                  ? UtilColor.difBlue
                                  : UtilColor.bottomGrey),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SvgPicture.asset("assets/card_icon.svg",
                            color: currentTab == 2
                                ? UtilColor.difBlue
                                : UtilColor.bottomGrey),
                        Text(
                          'Cards',
                          style: TextStyle(
                              fontSize: 12.r,
                              color: currentTab == 2
                                  ? UtilColor.difBlue
                                  : UtilColor.bottomGrey),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SvgPicture.asset("assets/profile_icon.svg",
                            color: currentTab == 3
                                ? UtilColor.difBlue
                                : UtilColor.bottomGrey),
                        Text(
                          'Profile',
                          style: TextStyle(
                              fontSize: 12.r,
                              color: currentTab == 3
                                  ? UtilColor.difBlue
                                  : UtilColor.bottomGrey),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
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
        padding: EdgeInsets.only(left: 24.w, right: 24.w),
        child: Column(
          children: [
            SvgPicture.asset(
              "assets/cards.svg",
              fit: BoxFit.cover,
            ),
            SizedBox(height: 27.h),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: UtilColor.mycardColor,
              ),
              width: 320.w,
              height: 100.h,
              child: Padding(
                padding: EdgeInsets.only(left: 24.w),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 24.h),
                      child: Column(
                        children: [
                          Text(
                            "Card Used Frequency",
                            style: TextStyle(
                              fontSize: 14.r,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Row(
                            children: [
                              Text(
                                "70%",
                                style: TextStyle(
                                    fontSize: 24.r,
                                    fontWeight: FontWeight.w800),
                              ),
                              SizedBox(width: 8.w),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(16.r)),
                                width: 77.w,
                                height: 26.h,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.flag,
                                      size: 16,
                                      color: Colors.amber,
                                    ),
                                    SizedBox(width: 8.w),
                                    Text(
                                      "Often",
                                      style: TextStyle(
                                          fontSize: 12.r,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 32.w),
                    Image.asset(
                      "assets/vector.png",
                      width: 105.w,
                      height: 52.h,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 24.h),
            SizedBox(
              width: 320.w,
              height: 56.h,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AddCard()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Add Card",
                      style: TextStyle(
                        fontSize: 16.r,
                      ),
                    ),
                    const Icon(Icons.add),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  primary: UtilColor.difBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                elevation: 0
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
