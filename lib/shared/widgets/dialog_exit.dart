import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/shared/extentions/navigations.dart';
import 'package:restaurant/translations/locale_keys.g.dart';



class ExitDialog extends StatelessWidget {
  const ExitDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      //backgroundColor:AppColors. blueGrey,
      title: Text(
        LocaleKeys.hey.tr(),
        textAlign: TextAlign.center,
      ),
      content: Text(LocaleKeys.exit.tr()),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                context.pop();
              },
              child: Text(LocaleKeys.no.tr()),
            ),
            InkWell(
              onTap: () {
                exit(0);
              },
              child: Text(LocaleKeys.yes.tr()),
            ),
          ],
        ),
      ],
    );
  }
}
