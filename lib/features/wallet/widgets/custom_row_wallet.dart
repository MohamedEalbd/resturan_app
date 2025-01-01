
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/core/routes/routes.dart';
import 'package:restaurant/shared/extentions/navigations.dart';

import '../../../shared/classes/text_style.dart';

class CustomRowWallet extends StatelessWidget {
  const CustomRowWallet({super.key, required this.title, required this.price});

  final String title;

  final String price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.quickWithdrawScreen);
      },
      child: Container(
        decoration: BoxDecoration(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "$price",
              style: AppTextStyle.textStyle(
                appFontSize: 12.sp,
                appFontWeight: FontWeight.w600,
                appFontHeight: 14.52.sp,
                color: Colors.black,
              ),
            ),
            Text(
              title,
              style: AppTextStyle.textStyle(
                appFontSize: 10.sp,
                appFontWeight: FontWeight.w500,
                appFontHeight: 12.1.sp,
                color: Color(0xff7D7D7D),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
