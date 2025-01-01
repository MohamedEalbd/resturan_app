import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/core/routes/routes.dart';
import 'package:restaurant/shared/extentions/navigations.dart';
import 'package:restaurant/shared/resources/image_resources.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    //ThemeCubit.instance.initSharedData();
    Future.delayed(const Duration(milliseconds: 3000), () {
      context.pushReplacementNamed(Routes.homeTap);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
         height: 100.h,
           width: 120.w,
          padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                offset: Offset(0, 5.0),
                blurRadius: 7.0,
                spreadRadius: 3,
              ),
            ],
          ),
          child: Image.asset(ImageResources.knz),
        ),
      ),
    );
  }

  // getFirst() async {
  //   await SetUpMyApp.getLocation(context);
  //   context.pushReplacementNamed(Routes.home);
  // }
}
