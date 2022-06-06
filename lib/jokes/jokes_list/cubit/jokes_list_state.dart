part of 'jokes_list_cubit.dart';

@freezed
class JokesListState with _$JokesListState {

  const JokesListState._();

  factory JokesListState({
    required int page,
    required int totalPages,
    required List<Joke> jokes,
    required bool isLoading,
    required dynamic error,
  }) = _JokesListState;

  factory JokesListState.initial() => JokesListState(
    page: 1,
        totalPages: -1,
        jokes: [],
        isLoading: true,
        error: null,
      );

  bool get isInitiallyLoading => isLoading && page == 1 && jokes.isEmpty;

  bool get hasInitialError => page == 1 && jokes.isEmpty && error != null;

  bool get isLoadingNextPage => isLoading && jokes.isNotEmpty && page > 1;

}
