// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    JokesListRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const JokesListPage());
    },
    JokeDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<JokeDetailsRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: JokeDetailsPage(key: args.key, joke: args.joke));
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(JokesListRoute.name, path: '/'),
        RouteConfig(JokeDetailsRoute.name, path: '/joke-details-page')
      ];
}

/// generated route for
/// [JokesListPage]
class JokesListRoute extends PageRouteInfo<void> {
  const JokesListRoute() : super(JokesListRoute.name, path: '/');

  static const String name = 'JokesListRoute';
}

/// generated route for
/// [JokeDetailsPage]
class JokeDetailsRoute extends PageRouteInfo<JokeDetailsRouteArgs> {
  JokeDetailsRoute({Key? key, required Joke joke})
      : super(JokeDetailsRoute.name,
            path: '/joke-details-page',
            args: JokeDetailsRouteArgs(key: key, joke: joke));

  static const String name = 'JokeDetailsRoute';
}

class JokeDetailsRouteArgs {
  const JokeDetailsRouteArgs({this.key, required this.joke});

  final Key? key;

  final Joke joke;

  @override
  String toString() {
    return 'JokeDetailsRouteArgs{key: $key, joke: $joke}';
  }
}
