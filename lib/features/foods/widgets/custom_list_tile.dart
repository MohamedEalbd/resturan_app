import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:restaurant/shared/classes/text_style.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.title,
    required this.value,
    required this.newValue,
  });
  final String title;
  final bool value;
  final ValueChanged<bool> newValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppTextStyle.textStyle(
              appFontSize: 14.sp,
              appFontWeight: FontWeight.w600,
              appFontHeight: 16.94.sp,
              color: Color(0xff1E1E1E),
            ),
          ),
          Container(
            height: 30.h,
            width: 63.w,
            child: FlutterSwitch(
              activeColor: Color(0xff2B3D16),
              value: value,
              showOnOff: true,
              onToggle: (val) {
                newValue(val);
              },
            ),
          ),
        ],
      ),
    );
  }
}
