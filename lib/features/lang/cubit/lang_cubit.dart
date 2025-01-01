import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant/features/lang/models/lang_model.dart';
import 'package:restaurant/my_app.dart';
import 'package:restaurant/shared/resources/image_resources.dart';
import 'package:restaurant/translations/locale_keys.g.dart';

part 'lang_state.dart';

class LangCubit extends Cubit<LangState> {
  LangCubit() : super(LangInitial());

  static final LangCubit _langCubit =
      BlocProvider.of(navigatorKey.currentContext!);
  static LangCubit get instance => _langCubit;

  List<LangModel> langs = [
    LangModel(
        id: 1, name: LocaleKeys.english.tr(), image: ImageResources.enLogo),
    LangModel(id: 2, name: "عربي", image: ImageResources.arLogo),
  ];
}
