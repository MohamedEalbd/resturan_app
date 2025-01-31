import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant/core/apis/links/api_keys.dart';
import 'package:restaurant/core/apis/links/end_points.dart';
import 'package:restaurant/core/classes/set_up_logger.dart';
import 'package:restaurant/core/storage/secure_storage_service.dart';
import 'package:restaurant/features/auth/models/error_sign_in_model.dart';
import 'package:restaurant/features/profile/models/profile_response_model.dart';
import 'package:restaurant/my_app.dart';
import 'package:http/http.dart' as http;

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileInitial());

  static final ProfileCubit _profileCubit =
      BlocProvider.of(navigatorKey.currentContext!);
  static ProfileCubit get instance => _profileCubit;
  TextEditingController fName = TextEditingController();
  TextEditingController lName = TextEditingController();
  TextEditingController phone = TextEditingController();

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

  Future<void> getData() async {
    try {
      emit(ProfileLoading());
      final email =
          await SecureStorageService.instance.getValue(key: ApiKeys.email);
      final password =
          await SecureStorageService.instance.getValue(key: ApiKeys.password);
      final token =
          await SecureStorageService.instance.getValue(key: ApiKeys.token);
      final headers = {
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $token' //Vendor
      };
      final response = await http.get(
          Uri.parse(
              '${EndPoints.baseUrl}${EndPoints.getDataProfile(email!, password!)}'),
          headers: headers);
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        SetUpLogger.instance.printLog(data);
        final profileResponseModel = ProfileResponseModel.fromJson(data);
        fName = TextEditingController(text: profileResponseModel.fName);
        lName = TextEditingController(text: profileResponseModel.lName);
        phone = TextEditingController(text: profileResponseModel.phone);
        emit(ProfileSuccess(data: profileResponseModel));
      } else {
        //* Handle error response (Invalid credentials or server error)
        final responseData = jsonDecode(response.body);
        ErrorModel errorResponse = ErrorModel.fromJson(responseData);
        for (var err in errorResponse.errors) {
          SetUpLogger.instance.printLog(
              "Error Code: ${err.code}, Message: ${err.message}",
              char: 'w');
        }
      }
    } catch (e) {
      SetUpLogger.instance.printLog(e, char: 'e');
    }
  }

  Future<void> updateProfile() async {
    try {
      emit(UpdateProfileLoading());
      final token =
          await SecureStorageService.instance.getValue(key: ApiKeys.token);
      final headers = {
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $token' //Vendor
      };
      final response = await http.put(
          Uri.parse(
              '${EndPoints.baseUrl}${EndPoints.updateProfile(fName.text.trim(), lName.text.trim(), phone.text.trim())}'),
          headers: headers);
      SetUpLogger.instance.printLog("headers $headers");
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        SetUpLogger.instance.printLog(data);
        final profileResponseModel = ProfileResponseModel.fromJson(data);
        emit(UpdateProfileSuccess(data: profileResponseModel));
      } else {
        //* Handle error response (Invalid credentials or server error)
        final responseData = jsonDecode(response.body);
        ErrorModel errorResponse = ErrorModel.fromJson(responseData);
        for (var err in errorResponse.errors) {
          SetUpLogger.instance.printLog(
              "Error Code: ${err.code}, Message: ${err.message}",
              char: 'w');
        }
      }
    } catch (e) {
      SetUpLogger.instance.printLog(e, char: 'e');
    }
  }
}
