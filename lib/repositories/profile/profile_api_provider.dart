import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:untitled/models/profile_response.dart';
import 'package:untitled/services/api_function.dart';
import 'package:untitled/services/server_constants.dart';

class ProfileApiProvider {
  final String _url = ServerConstant().base_url + ServerConstant.profile;

  Future<ProfileResponse> getProfileDetails(
    BuildContext context,
  ) async {
    try {
      String? token = "await AppFunctions.getAccessTokenFromSharedPrefs()";
      Response response = await APIFunction.getAPICall(
          apiName: _url, header: {"Authorization": token}, context: context);

      return ProfileResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return ProfileResponse.withError("Data not found / Connection issue");
    }
  }

  Future<ProfileResponse> updateProfile(
      BuildContext context, Map<String, dynamic> body) async {
    try {
      String? token = await "AppFunctions.getAccessTokenFromSharedPrefs()";
      Response response = await APIFunction.putAPICall(body,
          apiName: _url, header: {"Authorization": token}, context: context);

      return ProfileResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return ProfileResponse.withError("Data not found / Connection issue");
    }
  }
}
