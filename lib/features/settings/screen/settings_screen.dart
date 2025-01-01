import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/core/classes/responsive_screen.dart';
import 'package:restaurant/core/routes/routes.dart';
import 'package:restaurant/features/profile/widgets/custom_edit_info.dart';
import 'package:restaurant/features/profile/widgets/custom_my_lable_text.dart';
import 'package:restaurant/shared/extentions/navigations.dart';
import 'package:restaurant/shared/resources/image_resources.dart';
import 'package:restaurant/shared/widgets/build_button_widget.dart';
import 'package:restaurant/shared/widgets/leading_app_bar.dart';
import 'package:restaurant/shared/widgets/titleAppBar.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ResponsiveScreen.initialize(context);
    return Scaffold(
      appBar: AppBar(
        leading: LeadingAppBar(),
        centerTitle: true,
        title: TitleAppBar(title: "Restaurant Settings"),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 33.h, bottom: 20.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                ImageResources.logoFoods,
                height: 96.h,
                width: 1714.w,
              ),
              SizedBox(height: 64.h),
              CustomMyLabelText(labelText: "restaurant name"),
              SizedBox(height: 8.h),
              CustomEditInfo(hintText: "pizza"),
              SizedBox(height: 16.h),
              CustomMyLabelText(labelText: "contact number"),
              SizedBox(height: 8.h),
              CustomEditInfo(
                hintText: "+2************00",
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 16.h),
              CustomMyLabelText(labelText: "address"),
              SizedBox(height: 8.h),
              CustomEditInfo(
                hintText: "6th of october, giza",
              ),
              SizedBox(height: ResponsiveScreen.height * 0.30),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.w),
                  child: BuildButtonWidget(
                    txt: "Update",
                    onTap: () {
                      context.pushNamed(Routes.ruleSettingsScreen);
                    },
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
