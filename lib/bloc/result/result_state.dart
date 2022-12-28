part of 'result_bloc.dart';

abstract class ResultState extends Equatable {
  const ResultState();

  @override
  List<Object?> get props => [];
}

class ResultInitial extends ResultState {}

class ResultLoading extends ResultState {}

class ResultLoaded extends ResultState {
  final ResultResponse resultModel;
  const ResultLoaded(this.resultModel);
}

class ResultError extends ResultState {
  final String? message;
  const ResultError(this.message);
}
