import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant/core/routes/routes.dart';
import 'package:restaurant/features/home_tap/cubit/home_tap_cubit.dart';
import 'package:restaurant/features/home_tap/widgets/custom_appBar.dart';
import 'package:restaurant/shared/extentions/navigations.dart';
import 'package:restaurant/shared/resources/image_resources.dart';

class HomeTapScreen extends StatelessWidget {
  const HomeTapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeTapCubit, HomeTapState>(
      builder: (context, state) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            backgroundColor: Color(0xffFFFFFF),
            shape: const CircleBorder(),
            child: Image.asset(ImageResources.home),
            onPressed: () {
              context.pushNamed(Routes.foods);
            },
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomAppBar(
            padding: const EdgeInsets.all(10),
            elevation: 0.5,
            height: 64,
            shape: const CircularNotchedRectangle(),
            notchMargin: 8,
            color: Colors.grey[200],
            child: Row(
              children: [
                ...List.generate(HomeTapCubit.instance.pages.length + 1,
                    (index) {
                  int i = index > 2 ? index - 1 : index;
                  return index == 2
                      ? const Spacer()
                      : CustomButtonAppBar(
                          active: HomeTapCubit.instance.currentIndex == i
                              ? true
                              : false,
                          onPressed: () {
                            HomeTapCubit.instance.changePage(i);
                          },
                          image: HomeTapCubit.instance.words[i]['icon'],
                          text: HomeTapCubit.instance.words[i]['title'],
                        );
                }),
              ],
            ),
          ),
          body: PopScope(
            child: HomeTapCubit.instance.pages
                .elementAt(HomeTapCubit.instance.currentIndex),
            onPopInvokedWithResult: (d, s) {
              //   return exitDialog();
              return;
            },
          ),
        );
      },
    );
  }
}
