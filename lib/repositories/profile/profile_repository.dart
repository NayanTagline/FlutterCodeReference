import 'package:flutter/material.dart';
import 'package:untitled/models/profile_response.dart';
import 'package:untitled/repositories/profile/profile_api_provider.dart';

class ProfileRepository {
  final _provider = ProfileApiProvider();

  Future<ProfileResponse> getProfileDetails(BuildContext context) async {
    return _provider.getProfileDetails(
      context,
    );
  }

  Future<ProfileResponse> updateProfile(
      {required BuildContext context,
      required Map<String, dynamic> body}) async {
    return _provider.updateProfile(context, body);
  }
}

class NetworkError extends Error {}
