import 'package:restaurant/build_injection.dart';
import 'package:restaurant/features/chat/cubit/chat_cubit.dart';

void chatInjection(){
  getIt.registerFactory<ChatCubit>(()=>ChatCubit());
}