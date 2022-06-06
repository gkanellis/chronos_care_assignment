import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/jokes/details/bloc/joke_details_bloc.freezed.dart';

part 'joke_details_event.dart';

part 'joke_details_state.dart';

class JokeDetailsBloc extends Bloc<JokeDetailsEvent, JokeDetailsState> {
  JokeDetailsBloc() : super(JokeDetailsState.initial()) {
    on<JokeDetailsUpVote>(_onJokeUpVote);
    on<JokeDetailsDownVote>(_onJokeDownVote);
  }

  FutureOr<void> _onJokeUpVote(
      JokeDetailsUpVote event, Emitter<JokeDetailsState> emit) {
    emit(state.copyWith(isUpVoted: !state.isUpVoted, isDownVoted: false));
  }

  FutureOr<void> _onJokeDownVote(
      JokeDetailsDownVote event, Emitter<JokeDetailsState> emit) {
    emit(state.copyWith(isUpVoted: false, isDownVoted: !state.isDownVoted));
  }
}
