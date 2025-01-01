import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/classes/text_style.dart';

class CustomMyRowWallet extends StatelessWidget {
  const CustomMyRowWallet({super.key, required this.title, required this.subTitle});
  final String title;

  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "$title",
          style: AppTextStyle.textStyle(
            appFontSize: 10.sp,
            appFontWeight: FontWeight.w500,
            appFontHeight: 12.1.sp,
            color: Color(0xff7D7D7D),
          ),
        ),
        Text(
          subTitle,
          style: AppTextStyle.textStyle(
            appFontSize: 10.sp,
            appFontWeight: FontWeight.w500,
            appFontHeight: 12.1.sp,
            color: Color(0xff7C0631),
          ),
        ),
      ],
    );
  }
}
