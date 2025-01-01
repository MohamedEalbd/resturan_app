import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/classes/text_style.dart';

class SelectText extends StatelessWidget {
  const SelectText({
    super.key,
    required this.title,
    required this.colorContainer,
    required this.colorText,
  });

  final String title;
  final Color colorContainer;
  final Color colorText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.h,
      //width: 78.w,
      alignment: Alignment.center,
      padding: EdgeInsets.only(right: 16.w, left: 16.w),
      decoration: BoxDecoration(
        color: colorContainer,
        borderRadius: BorderRadius.circular(6.r),
        border: Border(
          right: BorderSide(
            color:  Colors.grey.withOpacity(0.2),
            width: 1.w,
          ),
        ),
      ),
      child: Text(
        title,
        style: AppTextStyle.textStyle(
            appFontSize: 10.sp,
            appFontHeight: 12.1.sp,
            appFontWeight: FontWeight.w400,
            color: colorText),
      ),
    );
  }
}
