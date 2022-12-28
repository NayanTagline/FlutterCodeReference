part of 'result_bloc.dart';

abstract class ResultEvent extends Equatable {
  const ResultEvent();

  @override
  List<Object> get props => [];
}

class GetAssessmentResult extends ResultEvent {
  BuildContext context;

  GetAssessmentResult({
    required this.context,
  });
}
