import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/features/home/cubit/home_cubit.dart';
import 'package:restaurant/features/home/models/my_order.dart';
import 'package:restaurant/shared/classes/text_style.dart';
import 'package:restaurant/shared/resources/image_resources.dart';
import 'package:restaurant/translations/locale_keys.g.dart';

import '../../../shared/widgets/leading_app_bar.dart';
import '../../../shared/widgets/titleAppBar.dart';

class MyOrderDetails extends StatelessWidget {
  const MyOrderDetails({
    super.key,
    required this.myOrder,
    this.isOrderRunning = false,
  });

  final MyOrder myOrder;
  final bool isOrderRunning;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leadingWidth: 0,
        centerTitle: true,
        leading: LeadingAppBar(),
        title: TitleAppBar(title: LocaleKeys.orderDetails.tr()),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            SizedBox(height: 22.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${myOrder.name} ${myOrder.orderNumber}",
                  style: AppTextStyle.textStyle(
                    appFontSize: 12.sp,
                    appFontWeight: FontWeight.w500,
                    appFontHeight: 14.52.sp,
                    color: Color(0xff1E1E1E),
                  ),
                ),
                Text(
                  "${myOrder.date}",
                  style: AppTextStyle.textStyle(
                    appFontSize: 14.sp,
                    appFontWeight: FontWeight.w600,
                    appFontHeight: 14.52.sp,
                    color: Color(0xff1E1E1E),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Divider(color: Color(0xffD9D9D9)),
            SizedBox(height: 16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${LocaleKeys.items.tr()}: 1",
                  style: AppTextStyle.textStyle(
                    appFontSize: 14.sp,
                    appFontWeight: FontWeight.w600,
                    appFontHeight: 14.52.sp,
                    color: Color(0xff1E1E1E),
                  ),
                ),
                Spacer(),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 8.h,
                      width: 8.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.r),
                        color: Color(0xff2CBE4E),
                      ),
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      "${myOrder.status}",
                      style: AppTextStyle.textStyle(
                        appFontSize: 12.sp,
                        appFontWeight: FontWeight.w400,
                        color: Color(0xff1E1E1E),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Divider(color: Color(0xffD9D9D9)),
            SizedBox(height: 16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  LocaleKeys.cutlery.tr(),
                  style: AppTextStyle.textStyle(
                    appFontSize: 12.sp,
                    appFontWeight: FontWeight.w400,
                    color: Color(0xff1E1E1E),
                  ),
                ),
                Text(
                  LocaleKeys.no.tr(),
                  style: AppTextStyle.textStyle(
                    appFontSize: 12.sp,
                    appFontWeight: FontWeight.w400,
                    color: Color(0xff1E1E1E),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Container(
              //height: 181.h,
              width: 390.w,
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    LocaleKeys.itemInfo.tr(),
                    style: AppTextStyle.textStyle(
                      appFontSize: 12.sp,
                      appFontWeight: FontWeight.w500,
                      color: Color(0xff000000),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.r),
                        child: Image.asset(
                          ImageResources.pizza,
                          height: 47.h,
                          width: 72.w,
                        ),
                      ),
                      SizedBox(width: 7.w),
                      Column(
                        children: [
                          Text(
                            "${myOrder.productModel.name}",
                            style: AppTextStyle.textStyle(
                              appFontSize: 12.sp,
                              appFontWeight: FontWeight.w600,
                              appFontHeight: 14.52.sp,
                              color: Color(0xff1E1E1E),
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            "SAR ${myOrder.productModel.price}",
                            style: AppTextStyle.textStyle(
                              appFontSize: 14.sp,
                              appFontWeight: FontWeight.w600,
                              appFontHeight: 16.94.sp,
                              color: Color(0xff1E1E1E),
                            ),
                          ),
                          SizedBox(height: 14.h),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: "${LocaleKeys.quantity.tr()}: ",
                                  style: AppTextStyle.textStyle(
                                    appFontSize: 12.sp,
                                    appFontWeight: FontWeight.w400,
                                    appFontHeight: 14.52.sp,
                                    color: Color(0xff1E1E1E),
                                  ),
                                ),
                                TextSpan(
                                  text: "${myOrder.productModel.quantity}",
                                  style: AppTextStyle.textStyle(
                                    appFontSize: 12.sp,
                                    appFontWeight: FontWeight.w400,
                                    appFontHeight: 14.52.sp,
                                    color: Color(0xff1E1E1E),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Container(
                            height: 18.h,
                            width: 46.w,
                            padding: EdgeInsets.only(
                                top: 3.h, right: 6.w, left: 6.w, bottom: 3.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.r),
                              color: Color(0xff7C0631).withOpacity(0.15),
                            ),
                            child: Text(
                              LocaleKeys.nonVeg.tr(),
                              style: AppTextStyle.textStyle(
                                appFontSize: 8.sp,
                                appFontWeight: FontWeight.w400,
                                appFontHeight: 9.68.sp,
                                color: Color(0xff7C0631),
                              ),
                            ),
                          ),
                          SizedBox(height: 14.h),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 75.w),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "${LocaleKeys.addons.tr()}: ",
                            style: TextStyle(
                              fontFamily: "Inter",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff1E1E1E),
                            ),
                          ),
                          TextSpan(
                            text:
                                "${myOrder.productModel.addons[0].name} (${myOrder.productModel.addons[0].count})",
                            style: TextStyle(
                              fontFamily: "Inter",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey.withOpacity(0.9),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 75.w),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "${LocaleKeys.variations.tr()}: ",
                            style: TextStyle(
                              fontFamily: "Inter",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff1E1E1E),
                            ),
                          ),
                          TextSpan(
                            text: "${myOrder.productModel.typeSized}",
                            style: TextStyle(
                              fontFamily: "Inter",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey.withOpacity(0.9),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Divider(color: Colors.grey.withOpacity(0.5), thickness: 1.w),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    LocaleKeys.customerDetails.tr(),
                    style: AppTextStyle.textStyle(
                        appFontSize: 12.sp,
                        appFontWeight: FontWeight.w600,
                        color: Color(0xff1E1E1E),
                        appFontHeight: 14.52.sp),
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    children: [
                      Image.asset(ImageResources.img),
                      SizedBox(width: 4.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Osama",
                            style: AppTextStyle.textStyle(
                                appFontSize: 12.sp,
                                appFontWeight: FontWeight.w600,
                                color: Color(0xff1E1E1E),
                                appFontHeight: 14.52),
                          ),
                          SizedBox(height: 2.h),
                          Text(
                            "6th of october, giza",
                            style: TextStyle(
                              fontFamily: "Inter",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff7D7D7D),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Row(
                        spacing: 4.w,
                        children: [
                          Image.asset(ImageResources.chat),
                          Text(
                            LocaleKeys.chat.tr(),
                            style: AppTextStyle.textStyle(
                                appFontSize: 12.sp,
                                appFontWeight: FontWeight.w500,
                                color: Color(0xff2B3D16),
                                appFontHeight: 14.52),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        LocaleKeys.itemPrice.tr(),
                        style: AppTextStyle.textStyle(
                            appFontSize: 12.sp,
                            appFontWeight: FontWeight.w600,
                            color: Color(0xff1E1E1E),
                            appFontHeight: 14.52),
                      ),
                      Text(
                        "SAR 1135.00",
                        style: AppTextStyle.textStyle(
                            appFontSize: 12.sp,
                            appFontWeight: FontWeight.w600,
                            color: Color(0xff1E1E1E),
                            appFontHeight: 14.52),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        LocaleKeys.addons.tr(),
                        style: AppTextStyle.textStyle(
                            appFontSize: 12.sp,
                            appFontWeight: FontWeight.w500,
                            color: Color(0xff2B3D16),
                            appFontHeight: 14.52),
                      ),
                      Text(
                        "(-) SAR 0.00",
                        style: AppTextStyle.textStyle(
                            appFontSize: 12.sp,
                            appFontWeight: FontWeight.w500,
                            color: Color(0xff2B3D16),
                            appFontHeight: 14.52),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 70.h,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            boxShadow: [
              BoxShadow(
                color: Colors.black12.withOpacity(0.3),
                blurRadius: 7.0,
                spreadRadius: 2.0,
                offset: Offset(10, 3),
              ),
            ],
          ),
          child: BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ...List.generate(HomeCubit.instance.titlesButton.length,
                      (index) {
                    return SizedBox(
                      height: 40.h,
                      width: 171.w,
                      child: GestureDetector(
                        onTap: () {
                           HomeCubit.instance.changeIndex(index);
                          // if (HomeCubit.instance.currentIndex == 1) {
                          //   context.pushNamed(Routes.categoriesScreen);
                          // }
                        },
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(vertical: 10.5),
                          decoration: BoxDecoration(
                              color: HomeCubit.instance.currentIndex == index
                                  ? Color(0xff2B3D16)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(6)),
                          child: Text(
                            HomeCubit.instance.titlesButton[index],
                            style: TextStyle(
                              fontFamily: "Inter",
                              color: HomeCubit.instance.currentIndex == index
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
