import 'package:dio/dio.dart';
import 'package:restaurant/features/auth/models/error_sign_up_model.dart';

import 'error_model.dart';

class ServerException implements Exception {
  final ErrorSignUpModel errorModel;

  ServerException({required this.errorModel});
}

void handleDioException(DioException e, {bool isAUth = false, dynamic data}) {
  if (isAUth) {
    try {
      ErrorSignUpModel error = ErrorSignUpModel.fromJson(data);
      for (var err in error.errors) {
        print("Error Code: ${err.code}, Message: ${err.message}");
      }
    } catch (e) {
      print("Failed to parse error response: $e");
    }
  }
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
      throw ServerException(
          errorModel: ErrorSignUpModel.fromJson(e.response!.data));
    case DioExceptionType.sendTimeout:
      throw ServerException(
          errorModel: ErrorSignUpModel.fromJson(e.response!.data));
    case DioExceptionType.receiveTimeout:
      throw ServerException(
          errorModel: ErrorSignUpModel.fromJson(e.response!.data));
    case DioExceptionType.badCertificate:
      throw ServerException(
          errorModel: ErrorSignUpModel.fromJson(e.response!.data));
    case DioExceptionType.cancel:
      throw ServerException(
          errorModel: ErrorSignUpModel.fromJson(e.response!.data));
    case DioExceptionType.connectionError:
      throw ServerException(
          errorModel: ErrorSignUpModel.fromJson(e.response!.data));
    case DioExceptionType.unknown:
      throw ServerException(
          errorModel: ErrorSignUpModel.fromJson(e.response!.data));

    case DioExceptionType.badResponse:
      switch (e.response!.statusCode) {
        case 400:
          throw ServerException(
              errorModel: ErrorSignUpModel.fromJson(e.response!.data));
        case 401:
          throw ServerException(
              errorModel: ErrorSignUpModel.fromJson(e.response!.data));
        case 403:
          throw ServerException(
              errorModel: ErrorSignUpModel.fromJson(e.response!.data));
        case 404:
          throw ServerException(
              errorModel: ErrorSignUpModel.fromJson(e.response!.data));
        case 409:
          throw ServerException(
              errorModel: ErrorSignUpModel.fromJson(e.response!.data));
        case 422:
          throw ServerException(
              errorModel: ErrorSignUpModel.fromJson(e.response!.data));
        case 504:
          throw ServerException(
              errorModel: ErrorSignUpModel.fromJson(e.response!.data));
        default:
          throw ServerException(
              errorModel: ErrorSignUpModel.fromJson(e.response!.data));
      }
  }
}

handleErrorSignUpModel(dynamic data) {
  try {
    ErrorSignUpModel error = ErrorSignUpModel.fromJson(data);
    for (var err in error.errors) {
      print("Error Code: ${err.code}, Message: ${err.message}");
    }
  } catch (e) {
    print("Failed to parse error response: $e");
  }
}
