import 'package:chronos_care_assignment/api/model/joke.dart';
import 'package:flutter/material.dart';

class JokeListItem extends StatelessWidget {
  final Joke joke;
  final Function(Joke) onPressed;

  const JokeListItem({
    Key? key,
    required this.joke,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed(joke),
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(joke.content, style: Theme.of(context).textTheme.titleMedium,),
        ),
      ),
    );
  }
}
