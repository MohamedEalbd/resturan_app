import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/features/quick/cubit/quick_cubit.dart';

import '../../../shared/classes/text_style.dart';
import '../../../shared/widgets/titleAppBar.dart';
import '../../../translations/locale_keys.g.dart';
import '../../wallet/widgets/custom_my_row_wallet.dart';
import '../../wallet/widgets/custom_row_wallet.dart';
import '../../wallet/widgets/my_card.dart';
import '../../wallet/widgets/my_container.dart';

class QuickScreen extends StatelessWidget {
  const QuickScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 0,
        leading: SizedBox(),
        centerTitle: true,
        title: TitleAppBar(title: LocaleKeys.orderHistory.tr()),
      ),
      body: BlocBuilder<QuickCubit, QuickState>(
        builder: (context, state) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 28.h),
            child: Column(
              children: [
                MyContainer(
                    value: QuickCubit.instance.value,
                    changeValue: (String value) {
                      QuickCubit.instance.selectCard(value);
                    },
                    list: QuickCubit.instance.words),
                SizedBox(height: 16.h),
                GridView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 74,
                    crossAxisSpacing: 16.w,
                    mainAxisSpacing: 8.h,
                  ),
                  children: [
                    MyCard(
                      title: 'pending withdraw',
                      price: 'SAR 5.068.00',
                    ),
                    MyCard(
                      title: 'withdrawn',
                      price: 'SAR 0.00',
                    ),
                    MyCard(
                      title: 'collected cash from customer',
                      price: 'SAR 733.23',
                    ),
                    MyCard(
                      title: 'total earning',
                      price: 'SAR 10,113.51',
                    ),
                  ],
                ),
                SizedBox(height: 30.h),
                Container(
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "withdrawable history",
                        style: AppTextStyle.textStyle(
                          appFontSize: 12.sp,
                          appFontWeight: FontWeight.w600,
                          appFontHeight: 14.52.sp,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "view all",
                        style: AppTextStyle.textStyle(
                          appFontSize: 12.sp,
                          appFontWeight: FontWeight.w600,
                          appFontHeight: 14.52.sp,
                          color: Color(0xff7C0631),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8.h),
                CustomRowWallet(
                  title: '04 jun 2023 07:03',
                  price: 'SAR 68.00',
                ),
                CustomMyRowWallet(
                  title: 'transforred to bank',
                  subTitle: 'pending',
                ),
                Divider(),
                CustomRowWallet(
                  title: '09 sep 2023 15:25',
                  price: 'SAR 43.50',
                ),
                CustomMyRowWallet(
                  title: 'withdrawn in cash',
                  subTitle: 'completed',
                ),
                Divider(),
                CustomRowWallet(
                  title: '22 dec 2023 09:45',
                  price: 'SAR 25.75',
                ),
                CustomMyRowWallet(
                  title: 'payment received',
                  subTitle: 'pending',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
