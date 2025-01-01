import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/features/foods/models/foods_model.dart';
import 'package:restaurant/shared/classes/text_style.dart';
import 'package:restaurant/shared/resources/image_resources.dart';

class ListAllFoods extends StatelessWidget {
  const ListAllFoods({super.key, required this.foods});
  final List<FoodsModel> foods;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: foods.length,
        itemBuilder: (_, index) {
          return Container(
            alignment: Alignment.center,
            height: 80.h,
            margin: EdgeInsets.symmetric(horizontal: 16.w),
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: Color(0xffFFFFFF),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 4.0,
                    blurRadius: 10,
                    offset: Offset(2, 4),
                  )
                ]),
            //height: 100.h,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  ImageResources.burger,
                  height: 64.h,
                  width: 64.w,
                ),
                SizedBox(width: 8.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      foods[index].name,
                      style: AppTextStyle.textStyle(
                        appFontSize: 12.sp,
                        appFontWeight: FontWeight.w600,
                        color: Color(0xff1E1E1E),
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Row(
                      children: [
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
                        SizedBox(width: 6.w),
                        Text(
                          "${foods[index].rate}",
                          style: AppTextStyle.textStyle(
                            appFontSize: 10.sp,
                            appFontWeight: FontWeight.w400,
                            appFontHeight: 12.1.sp,
                            color: Color(0xff1E1E1E),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      "SAR ${foods[index].price}",
                      style: AppTextStyle.textStyle(
                        appFontSize: 12.sp,
                        appFontWeight: FontWeight.w600,
                        appFontHeight: 14.52.sp,
                        color: Color(0xff1E1E1E),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  spacing: 16.w,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.edit,
                        weight: 24.5.w,
                        size: 24.5,
                        color: Color(0xff2B3D16),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(ImageResources.delete),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) =>
            SizedBox(height: 16.h),
      ),
    );
  }
}
