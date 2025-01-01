import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/shared/classes/text_style.dart';

class CardInfo extends StatelessWidget {
  const CardInfo({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      width: 358.w,
      padding: EdgeInsets.only(top: 13.h, bottom: 13.h, left: 8.w, right: 8.w),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.17),
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Text(
        title,
        style: AppTextStyle.textStyle(
          appFontSize: 16.sp,
          appFontHeight: 19.36.sp,
          appFontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
    );
  }
}
