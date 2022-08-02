import 'package:flutter/material.dart';
import 'package:help_yourself_app/common/res/dimens.dart';

import 'common/routes/router.dart';
import 'di/config/injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = getIt<AppRouter>();

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        brightness: Brightness.dark,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(Dimens.buttonHeight),
          )
        )
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}