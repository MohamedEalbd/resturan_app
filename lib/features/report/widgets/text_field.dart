import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/shared/classes/text_style.dart';

class CustomTextFieldReport extends StatelessWidget {
  const CustomTextFieldReport(
      {super.key, this.hintText, this.controller, this.onPressed});
  final String? hintText;
  final TextEditingController? controller;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 309.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppTextStyle.textStyle(
            appFontSize: 12.sp,
            appFontHeight: 14.52.sp,
            appFontWeight: FontWeight.w500,
            color: Color(0xffB1B1B1),
          ),
          suffixIcon: IconButton(
            onPressed: onPressed,
            icon: Icon(
              Icons.search,
              color: Color(0xffB1B1B1),
              weight: 20.w,
            ),
          ),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(
              color: Color(0xff7C0631),
              width: 1.w,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(
              color: Color(0xff7C0631),
              width: 1.w,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(
              color: Color(0xff7C0631),
              width: 1.w,
            ),
          ),
          // fillColor: Colors.white,
          //: true,
        ),
      ),
    );
  }
}
