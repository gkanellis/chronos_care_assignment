import 'package:chronos_care_assignment/api/api_client.dart';
import 'package:chronos_care_assignment/api/repository/jokes_repository.dart';
import 'package:chronos_care_assignment/jokes/details/bloc/joke_details_bloc.dart';
import 'package:chronos_care_assignment/jokes/jokes_list/cubit/jokes_list_cubit.dart';
import 'package:chronos_care_assignment/router.dart';
import 'package:dio/dio.dart';
import 'package:dio_logger/dio_logger.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupDI() {
  /* Router */
  getIt.registerSingleton<AppRouter>(AppRouter());

  /* API Client */
  final dio = Dio(
    BaseOptions(
      connectTimeout: 5000,
      receiveTimeout: 5000,
    ),
  );
  dio.interceptors.add(dioLoggerInterceptor);

  getIt.registerSingleton<Dio>(dio);
  getIt.registerSingleton<ApiClient>(ApiClient(getIt()));

  /* Repositories */
  getIt.registerSingleton<JokesRepository>(
    JokesRepository(apiClient: getIt()),
  );

  /* Blocs */
  getIt.registerFactory<JokesListCubit>(
    () => JokesListCubit(jokesRepository: getIt()),
  );
  getIt.registerFactory<JokeDetailsBloc>(
    () => JokeDetailsBloc(),
  );
}
