import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/core/routes/routes.dart';
import 'package:restaurant/features/order_history/cubit/order_history_cubit.dart';
import 'package:restaurant/features/order_history/widgets/custom_columns.dart';
import 'package:restaurant/shared/classes/text_style.dart';
import 'package:restaurant/shared/extentions/navigations.dart';
import 'package:restaurant/shared/resources/image_resources.dart';
import 'package:restaurant/shared/widgets/titleAppBar.dart';
import 'package:restaurant/translations/locale_keys.g.dart';

class OrderHistoryScreen extends StatelessWidget {
  const OrderHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leadingWidth: 0,
        leading: SizedBox(),
        title: TitleAppBar(title: LocaleKeys.orderDetails.tr()),
      ),
      body: BlocBuilder<OrderHistoryCubit, OrderHistoryState>(
        builder: (context, state) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                Container(
                  height: 52.h,
                  width: 358.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: Color(0xff7C0631),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomColumns(title: LocaleKeys.today.tr()),
                      CustomColumns(title: LocaleKeys.thisWeek.tr()),
                      CustomColumns(title: LocaleKeys.thisMonth.tr()),
                    ],
                  ),
                ),
                SizedBox(height: 24.h),
                Container(
                  height: 27.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.r),
                    border: Border.all(
                      width: 1.w,
                      color: Color(0xffD9D9D9),
                    ),
                  ),
                  child: Row(
                    spacing: 8.w,
                    children: [
                      ...List.generate(OrderHistoryCubit.instance.words.length,
                          (index) {
                        return GestureDetector(
                          onTap: () {
                            OrderHistoryCubit.instance.selectWord(index);
                          },
                          child: Container(
                            height: 27.h,
                            // width: 28.w,
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.r),
                              color: OrderHistoryCubit.instance.index == index
                                  ? Color(0xff7C0631).withOpacity(0.15)
                                  : null,
                            ),
                            child: Text(
                              OrderHistoryCubit.instance.words[index],
                              style: AppTextStyle.textStyle(
                                appFontSize: 10.sp,
                                appFontWeight: FontWeight.w500,
                                appFontHeight: 12.1.sp,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        );
                      }),
                      Image.asset(
                        ImageResources.line,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.h),
                Expanded(
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: OrderHistoryCubit.instance.orders.length,
                    itemBuilder: (_, index) {
                      return GestureDetector(
                        onTap: () {
                          context.pushNamed(Routes.orderHistoryDetails);
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
                                          text: OrderHistoryCubit
                                              .instance.orders[index].name,
                                          style: AppTextStyle.textStyle(
                                            appFontSize: 12.sp,
                                            appFontWeight: FontWeight.w400,
                                            appFontHeight: 14.52.sp,
                                            color: Color(0xff1E1E1E),
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              "${OrderHistoryCubit.instance.orders[index].orderNumber}",
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
                                  SizedBox(height: 4.h),
                                  Row(
                                    spacing: 8.w,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        "${OrderHistoryCubit.instance.orders[index].date} | ",
                                        style: AppTextStyle.textStyle(
                                            appFontSize: 12.sp,
                                            appFontWeight: FontWeight.w500,
                                            appFontHeight: 14.52.sp,
                                            color: Color(0xff1E1E1E)),
                                      ),
                                      Text(
                                        LocaleKeys.receive.tr(),
                                        style: AppTextStyle.textStyle(
                                          appFontSize: 10.sp,
                                          appFontWeight: FontWeight.w500,
                                          appFontHeight: 12.1.sp,
                                          color: Color(0xff7C0631),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Spacer(),
                              Container(
                                height: 17.h,
                                width: 70.w,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6.r),
                                    color: Color(0xff7C0631).withOpacity(0.15)),
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
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        Divider(),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
