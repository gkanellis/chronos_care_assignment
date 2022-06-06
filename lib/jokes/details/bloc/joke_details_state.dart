part of 'joke_details_bloc.dart';

@freezed
class JokeDetailsState with _$JokeDetailsState {
  factory JokeDetailsState({
    required bool isUpVoted,
    required bool isDownVoted,
  }) = _JokeDetailsState;

  factory JokeDetailsState.initial() => JokeDetailsState(
        isUpVoted: false,
        isDownVoted: false,
      );
}
