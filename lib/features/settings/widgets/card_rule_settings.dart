import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/shared/classes/text_style.dart';

class CardRuleSettings extends StatelessWidget {
  const CardRuleSettings({
    super.key,
    required this.title,
    this.isLight = false,
  });
  final String title;
  final bool isLight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 171.w,
      alignment: context.locale.languageCode == "ar"
          ? Alignment.centerRight
          : Alignment.centerLeft,
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.r),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(1, 6),
            blurRadius: 10,
            spreadRadius: 3,
            color: Colors.black12,
          ),
        ],
      ),
      child: Text(
        title,
        style: AppTextStyle.textStyle(
          appFontSize: 12.sp,
          appFontHeight: 14.52.sp,
          appFontWeight: FontWeight.w500,
          color:
              isLight == true ? Colors.black.withOpacity(0.50) : Colors.black,
        ),
      ),
    );
  }
}
