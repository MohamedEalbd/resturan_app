import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/core/routes/routes.dart';
import 'package:restaurant/features/home/cubit/home_cubit.dart';
import 'package:restaurant/features/home/widgets/Select_Text.dart';
import 'package:restaurant/shared/classes/text_style.dart';
import 'package:restaurant/shared/extentions/navigations.dart';
import 'package:restaurant/shared/resources/image_resources.dart';
import 'package:restaurant/translations/locale_keys.g.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            minimum: EdgeInsets.only(top: 56.h),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                children: [
                  Container(
                    height: 163.h,
                    width: 358.w,
                    padding: EdgeInsets.only(
                      top: 24.h,
                      right: 16.w,
                      left: 16.w,
                      bottom: 24.h,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xff7C0631),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Column(
                      spacing: 16.h,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          spacing: 16.w,
                          children: [
                            Image.asset(
                              ImageResources.cash,
                              height: 56.h,
                              width: 56.w,
                            ),
                            Column(
                              children: [
                                Text(
                                  LocaleKeys.today.tr(),
                                  style: AppTextStyle.textStyle(
                                      appFontSize: 10.sp,
                                      appFontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      appFontHeight: 12.1.sp),
                                ),
                                Text(
                                  "SAR 16.00",
                                  style: AppTextStyle.textStyle(
                                      appFontSize: 16.sp,
                                      appFontWeight: FontWeight.w600,
                                      color: Colors.white,
                                      appFontHeight: 19.36.sp),
                                ),
                              ],
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              spacing: 10.h,
                              children: [
                                Text(
                                  LocaleKeys.thisWeek.tr(),
                                  style: AppTextStyle.textStyle(
                                      appFontSize: 10.sp,
                                      appFontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      appFontHeight: 12.1.sp),
                                ),
                                Text(
                                  "SAR 16.00",
                                  style: AppTextStyle.textStyle(
                                      appFontSize: 14.sp,
                                      appFontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      appFontHeight: 16.94.sp),
                                ),
                              ],
                            ),
                            Image.asset(ImageResources.line),
                            Column(
                              spacing: 10.h,
                              children: [
                                Text(
                                  LocaleKeys.thisMonth.tr(),
                                  style: AppTextStyle.textStyle(
                                      appFontSize: 10.sp,
                                      appFontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      appFontHeight: 12.1.sp),
                                ),
                                Text(
                                  "SAR 16.00",
                                  style: AppTextStyle.textStyle(
                                      appFontSize: 14.sp,
                                      appFontWeight: FontWeight.w600,
                                      color: Colors.white,
                                      appFontHeight: 16.94.sp),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 24.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ...List.generate(HomeCubit.instance.words.length,
                          (index) {
                        return GestureDetector(
                          onTap: () {
                            HomeCubit.instance.changeIndex(index);
                          },
                          child: SelectText(
                            title: '${HomeCubit.instance.words[index]}',
                            colorContainer:
                                HomeCubit.instance.currentIndex == index
                                    ? Color(0xff2B3D16)
                                    : Colors.white,
                            colorText: HomeCubit.instance.currentIndex == index
                                ? Colors.white
                                : Color(0xff000000),
                          ),
                        );
                      })
                    ],
                  ),
                  SizedBox(height: 24.h),
                  Expanded(
                    child: ListView.separated(
                      itemCount: HomeCubit.instance.orders.length,
                      itemBuilder: (_, index) {
                        return GestureDetector(
                          onTap: () {
                            context.pushNamed(Routes.myOrderDetails,
                                arguments: HomeCubit.instance.orders[index]);
                          },
                          child: Container(
                            decoration: BoxDecoration(),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  spacing: 4.h,
                                  children: [
                                    Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text:
                                                HomeCubit.instance.orders[index].name,
                                            style: AppTextStyle.textStyle(
                                              appFontSize: 12.sp,
                                              appFontWeight: FontWeight.w400,
                                              appFontHeight: 14.52.sp,
                                              color: Color(0xff1E1E1E),
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                "${HomeCubit.instance.orders[index].orderNumber}",
                                            style: AppTextStyle.textStyle(
                                              appFontSize: 12.sp,
                                              appFontWeight: FontWeight.w500,
                                              appFontHeight: 14.52.sp,
                                              color: Color(0xff1E1E1E),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      HomeCubit.instance.orders[index].date,
                                      style: AppTextStyle.textStyle(
                                          appFontSize: 12.sp,
                                          appFontWeight: FontWeight.w500,
                                          appFontHeight: 14.52.sp,
                                          color: Color(0xff1E1E1E)),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Row(
                                  spacing: 8.w,
                                  children: [
                                    Text(
                                      "${HomeCubit.instance.orders[index].requestNumbers} ${LocaleKeys.items.tr()}",
                                      style: AppTextStyle.textStyle(
                                          appFontSize: 12.sp,
                                          appFontWeight: FontWeight.w400,
                                          appFontHeight: 14.52.sp,
                                          color: Color(0xff1E1E1E)),
                                    ),
                                    Image.asset(ImageResources.arrowRight),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          Divider(
                        color: Colors.grey.withOpacity(0.2),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
