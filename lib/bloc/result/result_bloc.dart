import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/models/result_response.dart';
import 'package:untitled/repositories/result/result_repository.dart';

part 'result_event.dart';
part 'result_state.dart';

class ResultBloc extends Bloc<GetAssessmentResult, ResultState> {
  ResultBloc() : super(ResultInitial()) {
    final ResultRepository _apiRepository = ResultRepository();

    on<GetAssessmentResult>((event, emit) async {
      try {
        emit(ResultLoading());
        final mList = await _apiRepository.getAssessmentResult(event.context);
        if (mList.statusCode == 200) {
          emit(ResultLoaded(mList));
        } else {
          emit(ResultError(mList.error));
        }
        // AppFunctions.reLoginTokenExpired(mList.statusCode!, event.context);
      } on NetworkError {
        emit(const ResultError("Failed to fetch data. is your device online?"));
      }
    });
  }
}
