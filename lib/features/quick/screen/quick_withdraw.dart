import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/core/classes/responsive_screen.dart';
import 'package:restaurant/features/quick/cubit/quick_cubit.dart';
import 'package:restaurant/features/quick/widgets/custom_label_text_field.dart';
import 'package:restaurant/shared/classes/text_style.dart';
import 'package:restaurant/shared/resources/image_resources.dart';
import 'package:restaurant/shared/widgets/build_button_widget.dart';

import '../../../shared/widgets/titleAppBar.dart';
import '../../../translations/locale_keys.g.dart';
import '../../wallet/widgets/my_card.dart';
import '../../wallet/widgets/my_container.dart';
import '../widgets/custom_text_form_field.dart';

class QuickWithdrawScreen extends StatelessWidget {
  const QuickWithdrawScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ResponsiveScreen.initialize(context);
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 0,
        leading: SizedBox(),
        centerTitle: true,
        title: TitleAppBar(title: LocaleKeys.orderHistory.tr()),
      ),
      body: BlocBuilder<QuickCubit, QuickState>(
        builder: (context, state) {
          return Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: ResponsiveScreen.height,
                width: ResponsiveScreen.width,
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    MyContainer(
                      value: QuickCubit.instance.value2,
                      changeValue: (String value) {
                        QuickCubit.instance.selectCard2(value);
                      },
                      list: QuickCubit.instance.words2,
                    ),
                    SizedBox(height: 16.h),
                    GridView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisExtent: 74,
                        crossAxisSpacing: 16.w,
                        mainAxisSpacing: 8.h,
                      ),
                      children: [
                        MyCard(
                          title: 'pending withdraw',
                          price: 'SAR 5.068.00',
                        ),
                        MyCard(
                          title: 'withdrawn',
                          price: 'SAR 0.00',
                        ),
                        MyCard(
                          title: 'collected cash from customer',
                          price: 'SAR 733.23',
                        ),
                        MyCard(
                          title: 'total earning',
                          price: 'SAR 10,113.51',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 466.h,
                width: ResponsiveScreen.width,
                padding: EdgeInsets.only(
                  top: 24.h,
                  // bottom: 24.h,
                  left: 16.w,
                  right: 16.w,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16.r),
                    topLeft: Radius.circular(16.r),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(2, 5),
                      blurRadius: 10,
                      spreadRadius: 3,
                      color: Colors.black.withOpacity(0.50),
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        "withdraw amount",
                        style: AppTextStyle.textStyle(
                            appFontSize: 10.sp,
                            appFontWeight: FontWeight.w400,
                            appFontHeight: 12.1.sp,
                            color: Colors.black),
                      ),
                      SizedBox(height: 14.h),
                      Image.asset(ImageResources.casul),
                      SizedBox(height: 14.h),
                      DropdownButton(
                          isExpanded: true,
                          value: QuickCubit.instance.value3,
                          items: [
                            DropdownMenuItem(
                              value: "Card",
                              child: Text("Card"),
                            ),
                            DropdownMenuItem(
                              value: "Card2",
                              child: Text("Card2"),
                            ),
                          ],
                          onChanged: (value) {
                            QuickCubit.instance.selectCard3(value!);
                          }),
                      SizedBox(height: 2.h),
                      CustomLabelTextField(label: "Account name *"),
                      SizedBox(height: 8.h),
                      CustomTextField(hintText: "Enter your card holder name"),
                      SizedBox(height: 8.h),
                      CustomLabelTextField(label: "Account number *"),
                      SizedBox(height: 8.h),
                      CustomTextField(hintText: "Enter your account number"),
                      SizedBox(height: 8.h),
                      CustomLabelTextField(label: "Email *"),
                      SizedBox(height: 8.h),
                      CustomTextField(hintText: "Enter your account email"),
                      SizedBox(height: 8.h),
                      CustomLabelTextField(label: "Enter amount *"),
                      SizedBox(height: 8.h),
                      CustomTextField(hintText: "Enter amount"),
                      SizedBox(height: 20.h),
                      BuildButtonWidget(
                        txt: "Withdraw",
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
