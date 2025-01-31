import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:restaurant/core/apis/links/api_keys.dart';
import 'package:restaurant/core/apis/links/end_points.dart';
import 'package:restaurant/core/classes/set_up_logger.dart';
import 'package:restaurant/core/functions/snackbasr_widget.dart';
import 'package:restaurant/core/storage/secure_storage_service.dart';
import 'package:restaurant/features/auth/models/error_sign_in_model.dart';
import 'package:restaurant/features/auth/models/error_sign_up_model.dart';
import 'package:restaurant/features/auth/models/sign-Up_model.dart';
import 'package:restaurant/features/auth/models/sign_in_model.dart';
import 'package:restaurant/my_app.dart';
import 'package:restaurant/shared/cubits/location_bloc/location_cubit.dart';
import 'package:http/http.dart' as http;
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  static final AuthCubit _authCubit =
      BlocProvider.of(navigatorKey.currentContext!);
  static AuthCubit get instance => _authCubit;

  final signUpKey = GlobalKey<FormState>();

  final TextEditingController name = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController minDeliveryTime = TextEditingController();
  final TextEditingController maxDeliveryTime = TextEditingController();
  final TextEditingController zoneId = TextEditingController();
  final TextEditingController logo = TextEditingController();
  final TextEditingController coverPhoto = TextEditingController();
  final TextEditingController vat = TextEditingController();
  final TextEditingController deliveryTimeType = TextEditingController();
  final TextEditingController translations = TextEditingController();
  final TextEditingController fName = TextEditingController();
  final TextEditingController loginEmail = TextEditingController();
  final TextEditingController loginPassword = TextEditingController();

  Future<void> signUp() async {
    try {
      if (signUpKey.currentState!.validate()) {
        emit(SignUpLoading());
        final response = await http.post(
            Uri.parse(
              "${EndPoints.baseUrl}${EndPoints.signUp}",
            ),
            body: {
              ApiKeys.name: "${[name.text.trim()]}",
              ApiKeys.lat: LocationCubit.instance.position!.latitude.toString(),
              ApiKeys.lng:
                  LocationCubit.instance.position!.longitude.toString(),
              ApiKeys.email: email.text.trim(),
              ApiKeys.phone: phone.text.trim(),
              ApiKeys.minDeliveryTime: minDeliveryTime.text.trim(),
              ApiKeys.maxDeliveryTime: maxDeliveryTime.text.trim(),
              ApiKeys.password: password.text.trim(),
              ApiKeys.zoneId: zoneId.text.trim(),
              ApiKeys.logo: logo.text.trim(),
              ApiKeys.coverPhoto: coverPhoto.text.trim(),
              ApiKeys.vat: vat.text.trim(),
              ApiKeys.deliveryTimeType: deliveryTimeType.text.trim(),
              ApiKeys.translations:
                  "[{\"value\":\"restaurant_name\",\"locale\":\"e.g\"},{\"value\":\"restaurant_address\",\"locale\":\"e.g\"}]",
              // translations.text.trim(),
              ApiKeys.fName: fName.text.trim(),
            });
        if (response.statusCode == 200) {
          final result = jsonDecode(response.body);
          SetUpLogger.instance.printLog("result: $result");
          final user = SignUpModel.fromJson(result);
          emit(SignUpSuccess(user));
        } else {
          // Handle error response
          final Map<String, dynamic> responseData = jsonDecode(response.body);
          ErrorSignUpModel error = ErrorSignUpModel.fromJson(responseData);
          for (var err in error.errors) {
            SetUpLogger.instance.printLog(
                "Error Code: ${err.code}, Message: ${err.message}",
                char: 'w');
          }
        }
      }
    } catch (e) {
      SetUpLogger.instance.printLog(e, char: 'e');
    }
  }

  Future<void> login() async {
    try {
      if (loginEmail.text.trim().isNotEmpty &&
          loginPassword.text.trim().isNotEmpty) {
        emit(SignInLoading());
        final response = await http.post(Uri.parse(
            "${EndPoints.baseUrl}${EndPoints.login(loginEmail.text.trim(), loginPassword.text.trim())}"));

        if (response.statusCode == 200) {
          SecureStorageService.instance
              .setValue(key: ApiKeys.email, value: loginEmail.text.trim());
          SecureStorageService.instance.setValue(
              key: ApiKeys.password, value: loginPassword.text.trim());
          final signInModel = SignInModel.fromJson(
              const JsonDecoder().convert(utf8.decode(response.bodyBytes)));
          //* print result (data)
          SetUpLogger.instance.printLog("result: $signInModel");
          //* print token
          SetUpLogger.instance.printLog("token: ${signInModel.token}");
          SecureStorageService.instance
              .setValue(key: ApiKeys.token, value: signInModel.token);
          SetUpLogger.instance.printLog("success: Login");
          emit(SignInSuccess(signInModel));
        } else {
          //* Handle error response (Invalid credentials or server error)
          final responseData = jsonDecode(response.body);
          ErrorModel errorResponse =
              ErrorModel.fromJson(responseData);
          for (var err in errorResponse.errors) {
            SetUpLogger.instance.printLog(
                "Error Code: ${err.code}, Message: ${err.message}",
                char: 'w');
          }
        }
      } else {
        snackBar("please full this fields");
      }
    } catch (e) {
      SetUpLogger.instance.printLog(e, char: 'e');
    }
  }
}
