part of 'joke_details_bloc.dart';

abstract class JokeDetailsEvent extends Equatable {
  const JokeDetailsEvent();

  @override
  List<Object> get props => [];
}

class JokeDetailsUpVote extends JokeDetailsEvent {}

class JokeDetailsDownVote extends JokeDetailsEvent {}
