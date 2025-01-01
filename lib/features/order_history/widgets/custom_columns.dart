import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/shared/classes/text_style.dart';
import 'package:restaurant/shared/resources/image_resources.dart';

class CustomColumns extends StatelessWidget {
  const CustomColumns({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8.h,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: AppTextStyle.textStyle(
            appFontSize: 10.sp,
            appFontWeight: FontWeight.w500,
            appFontHeight: 12.1.sp,
            color: Colors.white,
          ),
        ),
        Row(
          spacing: 5.w,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(ImageResources.myBag),
            Text(
              "0",
              style: AppTextStyle.textStyle(
                appFontSize: 10.sp,
                appFontWeight: FontWeight.w500,
                appFontHeight: 12.1.sp,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
