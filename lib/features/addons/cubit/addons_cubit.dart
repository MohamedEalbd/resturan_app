import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'addons_state.dart';

class AddonsCubit extends Cubit<AddonsState> {
  AddonsCubit() : super(AddonsInitial());
}
