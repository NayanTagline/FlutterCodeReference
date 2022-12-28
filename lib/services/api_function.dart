import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'api_client.dart';

class APIFunction {
  static Future<dynamic> postAPICall(
    var data, {
    @required String? apiName,
    Map<String, dynamic>? header,
    required BuildContext context,
  }) async {
    try {
      print("${data} postRequest");
      Response response = await ApiClient()
          .apiClientInstance(header ?? {}, context: context)
          .post(
            apiName!,
            data: data,
          );
      return response;
    } catch (e) {
      return null;
    }
  }

  static Future<dynamic> putAPICall(
    var data, {
    @required String? apiName,
    Map<String, dynamic>? header,
    required BuildContext context,
  }) async {
    try {
      Response response = await ApiClient()
          .apiClientInstance(header ?? {}, context: context)
          .put(
            apiName!,
            data: data,
          );
      return response;
    } catch (e) {
      return null;
    }
  }

  static Future<dynamic> getAPICall({
    required String? apiName,
    Map<String, dynamic>? data,
    Map<String, dynamic>? header,
    required BuildContext context,
  }) async {
    try {
      Response response = await ApiClient()
          .apiClientInstance(header ?? {}, context: context)
          .get(apiName!, queryParameters: data);
      return response;
    } catch (e) {
      return null;
    }
  }

  static Future<dynamic> deleteAPICall({
    required String? apiName,
    Map<String, dynamic>? data,
    Map<String, dynamic>? header,
    required BuildContext context,
  }) async {
    try {
      Response response = await ApiClient()
          .apiClientInstance(header ?? {}, context: context)
          .delete(apiName!, queryParameters: data);
      return response;
    } catch (e) {
      return null;
    }
  }

  static Future<dynamic> patchAPICall(data,
      {@required String? apiName,
      Map<String, dynamic>? header,
      required BuildContext context}) async {
    try {
      Response response = await ApiClient()
          .apiClientInstance(header ?? {}, context: context)
          .patch(apiName!, data: data);
      return response;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
