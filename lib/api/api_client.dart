import 'package:chronos_care_assignment/api/model/jokes_list_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part '../generated/api/api_client.g.dart';

@RestApi(baseUrl: "https://icanhazdadjoke.com/")
abstract class ApiClient {
  factory ApiClient(Dio dio) = _ApiClient;

  @GET("/search")
  Future<JokesListResponse> getJokes(
    @Query("page") int page, [
    @Header('Accept') String acceptType = 'application/json',
  ]);
}
