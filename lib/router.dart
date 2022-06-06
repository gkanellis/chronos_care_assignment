import 'package:chronos_care_assignment/jokes/details/widgets/joke_details_page.dart';
import 'package:chronos_care_assignment/jokes/jokes_list/widgets/jokes_list_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:chronos_care_assignment/api/model/joke.dart';

part 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: JokesListPage, initial: true),
    AutoRoute(page: JokeDetailsPage),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
