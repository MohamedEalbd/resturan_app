import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:restaurant/shared/cubits/bloc_observer.dart';
import 'package:restaurant/build_injection.dart' as di;
import 'package:restaurant/core/storage/pref_services.dart';
import 'package:restaurant/my_app.dart';
import 'package:restaurant/translations/codegen_loader.g.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await PrefServices.init();
  Bloc.observer = MyBlocObserver();
  di.init();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('ar'),
        Locale('en'),
      ],
      path: 'assets/translations',
      fallbackLocale: const Locale('ar'),
      startLocale: const Locale("en"),
      assetLoader: const CodegenLoader(),
      child: const MyApp(),
    ),
  );
}
