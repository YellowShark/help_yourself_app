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
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: HomePage(key: args.key));
    },
    AddEmotionRoute.name: (routeData) {
      final args = routeData.argsAs<AddEmotionRouteArgs>(
          orElse: () => const AddEmotionRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: AddEmotionPage(key: args.key));
    },
    MainRoute.name: (routeData) {
      final args =
          routeData.argsAs<MainRouteArgs>(orElse: () => const MainRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: MainPage(key: args.key));
    },
    EmotionsRouteList.name: (routeData) {
      final args = routeData.argsAs<EmotionsRouteListArgs>(
          orElse: () => const EmotionsRouteListArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: EmotionsPageList(key: args.key));
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(HomeRoute.name, path: '/home-page'),
        RouteConfig(AddEmotionRoute.name, path: '/add-emotion-page'),
        RouteConfig(MainRoute.name, path: '/main-page'),
        RouteConfig(EmotionsRouteList.name, path: '/emotions-page-list')
      ];
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({Key? key})
      : super(HomeRoute.name,
            path: '/home-page', args: HomeRouteArgs(key: key));

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [AddEmotionPage]
class AddEmotionRoute extends PageRouteInfo<AddEmotionRouteArgs> {
  AddEmotionRoute({Key? key})
      : super(AddEmotionRoute.name,
            path: '/add-emotion-page', args: AddEmotionRouteArgs(key: key));

  static const String name = 'AddEmotionRoute';
}

class AddEmotionRouteArgs {
  const AddEmotionRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'AddEmotionRouteArgs{key: $key}';
  }
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<MainRouteArgs> {
  MainRoute({Key? key})
      : super(MainRoute.name,
            path: '/main-page', args: MainRouteArgs(key: key));

  static const String name = 'MainRoute';
}

class MainRouteArgs {
  const MainRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'MainRouteArgs{key: $key}';
  }
}

/// generated route for
/// [EmotionsPageList]
class EmotionsRouteList extends PageRouteInfo<EmotionsRouteListArgs> {
  EmotionsRouteList({Key? key})
      : super(EmotionsRouteList.name,
            path: '/emotions-page-list', args: EmotionsRouteListArgs(key: key));

  static const String name = 'EmotionsRouteList';
}

class EmotionsRouteListArgs {
  const EmotionsRouteListArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'EmotionsRouteListArgs{key: $key}';
  }
}
