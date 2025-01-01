import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/core/classes/responsive_screen.dart';
import 'package:restaurant/features/bank_info/widgets/card_info.dart';
import 'package:restaurant/features/bank_info/widgets/display_bank_info.dart';
import 'package:restaurant/features/profile/widgets/custom_my_lable_text.dart';
import 'package:restaurant/shared/resources/image_resources.dart';
import 'package:restaurant/shared/widgets/build_button_widget.dart';
import 'package:restaurant/shared/widgets/leading_app_bar.dart';
import 'package:restaurant/shared/widgets/titleAppBar.dart';

class BankInfoScreen extends StatelessWidget {
  const BankInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ResponsiveScreen.initialize(context);
    return Scaffold(
      appBar: AppBar(
        leading: LeadingAppBar(),
        centerTitle: true,
        title: TitleAppBar(title: "bank info"),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            padding: EdgeInsets.only(top: 170.h),
            alignment: Alignment.bottomLeft,
            height: ResponsiveScreen.height,
            width: ResponsiveScreen.width,
            margin: EdgeInsets.symmetric(horizontal: 16.w),
            decoration: BoxDecoration(boxShadow: []),
            child: Column(
              spacing: 16.h,
              children: [
                DisplayBankInfo(
                  title: 'bank name: bank',
                  image: ImageResources.homee,
                ),
                DisplayBankInfo(
                  title: 'branch name: USA',
                  image: ImageResources.profilee,
                ),
                DisplayBankInfo(
                  title: 'holder name: john',
                  image: ImageResources.buttons,
                ),
                DisplayBankInfo(
                  title: 'account number: 12345678910',
                  image: ImageResources.locked,
                ),
              ],
            ),
          ),
          Positioned(
            child: Container(
              height: 476.h,
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16.r),
                  topLeft: Radius.circular(16.r),
                ),
                boxShadow: [
                  BoxShadow(
                    //#00000040
                    offset: Offset(4, 2),
                    spreadRadius: 2.0,
                    blurRadius: 5,
                    color: Colors.blueGrey.withOpacity(0.7),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Image.asset(ImageResources.down),
                  SizedBox(height: 31.h),
                  CustomMyLabelText(
                    labelText: "bank name",
                    isMarg: true,
                    isBank: true,
                  ),
                  SizedBox(height: 8.h),
                  CardInfo(
                    title: 'Bank',
                  ),
                  SizedBox(height: 16.h),
                  CustomMyLabelText(
                    labelText: "branch name",
                    isMarg: true,
                    isBank: true,
                  ),
                  SizedBox(height: 8.h),
                  CardInfo(
                    title: 'USA',
                  ),
                  SizedBox(height: 16.h),
                  CustomMyLabelText(
                    labelText: "holder name",
                    isMarg: true,
                    isBank: true,
                  ),
                  SizedBox(height: 8.h),
                  CardInfo(
                    title: 'john',
                  ),
                  SizedBox(height: 16.h),
                  CustomMyLabelText(
                    labelText: "account number",
                    isMarg: true,
                    isBank: true,
                  ),
                  SizedBox(height: 8.h),
                  CardInfo(
                    title: '12345678910',
                  ),
                  SizedBox(height: 45.h),
                  BuildButtonWidget(txt: "Update"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
