// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() nextButtonClicked,
    required TResult Function(int? selectedIndex, bool? selectedAnswer)
        selectedIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? nextButtonClicked,
    TResult? Function(int? selectedIndex, bool? selectedAnswer)? selectedIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? nextButtonClicked,
    TResult Function(int? selectedIndex, bool? selectedAnswer)? selectedIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_NextButtonClicked value) nextButtonClicked,
    required TResult Function(_SelectedIndex value) selectedIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_NextButtonClicked value)? nextButtonClicked,
    TResult? Function(_SelectedIndex value)? selectedIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_NextButtonClicked value)? nextButtonClicked,
    TResult Function(_SelectedIndex value)? selectedIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenEventCopyWith<$Res> {
  factory $HomeScreenEventCopyWith(
          HomeScreenEvent value, $Res Function(HomeScreenEvent) then) =
      _$HomeScreenEventCopyWithImpl<$Res, HomeScreenEvent>;
}

/// @nodoc
class _$HomeScreenEventCopyWithImpl<$Res, $Val extends HomeScreenEvent>
    implements $HomeScreenEventCopyWith<$Res> {
  _$HomeScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$HomeScreenEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'HomeScreenEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() nextButtonClicked,
    required TResult Function(int? selectedIndex, bool? selectedAnswer)
        selectedIndex,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? nextButtonClicked,
    TResult? Function(int? selectedIndex, bool? selectedAnswer)? selectedIndex,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? nextButtonClicked,
    TResult Function(int? selectedIndex, bool? selectedAnswer)? selectedIndex,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_NextButtonClicked value) nextButtonClicked,
    required TResult Function(_SelectedIndex value) selectedIndex,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_NextButtonClicked value)? nextButtonClicked,
    TResult? Function(_SelectedIndex value)? selectedIndex,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_NextButtonClicked value)? nextButtonClicked,
    TResult Function(_SelectedIndex value)? selectedIndex,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomeScreenEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$NextButtonClickedImplCopyWith<$Res> {
  factory _$$NextButtonClickedImplCopyWith(_$NextButtonClickedImpl value,
          $Res Function(_$NextButtonClickedImpl) then) =
      __$$NextButtonClickedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextButtonClickedImplCopyWithImpl<$Res>
    extends _$HomeScreenEventCopyWithImpl<$Res, _$NextButtonClickedImpl>
    implements _$$NextButtonClickedImplCopyWith<$Res> {
  __$$NextButtonClickedImplCopyWithImpl(_$NextButtonClickedImpl _value,
      $Res Function(_$NextButtonClickedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NextButtonClickedImpl implements _NextButtonClicked {
  const _$NextButtonClickedImpl();

  @override
  String toString() {
    return 'HomeScreenEvent.nextButtonClicked()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NextButtonClickedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() nextButtonClicked,
    required TResult Function(int? selectedIndex, bool? selectedAnswer)
        selectedIndex,
  }) {
    return nextButtonClicked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? nextButtonClicked,
    TResult? Function(int? selectedIndex, bool? selectedAnswer)? selectedIndex,
  }) {
    return nextButtonClicked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? nextButtonClicked,
    TResult Function(int? selectedIndex, bool? selectedAnswer)? selectedIndex,
    required TResult orElse(),
  }) {
    if (nextButtonClicked != null) {
      return nextButtonClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_NextButtonClicked value) nextButtonClicked,
    required TResult Function(_SelectedIndex value) selectedIndex,
  }) {
    return nextButtonClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_NextButtonClicked value)? nextButtonClicked,
    TResult? Function(_SelectedIndex value)? selectedIndex,
  }) {
    return nextButtonClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_NextButtonClicked value)? nextButtonClicked,
    TResult Function(_SelectedIndex value)? selectedIndex,
    required TResult orElse(),
  }) {
    if (nextButtonClicked != null) {
      return nextButtonClicked(this);
    }
    return orElse();
  }
}

abstract class _NextButtonClicked implements HomeScreenEvent {
  const factory _NextButtonClicked() = _$NextButtonClickedImpl;
}

/// @nodoc
abstract class _$$SelectedIndexImplCopyWith<$Res> {
  factory _$$SelectedIndexImplCopyWith(
          _$SelectedIndexImpl value, $Res Function(_$SelectedIndexImpl) then) =
      __$$SelectedIndexImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? selectedIndex, bool? selectedAnswer});
}

/// @nodoc
class __$$SelectedIndexImplCopyWithImpl<$Res>
    extends _$HomeScreenEventCopyWithImpl<$Res, _$SelectedIndexImpl>
    implements _$$SelectedIndexImplCopyWith<$Res> {
  __$$SelectedIndexImplCopyWithImpl(
      _$SelectedIndexImpl _value, $Res Function(_$SelectedIndexImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = freezed,
    Object? selectedAnswer = freezed,
  }) {
    return _then(_$SelectedIndexImpl(
      selectedIndex: freezed == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedAnswer: freezed == selectedAnswer
          ? _value.selectedAnswer
          : selectedAnswer // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$SelectedIndexImpl implements _SelectedIndex {
  const _$SelectedIndexImpl({this.selectedIndex, this.selectedAnswer});

  @override
  final int? selectedIndex;
  @override
  final bool? selectedAnswer;

  @override
  String toString() {
    return 'HomeScreenEvent.selectedIndex(selectedIndex: $selectedIndex, selectedAnswer: $selectedAnswer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedIndexImpl &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex) &&
            (identical(other.selectedAnswer, selectedAnswer) ||
                other.selectedAnswer == selectedAnswer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedIndex, selectedAnswer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedIndexImplCopyWith<_$SelectedIndexImpl> get copyWith =>
      __$$SelectedIndexImplCopyWithImpl<_$SelectedIndexImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() nextButtonClicked,
    required TResult Function(int? selectedIndex, bool? selectedAnswer)
        selectedIndex,
  }) {
    return selectedIndex(this.selectedIndex, selectedAnswer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? nextButtonClicked,
    TResult? Function(int? selectedIndex, bool? selectedAnswer)? selectedIndex,
  }) {
    return selectedIndex?.call(this.selectedIndex, selectedAnswer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? nextButtonClicked,
    TResult Function(int? selectedIndex, bool? selectedAnswer)? selectedIndex,
    required TResult orElse(),
  }) {
    if (selectedIndex != null) {
      return selectedIndex(this.selectedIndex, selectedAnswer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_NextButtonClicked value) nextButtonClicked,
    required TResult Function(_SelectedIndex value) selectedIndex,
  }) {
    return selectedIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_NextButtonClicked value)? nextButtonClicked,
    TResult? Function(_SelectedIndex value)? selectedIndex,
  }) {
    return selectedIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_NextButtonClicked value)? nextButtonClicked,
    TResult Function(_SelectedIndex value)? selectedIndex,
    required TResult orElse(),
  }) {
    if (selectedIndex != null) {
      return selectedIndex(this);
    }
    return orElse();
  }
}

abstract class _SelectedIndex implements HomeScreenEvent {
  const factory _SelectedIndex(
      {final int? selectedIndex,
      final bool? selectedAnswer}) = _$SelectedIndexImpl;

  int? get selectedIndex;
  bool? get selectedAnswer;
  @JsonKey(ignore: true)
  _$$SelectedIndexImplCopyWith<_$SelectedIndexImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeScreenState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<QuizModel> get quizList => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  bool get nextShow => throw _privateConstructorUsedError;
  int? get selectedIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeScreenStateCopyWith<HomeScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenStateCopyWith<$Res> {
  factory $HomeScreenStateCopyWith(
          HomeScreenState value, $Res Function(HomeScreenState) then) =
      _$HomeScreenStateCopyWithImpl<$Res, HomeScreenState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<QuizModel> quizList,
      int index,
      bool nextShow,
      int? selectedIndex});
}

/// @nodoc
class _$HomeScreenStateCopyWithImpl<$Res, $Val extends HomeScreenState>
    implements $HomeScreenStateCopyWith<$Res> {
  _$HomeScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? quizList = null,
    Object? index = null,
    Object? nextShow = null,
    Object? selectedIndex = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      quizList: null == quizList
          ? _value.quizList
          : quizList // ignore: cast_nullable_to_non_nullable
              as List<QuizModel>,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      nextShow: null == nextShow
          ? _value.nextShow
          : nextShow // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedIndex: freezed == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeScreenStateImplCopyWith<$Res>
    implements $HomeScreenStateCopyWith<$Res> {
  factory _$$HomeScreenStateImplCopyWith(_$HomeScreenStateImpl value,
          $Res Function(_$HomeScreenStateImpl) then) =
      __$$HomeScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<QuizModel> quizList,
      int index,
      bool nextShow,
      int? selectedIndex});
}

/// @nodoc
class __$$HomeScreenStateImplCopyWithImpl<$Res>
    extends _$HomeScreenStateCopyWithImpl<$Res, _$HomeScreenStateImpl>
    implements _$$HomeScreenStateImplCopyWith<$Res> {
  __$$HomeScreenStateImplCopyWithImpl(
      _$HomeScreenStateImpl _value, $Res Function(_$HomeScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? quizList = null,
    Object? index = null,
    Object? nextShow = null,
    Object? selectedIndex = freezed,
  }) {
    return _then(_$HomeScreenStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      quizList: null == quizList
          ? _value._quizList
          : quizList // ignore: cast_nullable_to_non_nullable
              as List<QuizModel>,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      nextShow: null == nextShow
          ? _value.nextShow
          : nextShow // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedIndex: freezed == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$HomeScreenStateImpl implements _HomeScreenState {
  const _$HomeScreenStateImpl(
      {required this.isLoading,
      required final List<QuizModel> quizList,
      required this.index,
      required this.nextShow,
      this.selectedIndex})
      : _quizList = quizList;

  @override
  final bool isLoading;
  final List<QuizModel> _quizList;
  @override
  List<QuizModel> get quizList {
    if (_quizList is EqualUnmodifiableListView) return _quizList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_quizList);
  }

  @override
  final int index;
  @override
  final bool nextShow;
  @override
  final int? selectedIndex;

  @override
  String toString() {
    return 'HomeScreenState(isLoading: $isLoading, quizList: $quizList, index: $index, nextShow: $nextShow, selectedIndex: $selectedIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeScreenStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._quizList, _quizList) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.nextShow, nextShow) ||
                other.nextShow == nextShow) &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_quizList),
      index,
      nextShow,
      selectedIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeScreenStateImplCopyWith<_$HomeScreenStateImpl> get copyWith =>
      __$$HomeScreenStateImplCopyWithImpl<_$HomeScreenStateImpl>(
          this, _$identity);
}

abstract class _HomeScreenState implements HomeScreenState {
  const factory _HomeScreenState(
      {required final bool isLoading,
      required final List<QuizModel> quizList,
      required final int index,
      required final bool nextShow,
      final int? selectedIndex}) = _$HomeScreenStateImpl;

  @override
  bool get isLoading;
  @override
  List<QuizModel> get quizList;
  @override
  int get index;
  @override
  bool get nextShow;
  @override
  int? get selectedIndex;
  @override
  @JsonKey(ignore: true)
  _$$HomeScreenStateImplCopyWith<_$HomeScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
