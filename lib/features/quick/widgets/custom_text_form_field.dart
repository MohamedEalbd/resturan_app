import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/classes/text_style.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.hintText, this.controller});
  final String? hintText;
  final  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.h,
      width: 358.w,
      padding: EdgeInsets.only(
        top: 10.h,
        left: 8.w,
        bottom: 10.h,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6.r),
        boxShadow: [
          BoxShadow(
            offset: Offset(2, 5),
            blurRadius: 10,
            spreadRadius: 3,
            color: Colors.grey.withOpacity(0.5),
          ),
        ],
      ),
      child: TextFormField(
        controller:controller ,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppTextStyle.textStyle(
            appFontSize: 10.sp,
            appFontWeight: FontWeight.w400,
            appFontHeight: 12.1.sp,
            color: Color(0xff7D7D7D),
          ),
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
