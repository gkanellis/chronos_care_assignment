import 'package:chronos_care_assignment/api/api_client.dart';
import 'package:chronos_care_assignment/api/model/joke.dart';
import 'package:chronos_care_assignment/api/model/jokes_list_response.dart';
import 'package:chronos_care_assignment/api/repository/jokes_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockApiClient extends Mock implements ApiClient {}

void main() {
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

  group('JokesRepository', () {
    final apiClient = MockApiClient();

    test('can be instantiated', () {
      expect(
        () => JokesRepository(apiClient: apiClient),
        returnsNormally,
      );
    });

    test('returns list response for a page', () async {
      when(() => apiClient.getJokes(1))
          .thenAnswer((_) => Future.value(jokesResponse));

      final response = await apiClient.getJokes(1);
      expect(response, jokesResponse);
    });
  });
}
