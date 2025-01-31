import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/core/functions/snackbasr_widget.dart';
import 'package:restaurant/core/routes/routes.dart';
import 'package:restaurant/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:restaurant/features/auth/presentation/widgets/custom_button_auth.dart';
import 'package:restaurant/features/auth/presentation/widgets/custom_text_field_auth.dart';
import 'package:restaurant/shared/classes/text_style.dart';
import 'package:restaurant/shared/extentions/navigations.dart';
import 'package:restaurant/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignInSuccess) {
          snackBar(state.message.zoneWiseTopic);
          context.pushNamedAndRemoveUntil(Routes.homeTap);
        } else if (state is SignInFailure) {
          snackBar(state.errorMessage);
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 16.w),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextFieldAuth(
                    controller: AuthCubit.instance.loginEmail,
                    hintText: LocaleKeys.enterEmail.tr(),
                  ),
                  SizedBox(height: 14.h),
                  CustomTextFieldAuth(
                    hintText: LocaleKeys.password.tr(),
                    controller: AuthCubit.instance.loginPassword,
                  ),
                  SizedBox(height: 14.h),
                  CustomButtonAuth(
                    title: LocaleKeys.signIn.tr(),
                    onPressed: () async {
                      AuthCubit.instance.login();
                    },
                  ),
                  SizedBox(height: 40.h),
                  Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {
                        context.pushReplacementNamed(Routes.signUp);
                      },
                      child: Text(
                        "${LocaleKeys.notHaveAnAccount.tr()}${context.locale.languageCode == 'ar' ? "؟" : "?"} ${LocaleKeys.registerNow.tr()}",
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
    );
  }
}
