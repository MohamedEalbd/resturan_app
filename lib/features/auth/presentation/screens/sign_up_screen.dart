import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant/core/functions/snackbasr_widget.dart';
import 'package:restaurant/core/routes/routes.dart';
import 'package:restaurant/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:restaurant/features/auth/presentation/widgets/custom_button_auth.dart';
import 'package:restaurant/features/auth/presentation/widgets/custom_text_field_auth.dart';
import 'package:restaurant/shared/classes/text_style.dart';
import 'package:restaurant/shared/extentions/navigations.dart';
import 'package:restaurant/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthCubit, AuthState>(
        builder: (context, state) {
          return Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
            child: SingleChildScrollView(
              child: Form(
                key: AuthCubit.instance.signUpKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 40.h),
                    CustomTextFieldAuth(
                      hintText: LocaleKeys.name.tr(),
                      controller: AuthCubit.instance.name,
                    ),
                    SizedBox(height: 14.h),
                    CustomTextFieldAuth(
                      hintText: LocaleKeys.enterEmail.tr(),
                      controller: AuthCubit.instance.email,
                    ),
                    SizedBox(height: 14.h),
                    CustomTextFieldAuth(
                      keyboardType: TextInputType.phone,
                      hintText: LocaleKeys.phone.tr(),
                      controller: AuthCubit.instance.phone,
                    ),
                    SizedBox(height: 14.h),
                    CustomTextFieldAuth(
                      hintText: LocaleKeys.minDeliveryTime.tr(),
                      controller: AuthCubit.instance.minDeliveryTime,
                    ),
                    SizedBox(height: 14.h),
                    CustomTextFieldAuth(
                      hintText: LocaleKeys.maxDeliveryTime.tr(),
                      controller: AuthCubit.instance.maxDeliveryTime,
                    ),
                    SizedBox(height: 14.h),
                    CustomTextFieldAuth(
                      hintText: LocaleKeys.password.tr(),
                      controller: AuthCubit.instance.password,
                    ),
                    SizedBox(height: 14.h),
                    CustomTextFieldAuth(
                      hintText: LocaleKeys.zoneId.tr(),
                      controller: AuthCubit.instance.zoneId,
                    ),
                    SizedBox(height: 14.h),
                    CustomTextFieldAuth(
                      hintText: LocaleKeys.logo.tr(),
                      controller: AuthCubit.instance.logo,
                    ),
                    SizedBox(height: 14.h),
                    CustomTextFieldAuth(
                      hintText: LocaleKeys.coverPhoto.tr(),
                      controller: AuthCubit.instance.coverPhoto,
                    ),
                    SizedBox(height: 14.h),
                    CustomTextFieldAuth(
                      hintText: LocaleKeys.vat.tr(),
                      controller: AuthCubit.instance.vat,
                    ),
                    SizedBox(height: 14.h),
                    CustomTextFieldAuth(
                      hintText: LocaleKeys.deliveryTimeType.tr(),
                      controller: AuthCubit.instance.deliveryTimeType,
                    ),
                    SizedBox(height: 14.h),
                    CustomTextFieldAuth(
                        hintText: LocaleKeys.translations.tr(),
                        controller: AuthCubit.instance.translations),
                    SizedBox(height: 14.h),
                    CustomTextFieldAuth(
                      hintText: LocaleKeys.fName.tr(),
                      controller: AuthCubit.instance.fName,
                    ),
                    SizedBox(height: 14.h),
                    CustomButtonAuth(
                      title: LocaleKeys.signUp.tr(),
                      onPressed: () async {
                        AuthCubit.instance.signUp();
                      },
                    ),
                    SizedBox(height: 40.h),
                    Align(
                      alignment: Alignment.center,
                      child: GestureDetector(
                        onTap: () {
                          context.pushReplacementNamed(Routes.login);
                        },
                        child: Text(
                          "${LocaleKeys.alreadyHaveAccount.tr()}${context.locale.languageCode == 'ar' ? "؟" : "?"} ${LocaleKeys.login.tr()}",
                          style: AppTextStyle.textStyle(
                            appFontSize: 12.sp,
                            appFontHeight: 14.52.sp,
                            appFontWeight: FontWeight.w500,
                            color: Color(0xff1E1E1E),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
        listener: (context, state) {
          if (state is SignUpSuccess) {
            snackBar(state.signUpModel.message);
            context.pushReplacementNamed(Routes.login);
          } else if (state is SignUpFailure) {
            snackBar(state.errorMessage);
          }
        },
      ),
    );
  }
}
