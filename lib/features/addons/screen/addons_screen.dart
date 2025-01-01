import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/shared/classes/text_style.dart';
import 'package:restaurant/shared/widgets/leading_app_bar.dart';
import 'package:restaurant/shared/widgets/titleAppBar.dart';

class AddonsScreen extends StatelessWidget {
  const AddonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff7C0631),
        foregroundColor: Colors.white,
        onPressed: () {},
        child: Icon(
          Icons.add_circle_outline_sharp,
          size: 35,
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        leading: LeadingAppBar(),
        title: TitleAppBar(title: "Addons"),
      ),
      body: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          itemCount: 10,
          itemBuilder: (_, index) {
            return Container(
              child: Row(
                children: [
                  Text(
                    "extra chicken",
                    style: AppTextStyle.textStyle(
                      appFontSize: 12.sp,
                      appFontHeight: 14.52.sp,
                      appFontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(0.85),
                    ),
                  ),
                  Spacer(),
                  Row(
                    spacing: 8.w,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "SAR 12.00",
                        style: AppTextStyle.textStyle(
                          appFontSize: 12.sp,
                          appFontHeight: 14.52.sp,
                          appFontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(0.85),
                        ),
                      ),
                      PopupMenuButton(itemBuilder: (context) {
                        return [
                          PopupMenuItem(child: Text("one")),
                          PopupMenuItem(child: Text("Two")),
                        ];
                      }),
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}
