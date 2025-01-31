import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:restaurant/core/functions/profile_widget.dart';
import 'package:restaurant/core/routes/routes.dart';
import 'package:restaurant/features/profile/cubit/profile_cubit.dart';
import 'package:restaurant/features/profile/widgets/custom_list_tile.dart';
import 'package:restaurant/features/wallet/widgets/my_card.dart';
import 'package:restaurant/shared/classes/text_style.dart';
import 'package:restaurant/shared/extentions/navigations.dart';
import 'package:restaurant/shared/resources/image_resources.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    super.initState();
    ProfileCubit.instance.getData();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is ProfileSuccess) {
          final user = state.data;
          return Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 66.h),
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
                  Text(
                    user.fName!,
                    style: AppTextStyle.textStyle(
                      appFontSize: 14.sp,
                      appFontHeight: 16.94.sp,
                      appFontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyCard(
                          title: 'joining',
                          price: '${user.memberSinceDays} days',
                        ),
                        MyCard(
                          title: 'order',
                          price: '${user.orderCount}',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40.h),
                  CustomListTileProfile(
                    icon: Icons.dark_mode,
                    title: 'dark mode',
                    widget: Container(
                      height: 30.h,
                      width: 63.w,
                      child: FlutterSwitch(
                        activeColor: Color(0xff2B3D16),
                        value: ProfileCubit.instance.switchOne,
                        showOnOff: true,
                        onToggle: (val) {
                          ProfileCubit.instance.changeSwitchOne(val);
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 8.h),
                  CustomListTileProfile(
                    icon: Icons.notifications_rounded,
                    title: 'notification',
                    widget: Container(
                      height: 30.h,
                      width: 63.w,
                      child: FlutterSwitch(
                        activeColor: Color(0xff2B3D16),
                        value: ProfileCubit.instance.switchTwo,
                        showOnOff: true,
                        onToggle: (val) {
                          //newValue(val);
                          ProfileCubit.instance.changeSwitchTwo(val);
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 8.h),
                  CustomListTileProfile(
                    icon: Icons.lock,
                    title: 'change password',
                  ),
                  SizedBox(height: 8.h),
                  CustomListTileProfile(
                    onTap: () {
                      context.pushNamed(Routes.editProfile,arguments: user);
                    },
                    icon: Icons.edit,
                    title: 'edit profile',
                  ),
                  SizedBox(height: 8.h),
                  CustomListTileProfile(
                    icon: Icons.delete_rounded,
                    title: 'delete account',
                  ),
                ],
              ),
            ),
          );
        }
        return Scaffold(body: Center(child: CircularProgressIndicator()));
      },
    );
  }
}
