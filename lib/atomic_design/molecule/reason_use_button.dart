import 'package:fin_pay_ui_kit/screens/create_pin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReasonUseButton extends StatelessWidget {
  final String variable;
  const ReasonUseButton({Key? key , required this.variable}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 311.w,
      height: 56.h,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const CreatePin()),
          );
        },
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: Colors.grey.shade50
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(variable,style:  TextStyle(
              fontSize:16.r,
              color: Colors.black
            ),),

            const Icon(Icons.arrow_forward_ios,color: Colors.grey,)
          ],
        ),
      ),
    );
  }
}
