import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:help_yourself_app/common/res/theme.dart';

import 'common/routes/router.dart';
import 'di/config/injection.dart';

Future<void> main() async {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await configureDependencies();
      return runApp(
        MyApp(
          initialRoute: await _getInitialRoute(),
        ),
      );
    },
    _handleErrors,
  );
}

class MyApp extends StatelessWidget {
  final PageRouteInfo initialRoute;
  final _appRouter = getIt<AppRouter>();

  MyApp({
    Key? key,
    required this.initialRoute,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      routerDelegate: _appRouter.delegate(
        initialRoutes: [initialRoute],
      ),
      routeInformationParser: _appRouter.defaultRouteParser(),
      themeMode: ThemeMode.light,
    );
  }
}

Future<PageRouteInfo> _getInitialRoute() async => MainRoute();

void _handleErrors(Object error, StackTrace stack) {}
