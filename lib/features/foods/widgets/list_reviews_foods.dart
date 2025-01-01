import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/core/classes/responsive_screen.dart';
import 'package:restaurant/core/routes/routes.dart';
import 'package:restaurant/features/foods/models/foods_model.dart';
import 'package:restaurant/shared/classes/text_style.dart';
import 'package:restaurant/shared/extentions/navigations.dart';
import 'package:restaurant/shared/resources/image_resources.dart';

import '../../../translations/locale_keys.g.dart';

class ListReviewsFoods extends StatelessWidget {
  const ListReviewsFoods({super.key, required this.foods});
  final List<FoodsModel> foods;

  @override
  Widget build(BuildContext context) {
    ResponsiveScreen.initialize(context);
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: foods.length,
        itemBuilder: (_, index) {
          return GestureDetector(
            onTap: () {
              context.pushNamed(Routes.foodDetails);
            },
            child: Container(
              alignment: Alignment.center,
              //height: 80.h,
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                //color: Color(0xffFFFFFF),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    ImageResources.myPizza,
                    height: 52.h,
                    width: 52.w,
                  ),
                  SizedBox(width: 16.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        foods[index].name,
                        style: AppTextStyle.textStyle(
                          appFontSize: 10.sp,
                          appFontWeight: FontWeight.w400,
                          appFontHeight: 12.1.sp,
                          color: Color(0xff7D7D7D),
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ...List.generate(5, (index) {
                            return Icon(
                              Icons.star,
                              size: 10,
                              color: Color(0xffFCE340),
                            );
                          })
                        ],
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        "${LocaleKeys.customerNotFound.tr()}",
                        style: AppTextStyle.textStyle(
                          appFontSize: 10.sp,
                          appFontWeight: FontWeight.w400,
                          appFontHeight: 12.1.sp,
                          color: Color(0xff7D7D7D),
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        "${LocaleKeys.nice.tr()}",
                        style: AppTextStyle.textStyle(
                          appFontSize: 10.sp,
                          appFontWeight: FontWeight.w400,
                          appFontHeight: 12.1.sp,
                          color: Color(0xff7D7D7D),
                        ),
                      ),
                      SizedBox(
                        width: ResponsiveScreen.width * 0.77,
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                    ],
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
