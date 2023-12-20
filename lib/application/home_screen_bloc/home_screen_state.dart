part of 'home_screen_bloc.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState({
    required bool isLoading,
    required List<QuizModel> quizList,
    required int index,
    required bool nextShow,
     int? selectedIndex,
  }) = _HomeScreenState;

  factory HomeScreenState.initial() {
    return const HomeScreenState(
      isLoading: true,
      quizList: [],
      index: 0,
      nextShow: false,
      selectedIndex: null
    );
  }
}