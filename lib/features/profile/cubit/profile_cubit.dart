import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant/my_app.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileInitial());
  
  static final ProfileCubit _profileCubit = BlocProvider.of(navigatorKey.currentContext!);
  static  ProfileCubit get instance => _profileCubit;

   bool switchOne = false;
  bool switchTwo = false;

   void changeSwitchOne(bool value) {
    switchOne = value;
    emit(ChangeSwitchOne(value: switchOne));
    emit(ChangeColor());
  }

  void changeSwitchTwo(bool value) {
    switchTwo = value;
    emit(ChangeSwitchOne(value: switchTwo));
    emit(ChangeColor());
  }

}
