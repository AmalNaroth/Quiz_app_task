part of 'home_screen_bloc.dart';

@freezed
class HomeScreenEvent with _$HomeScreenEvent {
  //starting event
  const factory HomeScreenEvent.started() = _Started;
  //only for next button click
  const factory HomeScreenEvent.nextButtonClicked() = _NextButtonClicked;
  //store data and currect anser
  const factory HomeScreenEvent.selectedIndex({
     int? selectedIndex,
    bool? selectedAnswer
  }) = _SelectedIndex;
}