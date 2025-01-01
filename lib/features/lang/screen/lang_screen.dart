import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/features/lang/cubit/lang_cubit.dart';
import 'package:restaurant/features/lang/widgets/card_language.dart';
import 'package:restaurant/shared/resources/image_resources.dart';
import 'package:restaurant/shared/widgets/build_button_widget.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        margin:
            EdgeInsets.only(right: 16.w, left: 16.w, top: 126.h, bottom: 20.h),
        child: Column(
          children: [
            Image.asset(ImageResources.knz),
            SizedBox(height: 89.h),
            BlocBuilder<LangCubit, LangState>(
              builder: (context, state) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ...List.generate(LangCubit.instance.langs.length, (index) {
                      return CardLanguage(
                        lang: LangCubit.instance.langs[index].name,
                        image: LangCubit.instance.langs[index].image,
                      );
                    })
                  ],
                );
              },
            ),
            Spacer(),
            BuildButtonWidget(txt: "save"),
          ],
        ),
      )),
    );
  }
}
