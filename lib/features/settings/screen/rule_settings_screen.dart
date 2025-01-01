import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/features/foods/widgets/custom_rows.dart';
import 'package:restaurant/features/profile/widgets/custom_my_lable_text.dart';
import 'package:restaurant/features/settings/cubit/settings_cubit.dart';
import 'package:restaurant/features/settings/widgets/card_rule_settings.dart';
import 'package:restaurant/shared/widgets/build_button_widget.dart';
import 'package:restaurant/shared/widgets/leading_app_bar.dart';
import 'package:restaurant/shared/widgets/titleAppBar.dart';
import 'package:restaurant/translations/locale_keys.g.dart';

class RuleSettingsScreen extends StatelessWidget {
  const RuleSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: LeadingAppBar(),
        centerTitle: true,
        title: TitleAppBar(title: "Restaurant Settings"),
      ),
      body: Container(
        margin: EdgeInsets.only(
          right: 16.w,
          left: 16.w,
          top: 33.h,
          bottom: 20.h,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8.h,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    spacing: 8.h,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomMyLabelText(
                        labelText: "minimum order amount",
                        isMarg: true,
                      ),
                      CardRuleSettings(title: "0.0"),
                    ],
                  ),
                  Column(
                    spacing: 8.h,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomMyLabelText(
                        labelText: "per km delivery charge",
                        isMarg: true,
                      ),
                      CardRuleSettings(
                        title: "per km delivery charge",
                        isLight: true,
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    spacing: 8.h,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomMyLabelText(
                        labelText: "minimum delivery charge",
                        isMarg: true,
                      ),
                      CardRuleSettings(title: "0.0"),
                    ],
                  ),
                  Column(
                    spacing: 8.h,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomMyLabelText(
                        labelText: "maximum delivery charge",
                        isMarg: true,
                      ),
                      CardRuleSettings(
                        title: "maximum delivery charge",
                        isLight: true,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16.w),
              CustomMyLabelText(
                labelText: "food type",
                isMarg: true,
              ),
              SizedBox(height: 8.h),
              BlocBuilder<SettingsCubit, SettingsState>(
                builder: (context, state) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Checkbox(
                          activeColor: Color(0xff2B3D16),
                          value: SettingsCubit.instance.checkBoxOne,
                          onChanged: (newValue) {
                            SettingsCubit.instance.setCheckBoxOne(newValue!);
                          }),
                      Checkbox(
                        activeColor: Color(0xff2B3D16),
                        value: SettingsCubit.instance.checkBoxTwo,
                        onChanged: (newValue) {
                          SettingsCubit.instance.setCheckBoxTwo(newValue!);
                        },
                      ),
                    ],
                  );
                },
              ),
              SizedBox(height: 16.w),
              CustomMyLabelText(
                labelText: "daily schedule time",
                isMarg: true,
              ),
              SizedBox(height: 8.h),
              CustomRows(
                isMargin: true,
                title: "${LocaleKeys.sunday.tr()}",
                isTitle: true,
              ),
              SizedBox(height: 8.h),
              CustomRows(
                isMargin: true,
                title: "${LocaleKeys.monday.tr()}",
                isTitle: true,
                isTwoBox: true,
              ),
              SizedBox(height: 8.h),
              CustomRows(
                isMargin: true,
                title: "${LocaleKeys.tuesday.tr()}",
                isTitle: true,
                isTwoBox: true,
              ),
              SizedBox(height: 8.h),
              CustomRows(
                isMargin: true,
                title: "${LocaleKeys.wednesday.tr()}",
              ),
              SizedBox(height: 8.h),
              CustomRows(
                isMargin: true,
                title: "${LocaleKeys.thursday.tr()}",
              ),
              SizedBox(height: 8.h),
              CustomRows(
                isMargin: true,
                title: "${LocaleKeys.friday.tr()}",
              ),
              SizedBox(height: 8.h),
              CustomRows(
                isMargin: true,
                title: "${LocaleKeys.saturday.tr()}",
              ),
              SizedBox(height: 30.h),
              BuildButtonWidget(txt: "Update"),
            ],
          ),
        ),
      ),
    );
  }
}
