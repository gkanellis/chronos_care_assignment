import 'package:chronos_care_assignment/api/model/joke.dart';
import 'package:chronos_care_assignment/di.dart';
import 'package:chronos_care_assignment/jokes/details/bloc/joke_details_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class JokeDetailsPage extends StatelessWidget {
  final Joke joke;

  const JokeDetailsPage({
    Key? key,
    required this.joke,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<JokeDetailsBloc>(),
      child: JokeDetailsPageView(joke: joke),
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
      body: BlocBuilder<JokeDetailsBloc, JokeDetailsState>(
        builder: (context, state) {
          return Column(
            children: [
              Card(
                elevation: 5,
                margin: EdgeInsets.zero,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    joke.content,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _VoteButton(
                    title: 'Up Vote',
                    icon: FontAwesomeIcons.thumbsUp,
                    onPressed: () {
                      context.read<JokeDetailsBloc>().add(JokeDetailsUpVote());
                    },
                    selected: state.isUpVoted,
                    selectedColor: Colors.green,
                    unselectedColor: Colors.blueGrey,
                  ),
                  _VoteButton(
                    title: 'Down Vote',
                    icon: FontAwesomeIcons.thumbsDown,
                    onPressed: () {
                      context
                          .read<JokeDetailsBloc>()
                          .add(JokeDetailsDownVote());
                    },
                    selected: state.isDownVoted,
                    selectedColor: Colors.red,
                    unselectedColor: Colors.blueGrey,
                  )
                ],
              )
            ],
          );
        },
      ),
    );
  }
}

class _VoteButton extends StatelessWidget {
  const _VoteButton({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPressed,
    required this.selected,
    required this.selectedColor,
    required this.unselectedColor,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback onPressed;
  final bool selected;
  final Color selectedColor;
  final Color unselectedColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        children: [
          FaIcon(
            icon,
            color: selected ? selectedColor : unselectedColor,
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: Theme.of(context).textTheme.caption!.copyWith(
                  color: selected ? selectedColor : unselectedColor,
                  fontWeight: selected ? FontWeight.bold : FontWeight.normal,
                ),
          ),
        ],
      ),
    );
  }
}
