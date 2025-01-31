import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/shared/classes/text_style.dart';

class CustomTextFieldAuth extends StatelessWidget {
  const CustomTextFieldAuth({
    super.key,
    this.hintText,
    this.controller,
    this.keyboardType,
  });
  final String? hintText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: TextFormField(
        keyboardType: keyboardType,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppTextStyle.textStyle(
            appFontSize: 14.sp,
            appFontHeight: 16.94.sp,
            appFontWeight: FontWeight.w500,
            color: Color(0xFFB1B1B1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.r),
            borderSide: BorderSide(
              color: Color(0xff7C0631),
              width: 1.w,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.r),
            borderSide: BorderSide(
              color: Color(0xff7C0631),
              width: 1.w,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.r),
            borderSide: BorderSide(
              color: Color(0xff7C0631),
              width: 1.w,
            ),
          ),
        ),
      ),
    );
  }
}
