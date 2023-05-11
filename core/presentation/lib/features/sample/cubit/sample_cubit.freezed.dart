// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sample_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SampleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(dynamic result) loaded,
    required TResult Function(dynamic exception) exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(dynamic result)? loaded,
    TResult? Function(dynamic exception)? exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(dynamic result)? loaded,
    TResult Function(dynamic exception)? exception,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SampleInitial value) init,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SampleLoadedState value) loaded,
    required TResult Function(SampleExceptionState value) exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SampleInitial value)? init,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SampleLoadedState value)? loaded,
    TResult? Function(SampleExceptionState value)? exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SampleInitial value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(SampleLoadedState value)? loaded,
    TResult Function(SampleExceptionState value)? exception,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleStateCopyWith<$Res> {
  factory $SampleStateCopyWith(
          SampleState value, $Res Function(SampleState) then) =
      _$SampleStateCopyWithImpl<$Res, SampleState>;
}

/// @nodoc
class _$SampleStateCopyWithImpl<$Res, $Val extends SampleState>
    implements $SampleStateCopyWith<$Res> {
  _$SampleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SampleInitialCopyWith<$Res> {
  factory _$$SampleInitialCopyWith(
          _$SampleInitial value, $Res Function(_$SampleInitial) then) =
      __$$SampleInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SampleInitialCopyWithImpl<$Res>
    extends _$SampleStateCopyWithImpl<$Res, _$SampleInitial>
    implements _$$SampleInitialCopyWith<$Res> {
  __$$SampleInitialCopyWithImpl(
      _$SampleInitial _value, $Res Function(_$SampleInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SampleInitial implements SampleInitial {
  const _$SampleInitial();

  @override
  String toString() {
    return 'SampleState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SampleInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(dynamic result) loaded,
    required TResult Function(dynamic exception) exception,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(dynamic result)? loaded,
    TResult? Function(dynamic exception)? exception,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(dynamic result)? loaded,
    TResult Function(dynamic exception)? exception,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SampleInitial value) init,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SampleLoadedState value) loaded,
    required TResult Function(SampleExceptionState value) exception,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SampleInitial value)? init,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SampleLoadedState value)? loaded,
    TResult? Function(SampleExceptionState value)? exception,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SampleInitial value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(SampleLoadedState value)? loaded,
    TResult Function(SampleExceptionState value)? exception,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class SampleInitial implements SampleState {
  const factory SampleInitial() = _$SampleInitial;
}

/// @nodoc
abstract class _$$LoadingStateCopyWith<$Res> {
  factory _$$LoadingStateCopyWith(
          _$LoadingState value, $Res Function(_$LoadingState) then) =
      __$$LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateCopyWithImpl<$Res>
    extends _$SampleStateCopyWithImpl<$Res, _$LoadingState>
    implements _$$LoadingStateCopyWith<$Res> {
  __$$LoadingStateCopyWithImpl(
      _$LoadingState _value, $Res Function(_$LoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingState implements LoadingState {
  const _$LoadingState();

  @override
  String toString() {
    return 'SampleState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(dynamic result) loaded,
    required TResult Function(dynamic exception) exception,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(dynamic result)? loaded,
    TResult? Function(dynamic exception)? exception,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(dynamic result)? loaded,
    TResult Function(dynamic exception)? exception,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SampleInitial value) init,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SampleLoadedState value) loaded,
    required TResult Function(SampleExceptionState value) exception,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SampleInitial value)? init,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SampleLoadedState value)? loaded,
    TResult? Function(SampleExceptionState value)? exception,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SampleInitial value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(SampleLoadedState value)? loaded,
    TResult Function(SampleExceptionState value)? exception,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements SampleState {
  const factory LoadingState() = _$LoadingState;
}

/// @nodoc
abstract class _$$SampleLoadedStateCopyWith<$Res> {
  factory _$$SampleLoadedStateCopyWith(
          _$SampleLoadedState value, $Res Function(_$SampleLoadedState) then) =
      __$$SampleLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic result});
}

/// @nodoc
class __$$SampleLoadedStateCopyWithImpl<$Res>
    extends _$SampleStateCopyWithImpl<$Res, _$SampleLoadedState>
    implements _$$SampleLoadedStateCopyWith<$Res> {
  __$$SampleLoadedStateCopyWithImpl(
      _$SampleLoadedState _value, $Res Function(_$SampleLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_$SampleLoadedState(
      freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$SampleLoadedState implements SampleLoadedState {
  const _$SampleLoadedState(this.result);

  @override
  final dynamic result;

  @override
  String toString() {
    return 'SampleState.loaded(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SampleLoadedState &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SampleLoadedStateCopyWith<_$SampleLoadedState> get copyWith =>
      __$$SampleLoadedStateCopyWithImpl<_$SampleLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(dynamic result) loaded,
    required TResult Function(dynamic exception) exception,
  }) {
    return loaded(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(dynamic result)? loaded,
    TResult? Function(dynamic exception)? exception,
  }) {
    return loaded?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(dynamic result)? loaded,
    TResult Function(dynamic exception)? exception,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SampleInitial value) init,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SampleLoadedState value) loaded,
    required TResult Function(SampleExceptionState value) exception,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SampleInitial value)? init,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SampleLoadedState value)? loaded,
    TResult? Function(SampleExceptionState value)? exception,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SampleInitial value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(SampleLoadedState value)? loaded,
    TResult Function(SampleExceptionState value)? exception,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class SampleLoadedState implements SampleState {
  const factory SampleLoadedState(final dynamic result) = _$SampleLoadedState;

  dynamic get result;
  @JsonKey(ignore: true)
  _$$SampleLoadedStateCopyWith<_$SampleLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SampleExceptionStateCopyWith<$Res> {
  factory _$$SampleExceptionStateCopyWith(_$SampleExceptionState value,
          $Res Function(_$SampleExceptionState) then) =
      __$$SampleExceptionStateCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic exception});
}

/// @nodoc
class __$$SampleExceptionStateCopyWithImpl<$Res>
    extends _$SampleStateCopyWithImpl<$Res, _$SampleExceptionState>
    implements _$$SampleExceptionStateCopyWith<$Res> {
  __$$SampleExceptionStateCopyWithImpl(_$SampleExceptionState _value,
      $Res Function(_$SampleExceptionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_$SampleExceptionState(
      freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$SampleExceptionState implements SampleExceptionState {
  const _$SampleExceptionState(this.exception);

  @override
  final dynamic exception;

  @override
  String toString() {
    return 'SampleState.exception(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SampleExceptionState &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SampleExceptionStateCopyWith<_$SampleExceptionState> get copyWith =>
      __$$SampleExceptionStateCopyWithImpl<_$SampleExceptionState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(dynamic result) loaded,
    required TResult Function(dynamic exception) exception,
  }) {
    return exception(this.exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(dynamic result)? loaded,
    TResult? Function(dynamic exception)? exception,
  }) {
    return exception?.call(this.exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(dynamic result)? loaded,
    TResult Function(dynamic exception)? exception,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(this.exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SampleInitial value) init,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SampleLoadedState value) loaded,
    required TResult Function(SampleExceptionState value) exception,
  }) {
    return exception(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SampleInitial value)? init,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SampleLoadedState value)? loaded,
    TResult? Function(SampleExceptionState value)? exception,
  }) {
    return exception?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SampleInitial value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(SampleLoadedState value)? loaded,
    TResult Function(SampleExceptionState value)? exception,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(this);
    }
    return orElse();
  }
}

abstract class SampleExceptionState implements SampleState {
  const factory SampleExceptionState(final dynamic exception) =
      _$SampleExceptionState;

  dynamic get exception;
  @JsonKey(ignore: true)
  _$$SampleExceptionStateCopyWith<_$SampleExceptionState> get copyWith =>
      throw _privateConstructorUsedError;
}
