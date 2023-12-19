part of 'start_screen_bloc.dart';

@freezed
class StartScreenEvent with _$StartScreenEvent {
  const factory StartScreenEvent.started() = _Started;
  const factory StartScreenEvent.startQuizButtonClick() = _StartQuizButtonClick;
}