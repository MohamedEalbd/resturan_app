import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/features/foods/cubit/foods_cubit.dart';
import 'package:restaurant/features/foods/widgets/list_all_foods.dart';
import 'package:restaurant/features/foods/widgets/list_reviews_foods.dart';
import 'package:restaurant/shared/classes/text_style.dart';
import 'package:restaurant/shared/resources/image_resources.dart';

import '../../../translations/locale_keys.g.dart';

class FoodsScreen extends StatelessWidget {
  const FoodsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<FoodsCubit, FoodsState>(
        builder: (context, state) {
          return SafeArea(
            child: Container(
              child: Column(
                children: [
                  Image.asset(
                    ImageResources.logoFoods,
                    height: 206.h,
                  ),
                  SizedBox(height: 15.h),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          spacing: 16.w,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(6.r),
                              child: Image.asset(
                                ImageResources.logoFoods,
                                height: 41.h,
                                width: 60.w,
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              spacing: 4.h,
                              children: [
                                Text(
                                  LocaleKeys.restaurantName.tr(),
                                  style: AppTextStyle.textStyle(
                                    appFontSize: 12.sp,
                                    appFontWeight: FontWeight.w700,
                                    appFontHeight: 14.52.sp,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "1234 Elm Street, Apt 5B",
                                  style: AppTextStyle.textStyle(
                                    appFontSize: 10.sp,
                                    appFontWeight: FontWeight.w400,
                                    appFontHeight: 12.1.sp,
                                    color: Colors.grey.withOpacity(0.59),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          weight: 10.w,
                          size: 10.sp,
                          color: Color(0xffFFC107),
                        ),
                        SizedBox(width: 4.w),
                        Text(
                          "4.0",
                          style: AppTextStyle.textStyle(
                            appFontSize: 10.sp,
                            appFontWeight: FontWeight.w400,
                            appFontHeight: 12.1.sp,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          "2 ${LocaleKeys.rating.tr()}",
                          style: AppTextStyle.textStyle(
                            appFontSize: 10.sp,
                            appFontWeight: FontWeight.w400,
                            appFontHeight: 12.1.sp,
                            color: Colors.black.withOpacity(0.50),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Row(
                      children: [
                        ...List.generate(FoodsCubit.instance.words.length,
                            (index) {
                          return GestureDetector(
                            onTap: () {
                              FoodsCubit.instance.changeIndex(index);
                            },
                            child: Container(
                              width: 179.w,
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(
                                vertical: 14.h,
                                //horizontal: 85.w,
                              ),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: FoodsCubit.instance.currentIndex ==
                                            index
                                        ? Color(0xff7C0631)
                                        : Colors.transparent,
                                    width: 1.w,
                                  ),
                                ),
                              ),
                              child: Text(
                                FoodsCubit.instance.words[index],
                                style: AppTextStyle.textStyle(
                                  appFontSize: 12.sp,
                                  appFontWeight: FontWeight.w400,
                                  appFontHeight: 14.52.sp,
                                  color:
                                      FoodsCubit.instance.currentIndex == index
                                          ? Color(0xff7C0631)
                                          : Colors.black.withOpacity(0.50),
                                ),
                              ),
                            ),
                          );
                        })
                      ],
                    ),
                  ),
                  SizedBox(height: 24.h),
                  if (FoodsCubit.instance.currentIndex == 0)
                    ListAllFoods(foods: FoodsCubit.instance.allFoods),
                  if (FoodsCubit.instance.currentIndex == 1)
                    ListReviewsFoods(foods: FoodsCubit.instance.reviewsFoods),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
