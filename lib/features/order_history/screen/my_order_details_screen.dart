import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/core/routes/routes.dart';
import 'package:restaurant/features/order_history/widgets/custom_rows.dart';
import 'package:restaurant/shared/classes/text_style.dart';
import 'package:restaurant/shared/extentions/navigations.dart';
import 'package:restaurant/shared/resources/image_resources.dart';
import 'package:restaurant/shared/widgets/build_button_widget.dart';
import 'package:restaurant/shared/widgets/leading_app_bar.dart';
import 'package:restaurant/shared/widgets/titleAppBar.dart';

import '../../../translations/locale_keys.g.dart';

class OrderHistoryDetailsScreen extends StatelessWidget {
  const OrderHistoryDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: LeadingAppBar(),
        title: TitleAppBar(title: LocaleKeys.orderDetails.tr()),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16.w,vertical: 28.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "order ID: #100129",
                    style: AppTextStyle.textStyle(
                      appFontSize: 10.sp,
                      appFontWeight: FontWeight.w500,
                      appFontHeight: 12.1.sp,
                      color: Color(0xff1E1E1E),
                    ),
                  ),
                  Text(
                    "04 jun 2023 07:03",
                    style: AppTextStyle.textStyle(
                      appFontSize: 10.sp,
                      appFontWeight: FontWeight.w500,
                      appFontHeight: 12.1.sp,
                      color: Color(0xff1E1E1E),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    LocaleKeys.receive.tr(),
                    style: AppTextStyle.textStyle(
                      appFontSize: 10.sp,
                      appFontWeight: FontWeight.w500,
                      appFontHeight: 12.1.sp,
                      color: Color(0xff7C0631),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 70.w,
                    height: 20.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      color: Color(0xff7C0631).withOpacity(0.15),
                    ),
                    child: Text(
                      LocaleKeys.received.tr(),
                      style: AppTextStyle.textStyle(
                        appFontSize: 10.sp,
                        appFontWeight: FontWeight.w500,
                        appFontHeight: 12.1.sp,
                        color: Color(0xff7C0631),
                      ),
                    ),
                  ),
                ],
              ),
              Divider(color: Color(0xffD9D9D9)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${LocaleKeys.item.tr()}: 1",
                    style: AppTextStyle.textStyle(
                      appFontSize: 10.sp,
                      appFontWeight: FontWeight.w500,
                      appFontHeight: 12.1.sp,
                      color: Color(0xff1E1E1E),
                    ),
                  ),
                  Row(
                    spacing: 4.w,
                    children: [
                      Container(
                        height: 5.h,
                        width: 5.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.r),
                            color: Color(0xff1DB91D)),
                      ),
                      Text(
                        "received at: d4 jun 2024 07:15",
                        style: AppTextStyle.textStyle(
                          appFontSize: 10.sp,
                          appFontWeight: FontWeight.w500,
                          appFontHeight: 12.1.sp,
                          color: Color(0xff1E1E1E),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Divider(color: Color(0xffD9D9D9)),
              SizedBox(height: 24.h),
              Container(
                height: 56.h,
                width: 358.w,
                decoration: BoxDecoration(),
                child: Row(
                  children: [
                    Image.asset(ImageResources.pizza),
                    SizedBox(width: 16.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 4.h,
                      children: [
                        Text(
                          "pizza",
                          style: AppTextStyle.textStyle(
                            appFontSize: 12.sp,
                            appFontHeight: 14.52.sp,
                            appFontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "1234 Elm Street, Apt 5B",
                          style: AppTextStyle.textStyle(
                            appFontSize: 10.sp,
                            appFontHeight: 12.1.sp,
                            appFontWeight: FontWeight.w400,
                            color: Colors.grey.withOpacity(0.59),
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: LocaleKeys.variations.tr(),
                                style: AppTextStyle.textStyle(
                                  appFontSize: 12.sp,
                                  appFontHeight: 14.52.sp,
                                  appFontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: ": capacity (half)",
                                style: AppTextStyle.textStyle(
                                  appFontSize: 12.sp,
                                  appFontHeight: 14.52.sp,
                                  appFontWeight: FontWeight.w400,
                                  color: Colors.black.withOpacity(0.50),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      spacing: 8.h,
                      children: [
                        Text(
                          "${LocaleKeys.quantity.tr()}: 1",
                          style: AppTextStyle.textStyle(
                            appFontSize: 10.sp,
                            appFontWeight: FontWeight.w400,
                            appFontHeight: 12.1.sp,
                            color: Colors.black.withOpacity(0.50),
                          ),
                        ),
                        Container(
                          height: 20.h,
                          width: 51.w,
                          alignment: Alignment.center,
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
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 32.h),
              Container(
                alignment: context.locale.languageCode == "ar"
                    ? Alignment.topRight
                    : Alignment.topLeft,
                child: Text(
                  LocaleKeys.customerDetails.tr(),
                  style: AppTextStyle.textStyle(
                    appFontSize: 10.sp,
                    appFontWeight: FontWeight.w400,
                    appFontHeight: 12.1.sp,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              SizedBox(height: 14.h),
              Row(
                spacing: 8.w,
                children: [
                  ClipRect(
                    child: Image.asset(
                      ImageResources.myProfile,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Osama",
                    style: AppTextStyle.textStyle(
                      appFontSize: 10.sp,
                      appFontWeight: FontWeight.w600,
                      appFontHeight: 12.1.sp,
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              CustomRowsOrders(title: LocaleKeys.itemPrice.tr()),
              SizedBox(height: 8.h),
              CustomRowsOrders(title: LocaleKeys.address.tr()),
              SizedBox(height: 8.h),
              CustomRowsOrders(title: LocaleKeys.subtotal.tr()),
              SizedBox(height: 8.h),
              CustomRowsOrders(title: LocaleKeys.discount.tr()),
              SizedBox(height: 8.h),
              CustomRowsOrders(title: LocaleKeys.tax.tr()),
              SizedBox(height: 8.h),
              CustomRowsOrders(title: LocaleKeys.totalAmount.tr(),isTotal: true),
              Spacer(),
              SizedBox(
                width: double.infinity,
                child: BuildButtonWidget(txt: LocaleKeys.submit.tr(),onTap: (){
                  context.pushNamed(Routes.walletScreen);
                },),
              )
            ],
          ),
        ),
      ),
    );
  }
}
