import 'package:chronos_care_assignment/api/api_client.dart';
import 'package:chronos_care_assignment/api/model/jokes_list_response.dart';

class JokesRepository {
  final ApiClient _apiClient;

  const JokesRepository({
    required ApiClient apiClient,
  }) : _apiClient = apiClient;

  Future<JokesListResponse> getJokes({
    required int page,
  }) {
    return _apiClient.getJokes(page);
  }
}
