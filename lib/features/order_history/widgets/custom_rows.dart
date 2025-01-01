import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/shared/classes/text_style.dart';

class CustomRowsOrders extends StatelessWidget {
  const CustomRowsOrders({
    super.key,
    required this.title,
    this.isTotal = false,
  });

  final String title;
  final bool isTotal;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppTextStyle.textStyle(
            appFontSize: 12.sp,
            appFontWeight: FontWeight.w400,
            appFontHeight: 14.52.sp,
            color: Colors.black,
          ),
        ),
        Text(
          "SAR 9:00",
          style: isTotal == true
              ? AppTextStyle.textStyle(
                  appFontSize: 12.sp,
                  appFontWeight: FontWeight.w400,
                  appFontHeight: 14.52.sp,
                  color: Color(0xff7C0631),
                )
              : AppTextStyle.textStyle(
                  appFontSize: 12.sp,
                  appFontWeight: FontWeight.w400,
                  appFontHeight: 14.52.sp,
                  color: Colors.black,
                ),
        )
      ],
    );
  }
}
