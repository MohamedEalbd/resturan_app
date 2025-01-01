import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/classes/text_style.dart';

class CustomLabelTextField extends StatelessWidget {
  const CustomLabelTextField({super.key, required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: AppTextStyle.textStyle(
              appFontSize: 10.sp,
              appFontWeight: FontWeight.w400,
              appFontHeight: 12.1.sp,
              color: Colors.black),
        ),
      ],
    );
  }
}
