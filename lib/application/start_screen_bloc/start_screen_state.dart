part of 'start_screen_bloc.dart';

@freezed
class StartScreenState with _$StartScreenState {

  const factory StartScreenState({
    required bool isLoading,
    required List<QuizModel> quizList,
  }) = _StartScreenState;
   factory StartScreenState.initial(){
    return const StartScreenState(
      isLoading: false,
      quizList: []
    );
  }
}