import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/shared/classes/text_style.dart';

class DisplayBankInfo extends StatelessWidget {
  const DisplayBankInfo({
    super.key,
    required this.title,
    required this.image,
  });
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8.w,
      children: [
        Image.asset(image),
        Text(
          title,
          style: AppTextStyle.textStyle(
            appFontSize: 10.sp,
            appFontHeight: 12.1.sp,
            appFontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
