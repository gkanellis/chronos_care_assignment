import 'package:chronos_care_assignment/api/model/joke.dart';
import 'package:flutter/material.dart';

class JokeDetailsPage extends StatelessWidget {
  final Joke joke;

  const JokeDetailsPage({
    Key? key,
    required this.joke,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return JokeDetailsPageView(
      joke: joke,
    );
  }
}

class JokeDetailsPageView extends StatelessWidget {
  final Joke joke;

  const JokeDetailsPageView({
    Key? key,
    required this.joke,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Text('Hello'),
      ),
    );
  }
}
