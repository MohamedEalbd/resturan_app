import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/shared/classes/text_style.dart';

class CustomListTileProfile extends StatelessWidget {
  const CustomListTileProfile({
    super.key,
    this.image,
    required this.title,
    this.widget,
    this.icon,
    this.onTap,
  });
  final String? image;
  final String title;
  final Widget? widget;
  final IconData? icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.w),
        child: Container(
          //height: 40.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black38.withOpacity(0.2),
                blurRadius: 8.0,
                offset: Offset(0, 5),
                spreadRadius: 4,
              ),
            ],
          ),
          child: ListTile(
            leading: image == null
                ? Icon(
                    icon,
                    color: Colors.black,
                  )
                : Image.asset(image!),
            title: Text(
              title,
              style: AppTextStyle.textStyle(
                appFontSize: 14.sp,
                appFontWeight: FontWeight.w600,
                appFontHeight: 16.94.sp,
                color: Color(0xff1E1E1E),
              ),
            ),
            trailing: widget,
          ),
        ),
      ),
    );
  }
}
