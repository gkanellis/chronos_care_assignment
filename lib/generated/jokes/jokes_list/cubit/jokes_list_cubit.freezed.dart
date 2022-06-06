// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../../../../jokes/jokes_list/cubit/jokes_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JokesListState {
  int get page => throw _privateConstructorUsedError;

  int get totalPages => throw _privateConstructorUsedError;

  List<Joke> get jokes => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JokesListStateCopyWith<JokesListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JokesListStateCopyWith<$Res> {
  factory $JokesListStateCopyWith(
          JokesListState value, $Res Function(JokesListState) then) =
      _$JokesListStateCopyWithImpl<$Res>;

  $Res call(
      {int page,
      int totalPages,
      List<Joke> jokes,
      bool isLoading,
      dynamic error});
}

/// @nodoc
class _$JokesListStateCopyWithImpl<$Res>
    implements $JokesListStateCopyWith<$Res> {
  _$JokesListStateCopyWithImpl(this._value, this._then);

  final JokesListState _value;
  // ignore: unused_field
  final $Res Function(JokesListState) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? totalPages = freezed,
    Object? jokes = freezed,
    Object? isLoading = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      jokes: jokes == freezed
          ? _value.jokes
          : jokes // ignore: cast_nullable_to_non_nullable
              as List<Joke>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$$_JokesListStateCopyWith<$Res>
    implements $JokesListStateCopyWith<$Res> {
  factory _$$_JokesListStateCopyWith(
          _$_JokesListState value, $Res Function(_$_JokesListState) then) =
      __$$_JokesListStateCopyWithImpl<$Res>;

  @override
  $Res call(
      {int page,
      int totalPages,
      List<Joke> jokes,
      bool isLoading,
      dynamic error});
}

/// @nodoc
class __$$_JokesListStateCopyWithImpl<$Res>
    extends _$JokesListStateCopyWithImpl<$Res>
    implements _$$_JokesListStateCopyWith<$Res> {
  __$$_JokesListStateCopyWithImpl(
      _$_JokesListState _value, $Res Function(_$_JokesListState) _then)
      : super(_value, (v) => _then(v as _$_JokesListState));

  @override
  _$_JokesListState get _value => super._value as _$_JokesListState;

  @override
  $Res call({
    Object? page = freezed,
    Object? totalPages = freezed,
    Object? jokes = freezed,
    Object? isLoading = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_JokesListState(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      jokes: jokes == freezed
          ? _value._jokes
          : jokes // ignore: cast_nullable_to_non_nullable
              as List<Joke>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_JokesListState extends _JokesListState {
  _$_JokesListState({required this.page,
    required this.totalPages,
    required final List<Joke> jokes,
    required this.isLoading,
    required this.error})
      : _jokes = jokes,
        super._();

  @override
  final int page;
  @override
  final int totalPages;
  final List<Joke> _jokes;

  @override
  List<Joke> get jokes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_jokes);
  }

  @override
  final bool isLoading;
  @override
  final dynamic error;

  @override
  String toString() {
    return 'JokesListState(page: $page, totalPages: $totalPages, jokes: $jokes, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JokesListState &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality()
                .equals(other.totalPages, totalPages) &&
            const DeepCollectionEquality().equals(other._jokes, _jokes) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(totalPages),
      const DeepCollectionEquality().hash(_jokes),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_JokesListStateCopyWith<_$_JokesListState> get copyWith =>
      __$$_JokesListStateCopyWithImpl<_$_JokesListState>(this, _$identity);
}

abstract class _JokesListState extends JokesListState {
  factory _JokesListState(
      {required final int page,
      required final int totalPages,
      required final List<Joke> jokes,
      required final bool isLoading,
      required final dynamic error}) = _$_JokesListState;

  _JokesListState._() : super._();

  @override
  int get page => throw _privateConstructorUsedError;

  @override
  int get totalPages => throw _privateConstructorUsedError;

  @override
  List<Joke> get jokes => throw _privateConstructorUsedError;

  @override
  bool get isLoading => throw _privateConstructorUsedError;

  @override
  dynamic get error => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$$_JokesListStateCopyWith<_$_JokesListState> get copyWith =>
      throw _privateConstructorUsedError;
}
