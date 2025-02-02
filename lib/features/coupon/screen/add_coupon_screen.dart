import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/core/classes/responsive_screen.dart';
import 'package:restaurant/features/coupon/cubit/coupon_cubit.dart';
import 'package:restaurant/features/food_mangement/widgets/title_widget.dart';
import 'package:restaurant/shared/classes/text_style.dart';
import 'package:restaurant/shared/widgets/build_button_widget.dart';
import 'package:restaurant/shared/widgets/leading_app_bar.dart';
import 'package:restaurant/shared/widgets/textformfield.dart';
import 'package:restaurant/shared/widgets/titleAppBar.dart';
import 'package:restaurant/translations/locale_keys.g.dart';

class AddCouponScreen extends StatelessWidget {
  const AddCouponScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ResponsiveScreen.initialize(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: LeadingAppBar(),
        title: TitleAppBar(title: "Add Coupon"),
      ),
      body: BlocBuilder<CouponCubit, CouponState>(
        builder: (context, state) {
          return Container(
            margin: EdgeInsets.only(right: 16.w, left: 16.w, bottom: 28.h),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TitleWidget(title: LocaleKeys.price.tr()),
                  SizedBox(height: 8.h),
                  CustomTextFormField(
                    //prefixIcon: Image.asset(ImageResources.myDollor),
                    keyboardType: TextInputType.number,
                    hintText: "SAR ${LocaleKeys.price.tr()}",
                    valueChanged: (String value) {},
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TitleWidget(title: LocaleKeys.discount.tr()),
                          SizedBox(height: 8.h),
                          SizedBox(
                            width: 175.w,
                            child: CustomTextFormField(
                              hintText: LocaleKeys.discount.tr(),
                              valueChanged: (String value) {},
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TitleWidget(title: "Discount Type"),
                          SizedBox(height: 8.h),
                          SizedBox(
                            width: 175.w,
                            child: CustomTextFormField(
                              hintText: LocaleKeys.price.tr(),
                              valueChanged: (String value) {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  TitleWidget(title: LocaleKeys.foodType.tr()),
                  SizedBox(height: 8.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 179.w,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Radio(
                              value: 1,
                              groupValue: CouponCubit.instance.radio,
                              onChanged: (newValue) {
                                CouponCubit.instance.changeRadio(newValue!);
                              },
                            ),
                            Text(
                              LocaleKeys.veg.tr(),
                              style: AppTextStyle.textStyle(
                                appFontSize: 12.sp,
                                appFontWeight: FontWeight.w400,
                                appFontHeight: 14.52.sp,
                                color: Colors.black.withOpacity(0.50),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 179.w,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Radio(
                                value: 2,
                                groupValue: CouponCubit.instance.radio,
                                onChanged: (newValue) {
                                  CouponCubit.instance.changeRadio(newValue!);
                                }),
                            Text(
                              LocaleKeys.nonVeg.tr(),
                              style: AppTextStyle.textStyle(
                                appFontSize: 12.sp,
                                appFontWeight: FontWeight.w400,
                                appFontHeight: 14.52.sp,
                                color: Colors.black.withOpacity(0.50),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TitleWidget(title: LocaleKeys.categories.tr()),
                          SizedBox(height: 8.h),
                          SizedBox(
                            width: 175.w,
                            child: CustomTextFormField(
                              hintText: LocaleKeys.select.tr(),
                              valueChanged: (String value) {},
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TitleWidget(title: LocaleKeys.subCategory.tr()),
                          SizedBox(height: 8.h),
                          SizedBox(
                            width: 175.w,
                            child: CustomTextFormField(
                              hintText: LocaleKeys.select.tr(),
                              valueChanged: (String value) {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  TitleWidget(title: LocaleKeys.tag.tr()),
                  SizedBox(height: 8.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 294.w,
                        child: CustomTextFormField(
                          hintText: LocaleKeys.tag.tr(),
                          valueChanged: (String value) {},
                        ),
                      ),
                      SizedBox(
                        width: 56.w,
                        child: BuildButtonWidget(
                          txt: LocaleKeys.add.tr(),
                          style: AppTextStyle.textStyle(
                            appFontSize: 12.sp,
                            appFontHeight: 14.52.sp,
                            appFontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  TitleWidget(title: LocaleKeys.variations.tr()),
                  SizedBox(height: 8.h),
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        width: 109.w,
                        child: BuildButtonWidget(
                          txt: LocaleKeys.addVariation.tr(),
                          style: AppTextStyle.textStyle(
                            appFontSize: 12.sp,
                            appFontHeight: 14.52.sp,
                            appFontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  TitleWidget(title: LocaleKeys.address.tr()),
                  SizedBox(height: 8.h),
                  CustomTextFormField(
                    hintText: LocaleKeys.address.tr(),
                    valueChanged: (String value) {},
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TitleWidget(
                              title: LocaleKeys.availableTimeStarts.tr()),
                          SizedBox(height: 8.h),
                          SizedBox(
                            width: 175.w,
                            child: CustomTextFormField(
                              hintText: LocaleKeys.pickTime.tr(),
                              valueChanged: (String value) {},
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TitleWidget(title: LocaleKeys.availableTimeEnds.tr()),
                          SizedBox(height: 8.h),
                          SizedBox(
                            width: 175.w,
                            child: CustomTextFormField(
                              hintText: LocaleKeys.pickTime.tr(),
                              valueChanged: (String value) {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: ResponsiveScreen.height * 0.09),
                  BuildButtonWidget(txt: LocaleKeys.submit.tr()),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
