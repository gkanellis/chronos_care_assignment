import 'package:bloc/bloc.dart';
import 'package:chronos_care_assignment/api/model/joke.dart';
import 'package:chronos_care_assignment/api/repository/jokes_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/jokes/jokes_list/cubit/jokes_list_cubit.freezed.dart';
part 'jokes_list_state.dart';

class JokesListCubit extends Cubit<JokesListState> {
  final JokesRepository _jokesRepository;

  /* This field is used as a lock to prevent multiple calls to the same
  * event caused by the list scrolling behavior. */
  Object? _callLock;

  JokesListCubit({
    required JokesRepository jokesRepository,
  })  : _jokesRepository = jokesRepository,
        super(JokesListState.initial());

  void loadJokes() async {
    if (_callLock != null || state.totalPages == state.page) {
      return;
    }
    _callLock = Object();
    emit(state.copyWith(isLoading: true, error: null));
    try {
      final response = await _jokesRepository.getJokes(page: state.page);
      emit(state.copyWith(
        isLoading: false,
        totalPages: response.totalPages,
        page: state.page + 1,
        jokes: state.jokes.toList(growable: true)..addAll(response.results),
        error: null,
      ));
    } catch (e) {
      /* In a real life scenario this has to be handled more specifically */
      emit(state.copyWith(
        isLoading: false,
        error: e,
      ));
    } finally {
      // Release lock
      _callLock = null;
    }
  }
}
