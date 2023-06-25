

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:state_managements/9-lesson/service/custom_exceptions.dart';

class ApiClient {
  ApiClient() {
    _init();
  }

  late Dio dio;

  _init() {
    dio = Dio(BaseOptions(
        baseUrl: "http://18.159.37.206:3000/api/v2/",
        connectTimeout: 25000,
        receiveTimeout: 20000));

    dio.interceptors.add(InterceptorsWrapper(onError: ((error, handler) {
      switch (error.type) {
        case DioErrorType.connectTimeout:
        case DioErrorType.sendTimeout:
          throw DeadlineExceededException(error.requestOptions);
        case DioErrorType.receiveTimeout:
          throw ReceiveTimeOutException(error.requestOptions);
        case DioErrorType.response:
          switch (error.response?.statusCode) {
            // case 401:
            //   throw UnauthorizedException(error.requestOptions);
            // case 404:
            //   throw NotFoundException(error.requestOptions);
            // case 409:
            //   throw ConflictException(error.requestOptions);
            // case 500:
            // case 501:
            // case 503:
            //   throw InternalServerErrorException(error.requestOptions);
          }
        //   break;
        // case DioErrorType.cancel:
        //   break;
        // case DioErrorType.other:
        //   throw NoInternetConnectionException(error.requestOptions);
      }
      debugPrint('Error Status Code:${error.response?.statusCode}');
      return handler.next(error);
    }), onRequest: (requestOptions, handler) {
      String currentLocale = "uz";
      requestOptions.headers["Accept"] = "application/json";
      requestOptions.headers["Accept-Language"] =
          currentLocale.isEmpty ? "ru" : currentLocale;
      return handler.next(requestOptions);
    }, onResponse: (Response response, ResponseInterceptorHandler handler) {
      return handler.next(response);
    }));
  }
}
