import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:help_yourself_app/ui/screens/home/home_page.dart';
import 'package:help_yourself_app/ui/screens/main/emotions/add/add_emotion_page.dart';
import 'package:help_yourself_app/ui/screens/main/emotions/emotions_page_list.dart';
import 'package:help_yourself_app/ui/screens/main/main_page.dart';
import 'package:help_yourself_app/ui/screens/splash/splash_page.dart';
import 'package:injectable/injectable.dart';

part 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: HomePage),
    AutoRoute(page: AddEmotionPage),
    AutoRoute(page: MainPage),
    AutoRoute(page: EmotionsPageList),
  ],
)
@singleton
class AppRouter extends _$AppRouter {}
