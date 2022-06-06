import 'package:bloc_test/bloc_test.dart';
import 'package:chronos_care_assignment/api/model/joke.dart';
import 'package:chronos_care_assignment/api/model/jokes_list_response.dart';
import 'package:chronos_care_assignment/api/repository/jokes_repository.dart';
import 'package:chronos_care_assignment/jokes/jokes_list/cubit/jokes_list_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockJokesRepository extends Mock implements JokesRepository {}

void main() {
  group('JokesList Cubit', () {
    const joke = Joke(id: '0', content: 'Test');
    const jokesResponse = JokesListResponse(
      currentPage: 1,
      limit: 1,
      nextPage: 2,
      previousPage: 0,
      totalJokes: 1,
      totalPages: 1,
      results: [joke],
    );
    final jokesRepository = MockJokesRepository();

    blocTest<JokesListCubit, JokesListState>(
      '''Loads jokes from repository when loadJokes() is called''',
      build: () => JokesListCubit(jokesRepository: jokesRepository),
      act: (cubit) => cubit.loadJokes(),
      setUp: () {
        when(() => jokesRepository.getJokes(page: 1))
            .thenAnswer((_) async => jokesResponse);
      },
      expect: () {
        return [
          JokesListState(
            error: null,
            jokes: [],
            page: 1,
            isLoading: true,
            totalPages: -1,
          ),
          JokesListState(
            error: null,
            jokes: [joke],
            page: 2,
            isLoading: false,
            totalPages: 1,
          ),
        ];
      },
    );
  });
}
