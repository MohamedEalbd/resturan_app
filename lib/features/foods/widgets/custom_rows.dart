import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:restaurant/shared/classes/text_style.dart';
import 'package:restaurant/shared/resources/icons_resources.dart';

class CustomRows extends StatelessWidget {
  const CustomRows({
    super.key,
    required this.title,
    this.isTitle = false,
    this.isTwoBox = false,
    this.isMargin = false,
  });
  final String title;
  final bool isTitle;
  final bool isTwoBox;
  final bool isMargin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: isMargin == true
          ? EdgeInsets.zero
          : EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        children: [
          SizedBox(
            width: 80.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: AppTextStyle.textStyle(
                    appFontSize: 12.sp,
                    appFontWeight: FontWeight.w500,
                    appFontHeight: 14.52.sp,
                    color: Colors.black,
                  ),
                ),
                Text(
                  ":",
                  style: AppTextStyle.textStyle(
                    appFontSize: 12.sp,
                    appFontWeight: FontWeight.w500,
                    appFontHeight: 14.52.sp,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 8.w),
          if (isTwoBox == true)
            Container(
              height: 40.h,
              width: 76.w,
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 8.w, right: 8.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.r),
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
              child: Text(
                "20 Aug 24",
                style: AppTextStyle.textStyle(
                  appFontSize: 12.sp,
                  appFontWeight: FontWeight.w500,
                  appFontHeight: 14.52.sp,
                  color: Colors.black,
                ),
              ),
            ),
          if (isTwoBox == true) SizedBox(width: 8.w),
          Container(
            height: 40.h,
            width: isTitle == true ? 124.w : 38.w,
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: 8.w, right: 8.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.r),
              border: Border.all(
                color: Colors.black,
                width: 1.0,
              ),
            ),
            child: Row(
              spacing: 8.w,
              children: [
                if (isTitle == true)
                  Text(
                    "00:00 - 23:59",
                    style: AppTextStyle.textStyle(
                      appFontSize: 12.sp,
                      appFontWeight: FontWeight.w500,
                      appFontHeight: 14.52.sp,
                      color: Colors.black,
                    ),
                  ),
                SvgPicture.asset(
                  IconsResources.close,
                  height: 20.h,
                  width: 20.w,
                ),
              ],
            ),
          ),
          SizedBox(width: 8.w),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 40.h,
              width: 36.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.r),
                color: Color(0xff2B3D16),
              ),
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
