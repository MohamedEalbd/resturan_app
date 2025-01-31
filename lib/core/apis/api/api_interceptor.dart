import 'package:dio/dio.dart';
import 'package:restaurant/core/storage/secure_storage_service.dart';

import '../links/api_keys.dart';


class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers["Accept-Language"] = "en";
    options.headers[ApiKeys.token] ="";
        "Vendor ${SecureStorageService.instance.getValue(key: ApiKeys.token) != null ? SecureStorageService.instance.getValue(key: ApiKeys.token) : null}";

    super.onRequest(options, handler);
  }
}
