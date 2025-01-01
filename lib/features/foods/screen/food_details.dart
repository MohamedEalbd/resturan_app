import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/features/foods/cubit/foods_cubit.dart';
import 'package:restaurant/features/foods/widgets/custom_list_tile.dart';
import 'package:restaurant/features/foods/widgets/custom_rows.dart';
import 'package:restaurant/shared/classes/text_style.dart';
import 'package:restaurant/shared/resources/image_resources.dart';
import 'package:restaurant/shared/widgets/leading_app_bar.dart';
import 'package:restaurant/shared/widgets/titleAppBar.dart';
import 'package:restaurant/translations/locale_keys.g.dart';

class FoodDetails extends StatelessWidget {
  const FoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: LeadingAppBar(),
        title: TitleAppBar(title: LocaleKeys.foodDetails.tr()),
      ),
      body: BlocBuilder<FoodsCubit, FoodsState>(
        builder: (context, state) {
          return Container(
            margin: EdgeInsets.only(top: 16.h, bottom: 16.h),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.r),
                          child: Image.asset(
                            ImageResources.pizza,
                            //height: 64.h,
                            //width: 64.w,
                          ),
                        ),
                        SizedBox(width: 16.w),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "meat pizza",
                              style: AppTextStyle.textStyle(
                                appFontSize: 14.sp,
                                appFontWeight: FontWeight.w600,
                                appFontHeight: 16.94.sp,
                                color: Color(0xff1E1E1E),
                              ),
                            ),
                            SizedBox(height: 8.h),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: "${LocaleKeys.price.tr()}: ",
                                    style: AppTextStyle.textStyle(
                                      appFontSize: 12.sp,
                                      appFontWeight: FontWeight.w600,
                                      appFontHeight: 14.52.sp,
                                      color:
                                          Color(0xff1E1E1E).withOpacity(0.50),
                                    ),
                                  ),
                                  TextSpan(
                                    text: " 210.00",
                                    style: AppTextStyle.textStyle(
                                      appFontSize: 12.sp,
                                      appFontWeight: FontWeight.w600,
                                      appFontHeight: 14.52.sp,
                                      color: Color(0xff1E1E1E),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 2.h),
                            Row(
                              spacing: 100.w,
                              children: [
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "${LocaleKeys.discount.tr()}: ",
                                        style: AppTextStyle.textStyle(
                                          appFontSize: 12.sp,
                                          appFontWeight: FontWeight.w600,
                                          appFontHeight: 14.52.sp,
                                          color: Color(0xff1E1E1E)
                                              .withOpacity(0.50),
                                        ),
                                      ),
                                      TextSpan(
                                        text: " 12.0%",
                                        style: AppTextStyle.textStyle(
                                          appFontSize: 12.sp,
                                          appFontWeight: FontWeight.w600,
                                          appFontHeight: 14.52.sp,
                                          color: Color(0xff1E1E1E),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 16.h,
                                  width: 46.w,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6.r),
                                    color: Color(0xff7C0631).withOpacity(0.15),
                                  ),
                                  child: Text(
                                    "${LocaleKeys.nonVeg.tr()}",
                                    style: AppTextStyle.textStyle(
                                      appFontSize: 8.sp,
                                      appFontWeight: FontWeight.w400,
                                      appFontHeight: 9.68.sp,
                                      color: Color(0xff7C0631),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Row(
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "${LocaleKeys.dailyTime.tr()}: ",
                                style: AppTextStyle.textStyle(
                                  appFontSize: 12.sp,
                                  appFontWeight: FontWeight.w400,
                                  appFontHeight: 14.52.sp,
                                  color: Color(0xff1E1E1E).withOpacity(0.50),
                                ),
                              ),
                              TextSpan(
                                text: " 05:40 - 20:40",
                                style: AppTextStyle.textStyle(
                                  appFontSize: 12.sp,
                                  appFontWeight: FontWeight.w600,
                                  appFontHeight: 14.52.sp,
                                  color: Color(0xff2B3D16),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Color(0xffFCE340),
                        ),
                        Text(
                          "0.0",
                          style: AppTextStyle.textStyle(
                            appFontSize: 12.sp,
                            appFontWeight: FontWeight.w600,
                            appFontHeight: 14.52.sp,
                            color: Color(0xff2B3D16),
                          ),
                        ),
                        Text(
                          " 0 ${LocaleKeys.rating.tr()}",
                          style: AppTextStyle.textStyle(
                            appFontSize: 12.sp,
                            appFontWeight: FontWeight.w400,
                            appFontHeight: 14.52.sp,
                            color: Color(0xff1E1E1E).withOpacity(0.50),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16.w),
                    alignment: context.locale.languageCode == "ar"
                        ? Alignment.topRight
                        : Alignment.topLeft,
                    child: Text(
                      "${LocaleKeys.description.tr()}",
                      style: AppTextStyle.textStyle(
                        appFontSize: 12.sp,
                        appFontWeight: FontWeight.w600,
                        appFontHeight: 14.52.sp,
                        color: Color(0xff2B3D16),
                      ),
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Container(
                    margin: EdgeInsets.only(left: 16.w),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Lorem ipsum dolor sit amet consectetur. Praesent ornare scelerisque integer neque condimentum tortor purus dui ",
                      textAlign: TextAlign.left,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.textStyle(
                        appFontSize: 12.sp,
                        appFontWeight: FontWeight.w400,
                        appFontHeight: 14.52.sp,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  CustomListTile(
                    title: '${LocaleKeys.available.tr()}:',
                    value: FoodsCubit.instance.switchOne,
                    newValue: (bool value) {
                      FoodsCubit.instance.changeSwitchOne(value);
                    },
                  ),
                  SizedBox(height: 8.h),
                  CustomListTile(
                    title: '${LocaleKeys.recommended.tr()}:',
                    value: FoodsCubit.instance.switchTwo,
                    newValue: (bool value) {
                      FoodsCubit.instance.changeSwitchTwo(value);
                    },
                  ),
                  SizedBox(height: 8.h),
                  CustomListTile(
                    title: '${LocaleKeys.date.tr()}:',
                    value: FoodsCubit.instance.switchThree,
                    newValue: (bool value) {
                      FoodsCubit.instance.changeSwitchThree(value);
                    },
                  ),
                  SizedBox(height: 8.h),
                  CustomListTile(
                    title: '${LocaleKeys.timeToPickup.tr()}:',
                    value: FoodsCubit.instance.switchFour,
                    newValue: (bool value) {
                      FoodsCubit.instance.changeSwitchFour(value);
                    },
                  ),
                  SizedBox(height: 24.h),
                  Container(
                    margin: EdgeInsets.only(left: 16.w),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "${LocaleKeys.dailyScheduleTime.tr()}",
                      style: AppTextStyle.textStyle(
                        appFontSize: 12.sp,
                        appFontWeight: FontWeight.w400,
                        appFontHeight: 14.52.sp,
                        color: Colors.black.withOpacity(0.50),
                      ),
                    ),
                  ),
                  SizedBox(height: 8.h),
                  CustomRows(
                    title: "${LocaleKeys.sunday.tr()}",
                    isTitle: true,
                  ),
                  SizedBox(height: 8.h),
                  CustomRows(
                    title: "${LocaleKeys.monday.tr()}",
                    isTitle: true,
                    isTwoBox: true,
                  ),
                  SizedBox(height: 8.h),
                  CustomRows(
                    title: "${LocaleKeys.tuesday.tr()}",
                    isTitle: true,
                    isTwoBox: true,
                  ),
                  SizedBox(height: 8.h),
                  CustomRows(
                    title: "${LocaleKeys.wednesday.tr()}",
                  ),
                  SizedBox(height: 8.h),
                  CustomRows(
                    title: "${LocaleKeys.thursday.tr()}",
                  ),
                  SizedBox(height: 8.h),
                  CustomRows(
                    title: "${LocaleKeys.friday.tr()}",
                  ),
                  SizedBox(height: 8.h),
                  CustomRows(
                    title: "${LocaleKeys.saturday.tr()}",
                  ),
                  SizedBox(height: 24.h),
                  Container(
                    alignment: context.locale.languageCode == "ar"
                        ? Alignment.topRight
                        : Alignment.topLeft,
                    margin: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Text(
                      "${LocaleKeys.reviews.tr()}",
                      style: AppTextStyle.textStyle(
                        appFontSize: 12.sp,
                        appFontWeight: FontWeight.w600,
                        appFontHeight: 14.52.sp,
                        color: Color(0xff2B3D16),
                      ),
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 16.w),
                    child: Text(
                      "${LocaleKeys.noReviewFound.tr()}",
                      style: AppTextStyle.textStyle(
                        appFontSize: 12.sp,
                        appFontWeight: FontWeight.w400,
                        appFontHeight: 14.52.sp,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
