import 'package:fin_pay_ui_kit/atomic_design/molecule/my_list_view.dart';
import 'package:fin_pay_ui_kit/screens/select_reason.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CountryOfResidence extends StatefulWidget {
  const CountryOfResidence({Key? key}) : super(key: key);

  @override
  State<CountryOfResidence> createState() => _CountryOfResidenceState();
}

class _CountryOfResidenceState extends State<CountryOfResidence> {
  var countryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75.h),
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
        padding:  EdgeInsets.only(left: 22.0.h),
        child: Column(
          children: [
            SizedBox(
              width:332.w,
              height: 56.h,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Select Country",
                  hintStyle: TextStyle(
                    color: Colors.grey, // <-- Change this
                    fontSize: 17.r,
                  ),
                  contentPadding:  EdgeInsets.symmetric(vertical: 22.0.r),
                  filled: true,
                  fillColor: Colors.grey.shade50,
                  prefixIcon:  Icon(Icons.search_rounded,size: 28.r,),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10.7),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10.7),
                  ),
                ),

              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              width: 347.w,
              height: 536.h,
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SelectReason()),
                    );},
                  child:const MyListView()),
            ),
          ],
        ),
      ),
    );
  }
}