import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:untitled/models/result_response.dart';
import 'package:untitled/services/api_function.dart';
import 'package:untitled/services/server_constants.dart';

class ResultApiProvider {
  final String _url = ServerConstant().base_url + ServerConstant.result;

  getAssessmentResult(BuildContext context) async {
    try {
      // String? token = await AppFunctions.getAccessTokenFromSharedPrefs();
      String? token = "await AppFunctions.getAccessTokenFromSharedPrefs()";
      Response response = await APIFunction.getAPICall(
          apiName: _url, header: {"Authorization": token}, context: context);

      return ResultResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return ResultResponse.withError("Data not found / Connection issue");
    }
  }
}
