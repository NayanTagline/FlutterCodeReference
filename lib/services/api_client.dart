import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:untitled/services/server_constants.dart';

class ApiClient {
  Dio? dio;

  Dio apiClientInstance(Map<String, dynamic> apiheader,
      {required BuildContext context}) {
    BaseOptions options = BaseOptions(
      baseUrl: ServerConstant().base_url,
      connectTimeout: 600000,
      receiveTimeout: 600000,
    );

    dio = Dio(options);

    dio!.interceptors.add(LogInterceptor(responseBody: true));
    dio!.interceptors.add(
      InterceptorsWrapper(
        onRequest:
            (RequestOptions option, RequestInterceptorHandler handler) async {
          Map<String, dynamic> header = apiheader;
          option.headers.addAll(header);
          return handler.next(option);
        },
        onResponse: (Response response, ResponseInterceptorHandler handler) {
          return handler.next(response);
        },
        onError: (DioError e, ErrorInterceptorHandler handler) {
          print('Dio DEFAULT Error Message :---------------> ${e.message}');
          if (e.type == DioErrorType.other) {
            print('<<<<<<<-------------DEFAULT Error---------->>>>>>');
          } else if (e.type == DioErrorType.connectTimeout) {
            print('<<<<<<<-------------CONNECT_TIMEOUT---------->>>>>>');
          } else if (e.type == DioErrorType.receiveTimeout) {
            print('<<<<<<<-------------RECEIVE_TIMEOUT---------->>>>>>');
          }
          if (e.response != null && e.response!.statusCode! == 404) {
            print(e.response!.statusCode!.toString());
          }
          if (e.response != null && e.response!.statusCode! == 422) {
            // showSnackbar(AppLocalizations.of(context)!.invalidMno, context);
          }
          if (e.response != null && e.response!.statusCode! == 500) {
            // showSnackbar(AppLocalizations.of(context)!.servererror, context);
          } else {
            print(e.message);
          }
          return handler.next(e);
        },
      ),
    );
    return dio!;
  }
}
