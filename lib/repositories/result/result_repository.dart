import 'package:flutter/material.dart';
import 'package:untitled/repositories/result/result_api_provider.dart';

class ResultRepository {
  final _provider = ResultApiProvider();

  getAssessmentResult(BuildContext context) async {
    return _provider.getAssessmentResult(
      context,
    );
  }
}

class NetworkError extends Error {}
