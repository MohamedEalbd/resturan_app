import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/shared/classes/text_style.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: context.locale.languageCode == "ar"
          ? Alignment.topRight
          : Alignment.topLeft,
      child: Text(
        title,
        style: AppTextStyle.textStyle(
          appFontSize: 10.sp,
          appFontWeight: FontWeight.w500,
          appFontHeight: 12.1.sp,
          color: Color(0xff1E1E1E).withOpacity(0.85),
        ),
      ),
    );
  }
}
