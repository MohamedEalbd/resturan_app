import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/shared/classes/text_style.dart';

class CustomMyLabelText extends StatelessWidget {
  const CustomMyLabelText({
    super.key,
    required this.labelText,
    this.isMarg = false,
     this.isBank = false,
  });
  final String labelText;
  final bool isMarg;
  final bool isBank;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: isMarg == true
          ? EdgeInsets.zero
          : EdgeInsets.symmetric(horizontal: 16.w),
      alignment: context.locale.languageCode == "ar"
          ? Alignment.topRight
          : Alignment.topLeft,
      child: Text(
        labelText,
        style:isBank == true? AppTextStyle.textStyle(
          appFontSize: 10.sp,
          appFontHeight: 12.1.sp,
          appFontWeight: FontWeight.w400,
          color: Color(0xff8E8E8E),
        ): AppTextStyle.textStyle(
          appFontSize: 12.sp,
          appFontHeight: 14.52.sp,
          appFontWeight: FontWeight.w400,
          color: Colors.black.withOpacity(0.50),
        ),
      ),
    );
  }
}
