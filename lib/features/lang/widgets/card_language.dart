import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/shared/classes/text_style.dart';

class CardLanguage extends StatelessWidget {
  const CardLanguage({super.key, required this.lang, required this.image});
  final String lang;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 136.h,
      width: 171.w,
      padding: EdgeInsets.only(
        top: 6.h,
        right: 56.w,
        bottom: 6.h,
        left: 56.w,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: Color(0xffFEFCE0),
      ),
      child: Column(
        spacing: 32.h,
        children: [
          Image.asset(image),
          Text(
           lang,
            style: AppTextStyle.textStyle(
              appFontSize: 16.sp,
              appFontHeight: 19.36.sp,
              appFontWeight: FontWeight.w500,
              color: Color(0xff1E1E1E),
            ),
          )
        ],
      ),
    );
  }
}
