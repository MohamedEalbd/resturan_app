import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:restaurant/core/classes/responsive_screen.dart';
import 'package:restaurant/shared/classes/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonAuth extends StatelessWidget {
  const CustomButtonAuth({super.key, required this.title, this.onPressed});
  final String title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    ResponsiveScreen.initialize(context);
    return MaterialButton(
      height: 40.h,
      minWidth: ResponsiveScreen.width,
      color: Color(0xff2B3D16),
      padding: EdgeInsets.symmetric(vertical: 10.h),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.r),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: AppTextStyle.textStyle(
          appFontSize: 16.sp,
          appFontHeight: 19.36.sp,
          appFontWeight: FontWeight.w500,
          color: Color(0xffFFFFFF),
        ),
      ),
    );
  }
}
