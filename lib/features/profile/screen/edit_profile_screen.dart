import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/core/classes/responsive_screen.dart';
import 'package:restaurant/core/functions/profile_widget.dart';
import 'package:restaurant/core/functions/snackbasr_widget.dart';
import 'package:restaurant/features/profile/cubit/profile_cubit.dart';
import 'package:restaurant/features/profile/models/profile_response_model.dart';
import 'package:restaurant/features/profile/widgets/custom_edit_info.dart';
import 'package:restaurant/features/profile/widgets/custom_my_lable_text.dart';
import 'package:restaurant/shared/classes/text_style.dart';
import 'package:restaurant/shared/extentions/navigations.dart';
import 'package:restaurant/shared/resources/image_resources.dart';
import 'package:restaurant/shared/widgets/build_button_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:restaurant/translations/locale_keys.g.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key, required this.user});
  final ProfileResponseModel user;

  @override
  Widget build(BuildContext context) {
    ResponsiveScreen.initialize(context);
    return BlocListener<ProfileCubit, ProfileState>(
      listener: (context, state) {
        if (state is UpdateProfileSuccess) {
          ProfileCubit.instance.getData();
          context.pop();
        } else if (state is UpdateProfileFailure) {
          snackBar("error about data");
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 50.h),
                    child: Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          height: 200.h,
                          decoration: BoxDecoration(
                            color: Color(0xff7C0631),
                            //#2B3D16
                          ),
                        ),
                        Positioned(
                          bottom: -45.h,
                          child: Container(
                            height: 90.h,
                            width: 90.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100.r),
                              color: Colors.white,
                            ),
                            child: ClipRRect(
                              child: user.image != null
                                  ? profileWidget(imageUrl: user.image)
                                  : Image.asset(ImageResources.picProfile),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24.h),
                  CustomMyLabelText(labelText: "first name"),
                  SizedBox(height: 8.h),
                  CustomEditInfo(
                    hintText: "first name",
                    controller: ProfileCubit.instance.fName,
                  ),
                  SizedBox(height: 16.h),
                  CustomMyLabelText(labelText: "last name"),
                  SizedBox(height: 8.h),
                  CustomEditInfo(
                    hintText: "last name",
                    controller: ProfileCubit.instance.lName,
                  ),
                  SizedBox(height: 16.h),
                  CustomMyLabelText(labelText: LocaleKeys.phone.tr()),
                  SizedBox(height: 8.h),
                  CustomEditInfo(
                    hintText: LocaleKeys.phone.tr(),
                    keyboardType: TextInputType.phone,
                    controller: ProfileCubit.instance.phone,
                  ),
                  SizedBox(height: 16.h),
                  CustomMyLabelText(labelText: LocaleKeys.email.tr()),
                  SizedBox(height: 8.h),
                  Container(
                    width: 358.w,
                    height: 45,
                    alignment: context.locale.languageCode == 'ar'
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    margin: EdgeInsets.symmetric(horizontal: 16.w),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6.r),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(3, 6),
                          blurRadius: 10,
                          spreadRadius: 3,
                          color: Colors.grey.withOpacity(0.5),
                        )
                      ],
                    ),
                    child: Text(
                      user.email!,
                      style: AppTextStyle.textStyle(
                        appFontSize: 14.sp,
                        appFontHeight: 16.94.sp,
                        appFontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: ResponsiveScreen.height * 0.15),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16.w),
                    child: BuildButtonWidget(
                      txt: "Update",
                      onTap: () async {
                        ProfileCubit.instance.updateProfile();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
