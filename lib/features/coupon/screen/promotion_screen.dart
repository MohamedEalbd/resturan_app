import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/core/classes/responsive_screen.dart';
import 'package:restaurant/core/functions/switch_for_name_route.dart';
import 'package:restaurant/features/coupon/cubit/coupon_cubit.dart';
import 'package:restaurant/shared/classes/text_style.dart';

class PromotionScreen extends StatelessWidget {
  const PromotionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ResponsiveScreen.initialize(context);
    return Scaffold(
      body: BlocBuilder<CouponCubit, CouponState>(
        builder: (context, state) {
          return SafeArea(
            child: Container(
              height: ResponsiveScreen.height,
              width: ResponsiveScreen.width,
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 476.h,
                width: double.infinity,
                padding: EdgeInsets.only(
                  top: 24.h,
                  right: 16.w,
                  left: 16.w,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16.r),
                    topRight: Radius.circular(16.r),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      offset: Offset(0.0, 2.0),
                      blurRadius: 2.0,
                      spreadRadius: 7,
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    GridView.builder(
                        shrinkWrap: true,
                        itemCount: CouponCubit.instance.options.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          mainAxisSpacing: 36.h,
                          crossAxisSpacing: 13.w,
                        ),
                        itemBuilder: (_, index) {
                          return GestureDetector(
                            onTap: () {
                              CouponCubit.instance.changePage(index);
                              switchForNameRoute(index,true);
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              spacing: 8.h,
                              children: [
                                Flexible(
                                  flex: 1,
                                  child: Container(
                                    height: 80.h,
                                    width: 80.w,
                                    alignment: Alignment.center,
                                    // padding: EdgeInsets.symmetric(
                                    //     horizontal: 24.w, vertical: 24.h),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.r),
                                      color: Color(0xff2B3D16),
                                    ),
                                    child: Image.asset(
                                      CouponCubit.instance.options[index].image,
                                      height: 32.h,
                                      width: 32.w,
                                    ),
                                  ),
                                ),
                                Text(
                                  CouponCubit.instance.options[index].name,
                                  style: AppTextStyle.textStyle(
                                    appFontSize: 10.sp,
                                    appFontWeight: FontWeight.w600,
                                    color: Color(0xff000000),
                                    appFontHeight: 12.1.sp,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
