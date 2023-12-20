// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'start_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StartScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() startQuizButtonClick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? startQuizButtonClick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? startQuizButtonClick,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StartQuizButtonClick value) startQuizButtonClick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_StartQuizButtonClick value)? startQuizButtonClick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartQuizButtonClick value)? startQuizButtonClick,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartScreenEventCopyWith<$Res> {
  factory $StartScreenEventCopyWith(
          StartScreenEvent value, $Res Function(StartScreenEvent) then) =
      _$StartScreenEventCopyWithImpl<$Res, StartScreenEvent>;
}

/// @nodoc
class _$StartScreenEventCopyWithImpl<$Res, $Val extends StartScreenEvent>
    implements $StartScreenEventCopyWith<$Res> {
  _$StartScreenEventCopyWithImpl(this._value, this._then);

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
    extends _$StartScreenEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'StartScreenEvent.started()';
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
    required TResult Function() startQuizButtonClick,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? startQuizButtonClick,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? startQuizButtonClick,
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
    required TResult Function(_StartQuizButtonClick value) startQuizButtonClick,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_StartQuizButtonClick value)? startQuizButtonClick,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartQuizButtonClick value)? startQuizButtonClick,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements StartScreenEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$StartQuizButtonClickImplCopyWith<$Res> {
  factory _$$StartQuizButtonClickImplCopyWith(_$StartQuizButtonClickImpl value,
          $Res Function(_$StartQuizButtonClickImpl) then) =
      __$$StartQuizButtonClickImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartQuizButtonClickImplCopyWithImpl<$Res>
    extends _$StartScreenEventCopyWithImpl<$Res, _$StartQuizButtonClickImpl>
    implements _$$StartQuizButtonClickImplCopyWith<$Res> {
  __$$StartQuizButtonClickImplCopyWithImpl(_$StartQuizButtonClickImpl _value,
      $Res Function(_$StartQuizButtonClickImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartQuizButtonClickImpl implements _StartQuizButtonClick {
  const _$StartQuizButtonClickImpl();

  @override
  String toString() {
    return 'StartScreenEvent.startQuizButtonClick()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartQuizButtonClickImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() startQuizButtonClick,
  }) {
    return startQuizButtonClick();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? startQuizButtonClick,
  }) {
    return startQuizButtonClick?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? startQuizButtonClick,
    required TResult orElse(),
  }) {
    if (startQuizButtonClick != null) {
      return startQuizButtonClick();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StartQuizButtonClick value) startQuizButtonClick,
  }) {
    return startQuizButtonClick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_StartQuizButtonClick value)? startQuizButtonClick,
  }) {
    return startQuizButtonClick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartQuizButtonClick value)? startQuizButtonClick,
    required TResult orElse(),
  }) {
    if (startQuizButtonClick != null) {
      return startQuizButtonClick(this);
    }
    return orElse();
  }
}

abstract class _StartQuizButtonClick implements StartScreenEvent {
  const factory _StartQuizButtonClick() = _$StartQuizButtonClickImpl;
}

/// @nodoc
mixin _$StartScreenState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<QuizModel> get quizList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StartScreenStateCopyWith<StartScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartScreenStateCopyWith<$Res> {
  factory $StartScreenStateCopyWith(
          StartScreenState value, $Res Function(StartScreenState) then) =
      _$StartScreenStateCopyWithImpl<$Res, StartScreenState>;
  @useResult
  $Res call({bool isLoading, List<QuizModel> quizList});
}

/// @nodoc
class _$StartScreenStateCopyWithImpl<$Res, $Val extends StartScreenState>
    implements $StartScreenStateCopyWith<$Res> {
  _$StartScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? quizList = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartScreenStateImplCopyWith<$Res>
    implements $StartScreenStateCopyWith<$Res> {
  factory _$$StartScreenStateImplCopyWith(_$StartScreenStateImpl value,
          $Res Function(_$StartScreenStateImpl) then) =
      __$$StartScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<QuizModel> quizList});
}

/// @nodoc
class __$$StartScreenStateImplCopyWithImpl<$Res>
    extends _$StartScreenStateCopyWithImpl<$Res, _$StartScreenStateImpl>
    implements _$$StartScreenStateImplCopyWith<$Res> {
  __$$StartScreenStateImplCopyWithImpl(_$StartScreenStateImpl _value,
      $Res Function(_$StartScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? quizList = null,
  }) {
    return _then(_$StartScreenStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      quizList: null == quizList
          ? _value._quizList
          : quizList // ignore: cast_nullable_to_non_nullable
              as List<QuizModel>,
    ));
  }
}

/// @nodoc

class _$StartScreenStateImpl implements _StartScreenState {
  const _$StartScreenStateImpl(
      {required this.isLoading, required final List<QuizModel> quizList})
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
  String toString() {
    return 'StartScreenState(isLoading: $isLoading, quizList: $quizList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartScreenStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._quizList, _quizList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, const DeepCollectionEquality().hash(_quizList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartScreenStateImplCopyWith<_$StartScreenStateImpl> get copyWith =>
      __$$StartScreenStateImplCopyWithImpl<_$StartScreenStateImpl>(
          this, _$identity);
}

abstract class _StartScreenState implements StartScreenState {
  const factory _StartScreenState(
      {required final bool isLoading,
      required final List<QuizModel> quizList}) = _$StartScreenStateImpl;

  @override
  bool get isLoading;
  @override
  List<QuizModel> get quizList;
  @override
  @JsonKey(ignore: true)
  _$$StartScreenStateImplCopyWith<_$StartScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
