import 'package:auto_route/auto_route.dart';
import 'package:chronos_care_assignment/di.dart';
import 'package:chronos_care_assignment/jokes/jokes_list/cubit/jokes_list_cubit.dart';
import 'package:chronos_care_assignment/jokes/jokes_list/widgets/joke_list_item.dart';
import 'package:chronos_care_assignment/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class JokesListPage extends StatelessWidget {
  const JokesListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<JokesListCubit>()..loadJokes(),
      child: JokesListPageView(),
    );
  }
}

class JokesListPageView extends StatelessWidget {
  JokesListPageView({Key? key}) : super(key: key);

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dad Jokes'),
      ),
      body: BlocConsumer<JokesListCubit, JokesListState>(
        listener: (context, state) {
          if (state.jokes.isNotEmpty && state.error != null) {
            ScaffoldMessenger.of(context)
              ..clearSnackBars()
              ..showSnackBar(
                const SnackBar(
                  content: Text('Failed to get more dad jokes :('),
                ),
              );
          }
        },
        builder: (context, state) {
          if (state.isInitiallyLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.hasInitialError) {
            return const _ErrorView();
          }
          return SingleChildScrollView(
            controller: _scrollController
              ..addListener(() {
                if (_scrollController.offset ==
                        _scrollController.position.maxScrollExtent &&
                    !state.isLoading) {
                  context.read<JokesListCubit>().loadJokes();
                }
              }),
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Column(
                children: [
                  ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final joke = state.jokes[index];
                      return JokeListItem(
                        joke: joke,
                        onPressed: (joke) {
                          AutoRouter.of(context)
                              .push(JokeDetailsRoute(joke: joke));
                        },
                      );
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 8),
                    itemCount: state.jokes.length,
                  ),
                  if (state.isLoadingNextPage)
                    const CircularProgressIndicator(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _ErrorView extends StatelessWidget {
  const _ErrorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('Failed to get dad jokes :('),
          TextButton(
            onPressed: () {
              context.read<JokesListCubit>().loadJokes();
            },
            child: const Text('Retry'),
          )
        ],
      ),
    );
  }
}
