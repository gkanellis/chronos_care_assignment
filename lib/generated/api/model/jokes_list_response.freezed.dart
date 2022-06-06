// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of '../../../api/model/jokes_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JokesListResponse _$JokesListResponseFromJson(Map<String, dynamic> json) {
  return _JokesListResponse.fromJson(json);
}

/// @nodoc
mixin _$JokesListResponse {
  @JsonKey(name: 'current_page')
  int get currentPage => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_page')
  int get nextPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'previous_page')
  int get previousPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_jokes')
  int get totalJokes => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  List<Joke> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JokesListResponseCopyWith<JokesListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JokesListResponseCopyWith<$Res> {
  factory $JokesListResponseCopyWith(
          JokesListResponse value, $Res Function(JokesListResponse) then) =
      _$JokesListResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'current_page') int currentPage,
      int limit,
      @JsonKey(name: 'next_page') int nextPage,
      @JsonKey(name: 'previous_page') int previousPage,
      @JsonKey(name: 'total_jokes') int totalJokes,
      @JsonKey(name: 'total_pages') int totalPages,
      List<Joke> results});
}

/// @nodoc
class _$JokesListResponseCopyWithImpl<$Res>
    implements $JokesListResponseCopyWith<$Res> {
  _$JokesListResponseCopyWithImpl(this._value, this._then);

  final JokesListResponse _value;
  // ignore: unused_field
  final $Res Function(JokesListResponse) _then;

  @override
  $Res call({
    Object? currentPage = freezed,
    Object? limit = freezed,
    Object? nextPage = freezed,
    Object? previousPage = freezed,
    Object? totalJokes = freezed,
    Object? totalPages = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      nextPage: nextPage == freezed
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int,
      previousPage: previousPage == freezed
          ? _value.previousPage
          : previousPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalJokes: totalJokes == freezed
          ? _value.totalJokes
          : totalJokes // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Joke>,
    ));
  }
}

/// @nodoc
abstract class _$$_JokesListResponseCopyWith<$Res>
    implements $JokesListResponseCopyWith<$Res> {
  factory _$$_JokesListResponseCopyWith(_$_JokesListResponse value,
          $Res Function(_$_JokesListResponse) then) =
      __$$_JokesListResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'current_page') int currentPage,
      int limit,
      @JsonKey(name: 'next_page') int nextPage,
      @JsonKey(name: 'previous_page') int previousPage,
      @JsonKey(name: 'total_jokes') int totalJokes,
      @JsonKey(name: 'total_pages') int totalPages,
      List<Joke> results});
}

/// @nodoc
class __$$_JokesListResponseCopyWithImpl<$Res>
    extends _$JokesListResponseCopyWithImpl<$Res>
    implements _$$_JokesListResponseCopyWith<$Res> {
  __$$_JokesListResponseCopyWithImpl(
      _$_JokesListResponse _value, $Res Function(_$_JokesListResponse) _then)
      : super(_value, (v) => _then(v as _$_JokesListResponse));

  @override
  _$_JokesListResponse get _value => super._value as _$_JokesListResponse;

  @override
  $Res call({
    Object? currentPage = freezed,
    Object? limit = freezed,
    Object? nextPage = freezed,
    Object? previousPage = freezed,
    Object? totalJokes = freezed,
    Object? totalPages = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_JokesListResponse(
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      nextPage: nextPage == freezed
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int,
      previousPage: previousPage == freezed
          ? _value.previousPage
          : previousPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalJokes: totalJokes == freezed
          ? _value.totalJokes
          : totalJokes // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Joke>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JokesListResponse implements _JokesListResponse {
  const _$_JokesListResponse(
      {@JsonKey(name: 'current_page') required this.currentPage,
      required this.limit,
      @JsonKey(name: 'next_page') required this.nextPage,
      @JsonKey(name: 'previous_page') required this.previousPage,
      @JsonKey(name: 'total_jokes') required this.totalJokes,
      @JsonKey(name: 'total_pages') required this.totalPages,
      required final List<Joke> results})
      : _results = results;

  factory _$_JokesListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_JokesListResponseFromJson(json);

  @override
  @JsonKey(name: 'current_page')
  final int currentPage;
  @override
  final int limit;
  @override
  @JsonKey(name: 'next_page')
  final int nextPage;
  @override
  @JsonKey(name: 'previous_page')
  final int previousPage;
  @override
  @JsonKey(name: 'total_jokes')
  final int totalJokes;
  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;
  final List<Joke> _results;
  @override
  List<Joke> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'JokesListResponse(currentPage: $currentPage, limit: $limit, nextPage: $nextPage, previousPage: $previousPage, totalJokes: $totalJokes, totalPages: $totalPages, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JokesListResponse &&
            const DeepCollectionEquality()
                .equals(other.currentPage, currentPage) &&
            const DeepCollectionEquality().equals(other.limit, limit) &&
            const DeepCollectionEquality().equals(other.nextPage, nextPage) &&
            const DeepCollectionEquality()
                .equals(other.previousPage, previousPage) &&
            const DeepCollectionEquality()
                .equals(other.totalJokes, totalJokes) &&
            const DeepCollectionEquality()
                .equals(other.totalPages, totalPages) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentPage),
      const DeepCollectionEquality().hash(limit),
      const DeepCollectionEquality().hash(nextPage),
      const DeepCollectionEquality().hash(previousPage),
      const DeepCollectionEquality().hash(totalJokes),
      const DeepCollectionEquality().hash(totalPages),
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  _$$_JokesListResponseCopyWith<_$_JokesListResponse> get copyWith =>
      __$$_JokesListResponseCopyWithImpl<_$_JokesListResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JokesListResponseToJson(this);
  }
}

abstract class _JokesListResponse implements JokesListResponse {
  const factory _JokesListResponse(
      {@JsonKey(name: 'current_page') required final int currentPage,
      required final int limit,
      @JsonKey(name: 'next_page') required final int nextPage,
      @JsonKey(name: 'previous_page') required final int previousPage,
      @JsonKey(name: 'total_jokes') required final int totalJokes,
      @JsonKey(name: 'total_pages') required final int totalPages,
      required final List<Joke> results}) = _$_JokesListResponse;

  factory _JokesListResponse.fromJson(Map<String, dynamic> json) =
      _$_JokesListResponse.fromJson;

  @override
  @JsonKey(name: 'current_page')
  int get currentPage => throw _privateConstructorUsedError;
  @override
  int get limit => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'next_page')
  int get nextPage => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'previous_page')
  int get previousPage => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'total_jokes')
  int get totalJokes => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  @override
  List<Joke> get results => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_JokesListResponseCopyWith<_$_JokesListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
