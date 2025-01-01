import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/core/classes/responsive_screen.dart';
import 'package:restaurant/features/profile/widgets/custom_edit_info.dart';
import 'package:restaurant/features/profile/widgets/custom_my_lable_text.dart';
import 'package:restaurant/shared/resources/image_resources.dart';
import 'package:restaurant/shared/widgets/build_button_widget.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ResponsiveScreen.initialize(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 66.h),
                  child: Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        height: 200.h,
                        decoration: BoxDecoration(
                          color: Color(0xff7C0631),
                          //#2B3D16
                        ),
                      ),
                      Positioned(
                        bottom: -45.h,
                        child: Container(
                          height: 90.h,
                          width: 90.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.r),
                            color: Colors.white,
                          ),
                          child: ClipRRect(
                            child: Image.asset(ImageResources.picProfile),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24.h),
                CustomMyLabelText(labelText: "first name"),
                SizedBox(height: 8.h),
                CustomEditInfo(hintText: "first name"),
                SizedBox(height: 16.h),
                CustomMyLabelText(labelText: "last name"),
                SizedBox(height: 8.h),
                CustomEditInfo(hintText: "last name"),
                SizedBox(height: 16.h),
                CustomMyLabelText(labelText: "phone"),
                SizedBox(height: 8.h),
                CustomEditInfo(
                  hintText: "phone",
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(height: 16.h),
                CustomMyLabelText(labelText: "email"),
                SizedBox(height: 8.h),
                CustomEditInfo(hintText: "b*******@gmail.com"),
                SizedBox(height: ResponsiveScreen.height * 0.15),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 16.w),
                    child: BuildButtonWidget(txt: "Update"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
