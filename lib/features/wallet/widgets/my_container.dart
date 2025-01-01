import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/classes/text_style.dart';
import '../../../shared/resources/image_resources.dart';

class MyContainer extends StatelessWidget {
  const MyContainer(
      {super.key, required this.list, this.value, required this.changeValue});
  final List<String> list;
  final String? value;
  final ValueChanged<String> changeValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 104.h,
      width: 358.w,
      padding: EdgeInsets.only(
        top: 24.h,
        bottom: 24.h,
        left: 16.w,
        right: 16.w,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: Color(0xff7C0631),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(ImageResources.cash),
          SizedBox(width: 8.w),
          Column(
            spacing: 8.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "withdrawable amount",
                style: AppTextStyle.textStyle(
                  appFontSize: 10.sp,
                  appFontWeight: FontWeight.w400,
                  appFontHeight: 12.1.sp,
                  color: Colors.white,
                ),
              ),
              Text(
                "SAR 16.00",
                style: AppTextStyle.textStyle(
                  appFontSize: 16.sp,
                  appFontWeight: FontWeight.w600,
                  appFontHeight: 19.36.sp,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Spacer(),
          DropdownButton(
              iconEnabledColor: Colors.white,
              dropdownColor: Color(0xFFB7C89C),
              value: value,
              items: list.map((country) {
                return DropdownMenuItem<String>(
                  value: country,
                  child: Text(
                    country,
                    style: AppTextStyle.textStyle(
                      appFontSize: 10.sp,
                      appFontHeight: 12.1.sp,
                      appFontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                );
              }).toList(),
              //  [
              //   DropdownMenuItem(
              //     value: "withdraw",
              //     child: Text(
              //       "withdraw",

              //     ),
              //   ),
              //   DropdownMenuItem(
              //     value: "Card2",
              //     child: Text("Card2"),
              //   ),
              //   DropdownMenuItem(
              //     value: "Card3",
              //     child: Text("Card3"),
              //   ),
              //   DropdownMenuItem(
              //     value: "Card4",
              //     child: Text("Card4"),
              //   ),
              // ],
              onChanged: (value) {
                changeValue(value!);
              }),
        ],
      ),
    );
  }
}
