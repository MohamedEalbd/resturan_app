import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/shared/classes/text_style.dart';

class BuildButtonWidget extends StatelessWidget {
  const BuildButtonWidget({
    super.key,
    required this.txt,
    this.onTap,
    this.style,
  });

  final String txt;
  final GestureTapCallback? onTap;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 40.h,
        //padding: EdgeInsets.symmetric(horizontal: 16.w),
        decoration: BoxDecoration(
          color: Color(0xff2B3D16),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Text(
          txt,
          style:style == null ?AppTextStyle.textStyle(
            color: Colors.white,
            appFontSize: 16.sp,
            appFontWeight: FontWeight.w500,
            appFontHeight: 19.36.sp,
          ):style,
        ),
      ),
    );
  }
}
