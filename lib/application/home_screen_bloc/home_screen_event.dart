part of 'home_screen_bloc.dart';

@freezed
class HomeScreenEvent with _$HomeScreenEvent {
  const factory HomeScreenEvent.started() = _Started;
  const factory HomeScreenEvent.nextButtonClicked() = _NextButtonClicked;
  const factory HomeScreenEvent.selectedIndex({
     int? selectedIndex,
    bool? selectedAnswer
  }) = _SelectedIndex;
}