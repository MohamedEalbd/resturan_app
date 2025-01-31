import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:restaurant/core/classes/set_up_logger.dart';
import 'package:restaurant/core/storage/secure_storage_service.dart';
import 'package:restaurant/shared/cubits/bloc_observer.dart';
import 'package:restaurant/build_injection.dart' as di;
import 'package:restaurant/core/storage/pref_services.dart';
import 'package:restaurant/my_app.dart';
import 'package:restaurant/translations/codegen_loader.g.dart';
import 'package:error_stack/error_stack.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await PrefServices.instance.init();
  await SecureStorageService.instance.init();
  await ErrorStack.init();
  SetUpLogger.instance.initLogger();
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


//Osama@ooo25
//Hima@gmail.com