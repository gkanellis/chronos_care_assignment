import 'package:chronos_care_assignment/di.dart';
import 'package:chronos_care_assignment/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupDI();
  BlocOverrides.runZoned(
    () => runApp(ChronosCareAssignmentApp()),
  );
}

class ChronosCareAssignmentApp extends StatelessWidget {
  ChronosCareAssignmentApp({Key? key}) : super(key: key);

  final AppRouter _appRouter = getIt();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Chronos Care Assignment',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
