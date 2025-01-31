import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/core/routes/routes.dart';
import 'package:restaurant/features/report/widgets/text_field.dart';
import 'package:restaurant/shared/classes/text_style.dart';
import 'package:restaurant/shared/extentions/navigations.dart';
import 'package:restaurant/shared/widgets/leading_app_bar.dart';
import 'package:restaurant/shared/widgets/titleAppBar.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: LeadingAppBar(),
        centerTitle: true,
        title: TitleAppBar(title: "Expense Report"),
      ),
      body: Container(
        margin: EdgeInsets.only(right: 16.w, left: 16.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextFieldReport(
                  hintText: 'Search with order id',
                ),
                GestureDetector(
                  onTap: () {
                    context.pushNamed(Routes.dateScreen);
                  },
                  child: Container(
                    height: 40.h,
                    width: 43.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: Color(0xff7C0631),
                    ),
                    child: Icon(
                      Icons.calendar_month_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Row(
              spacing: 8.w,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "From",
                        style: AppTextStyle.textStyle(
                          appFontSize: 10.sp,
                          appFontHeight: 12.1.sp,
                          appFontWeight: FontWeight.w500,
                          color: Color(0xff7D7D7D),
                        ),
                      ),
                      TextSpan(
                        text: "20 aug 2022",
                        style: AppTextStyle.textStyle(
                          appFontSize: 10.sp,
                          appFontHeight: 12.1.sp,
                          appFontWeight: FontWeight.w500,
                          color: Color(0xff1E1E1E),
                        ),
                      ),
                    ],
                  ),
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "To",
                        style: AppTextStyle.textStyle(
                          appFontSize: 10.sp,
                          appFontHeight: 12.1.sp,
                          appFontWeight: FontWeight.w500,
                          color: Color(0xff7D7D7D),
                        ),
                      ),
                      TextSpan(
                        text: "18 aug 2023",
                        style: AppTextStyle.textStyle(
                          appFontSize: 10.sp,
                          appFontHeight: 12.1.sp,
                          appFontWeight: FontWeight.w500,
                          color: Color(0xff1E1E1E),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (_, index) => SizedBox(height: 16.h),
                itemBuilder: (_, index) {
                  return Container(
                    height: 70.h,
                    width: 358.w,
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.18),
                    ),
                    child: Column(
                      spacing: 10.h,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "order ID: a120035",
                          style: AppTextStyle.textStyle(
                            appFontSize: 10.sp,
                            appFontHeight: 12.1.sp,
                            appFontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "20 aug 2023",
                              style: AppTextStyle.textStyle(
                                appFontSize: 8.sp,
                                appFontHeight: 9.66.sp,
                                appFontWeight: FontWeight.w500,
                                color: Color(0xff7D7D7D),
                              ),
                            ),
                            Text(
                              "amount",
                              style: AppTextStyle.textStyle(
                                appFontSize: 8.sp,
                                appFontHeight: 9.66.sp,
                                appFontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: "expense type: ",
                                    style: AppTextStyle.textStyle(
                                      appFontSize: 8.sp,
                                      appFontHeight: 9.66.sp,
                                      appFontWeight: FontWeight.w500,
                                      color: Color(0xff7D7D7D),
                                    ),
                                  ),
                                  TextSpan(
                                    text: "discount on product",
                                    style: AppTextStyle.textStyle(
                                      appFontSize: 8.sp,
                                      appFontHeight: 9.66.sp,
                                      appFontWeight: FontWeight.w500,
                                      color: Color(0xff7C0631),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "SAR 35.70",
                              style: AppTextStyle.textStyle(
                                appFontSize: 8.sp,
                                appFontHeight: 9.68.sp,
                                appFontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
                itemCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
