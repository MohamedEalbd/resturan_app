import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/classes/text_style.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key, required this.title, required this.price});
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 74.h,
      width: 171.w,
      alignment: Alignment.center,
      padding:
      EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6.r),
        boxShadow: [
          BoxShadow(
            offset: Offset(2, 2),
            blurRadius: 10,
            spreadRadius: 5,
            color: Colors.grey.withOpacity(0.3),
          ),
        ],
      ),
      child: Column(
        spacing: 8.h,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$price",
            style: AppTextStyle.textStyle(
                appFontSize: 16.sp,
                appFontWeight: FontWeight.w600,
                appFontHeight: 19.36.sp,
                color: Color(0xff7C0631)
            ),
          ), Text(
            title,
            style: AppTextStyle.textStyle(
                appFontSize: 10.sp,
                appFontWeight: FontWeight.w400,
                appFontHeight: 12.1.sp,
                color: Color(0xff000000)
            ),
          ),
        ],
      ),
    );
  }
}
