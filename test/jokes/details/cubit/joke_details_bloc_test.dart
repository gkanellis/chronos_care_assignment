import 'package:bloc_test/bloc_test.dart';
import 'package:chronos_care_assignment/jokes/details/bloc/joke_details_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('JokeDetails Bloc', () {
    blocTest<JokeDetailsBloc, JokeDetailsState>(
      '''emits Up Voting as true when JokeDetailsUpVote is added.''',
      build: () {
        return JokeDetailsBloc();
      },
      act: (bloc) => bloc.add(JokeDetailsUpVote()),
      expect: () {
        return [
          JokeDetailsState(
            isUpVoted: true,
            isDownVoted: false,
          ),
        ];
      },
    );

    blocTest<JokeDetailsBloc, JokeDetailsState>(
      '''emits Down Voting as true when JokeDetailsDownVote is added.''',
      build: () {
        return JokeDetailsBloc();
      },
      act: (bloc) => bloc.add(JokeDetailsDownVote()),
      expect: () {
        return [
          JokeDetailsState(
            isUpVoted: false,
            isDownVoted: true,
          ),
        ];
      },
    );

    blocTest<JokeDetailsBloc, JokeDetailsState>(
      '''emits Down Voting as false when JokeDetailsDownVote is added twice.''',
      build: () {
        return JokeDetailsBloc();
      },
      act: (bloc) => bloc.add(JokeDetailsDownVote()),
      seed: () => JokeDetailsState(isUpVoted: false, isDownVoted: true),
      expect: () {
        return [
          JokeDetailsState(
            isUpVoted: false,
            isDownVoted: false,
          ),
        ];
      },
    );

    blocTest<JokeDetailsBloc, JokeDetailsState>(
      '''emits Up Voting as false when JokeDetailsUpVote is added twice.''',
      build: () {
        return JokeDetailsBloc();
      },
      act: (bloc) => bloc.add(JokeDetailsUpVote()),
      seed: () => JokeDetailsState(isUpVoted: true, isDownVoted: false),
      expect: () {
        return [
          JokeDetailsState(
            isUpVoted: false,
            isDownVoted: false,
          ),
        ];
      },
    );
  });
}
