import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyTextFormField extends StatefulWidget {
  final String phoneOrPassword;
  final SvgPicture icon;
  final TextEditingController controller;
  final TextInputType textType;

  const MyTextFormField(
      {Key? key,
      required this.phoneOrPassword,
      required this.icon,
      required this.controller,
      required this.textType})
      : super(key: key);

  @override
  _MyTextFormFieldState createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<MyTextFormField> {
  var phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 22.0),
        icon: widget.icon,
        filled: true,
        fillColor: Colors.grey.shade50,
        hintText: widget.phoneOrPassword,
        hintStyle: TextStyle(
          color: Colors.grey, // <-- Change this
          fontSize: 16.w,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(10.7),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(10.7),
        ),
      ),
      keyboardType: widget.textType,
      controller: widget.controller,
    );
  }
}
