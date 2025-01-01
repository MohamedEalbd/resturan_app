import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:restaurant/my_app.dart';

part 'quick_state.dart';

class QuickCubit extends Cubit<QuickState> {
  QuickCubit() : super(QuickInitial());

  static final QuickCubit _quickCubit =
      BlocProvider.of(navigatorKey.currentContext!);
  static QuickCubit get instance => _quickCubit;

  String? value2 = "Card";
  String? value3 = "Card";
  String? value = "withdraw";

  List<String> words = ["withdraw", "card One", "Card Two", "Card"];

  List<String> words2 = ["withdraw", "card One", "Card Two", "Card"];
  List<String> words3 = ["withdraw", "card One", "Card Two", "Card"];

  void selectCard(String value) {
    this.value = value;
    emit(SelectCard(this.value!));
    emit(ChangeValue());
  }

  void selectCard2(String value) {
    this.value2 = value;
    emit(SelectCard(this.value2!));
    emit(ChangeValue());
  }

  void selectCard3(String value) {
    this.value3 = value;
    emit(SelectCard(this.value3!));
    emit(ChangeValue());
  }
}
