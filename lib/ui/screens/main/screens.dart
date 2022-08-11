import 'package:flutter/material.dart';
import 'package:help_yourself_app/common/res/strings.dart';
import 'package:help_yourself_app/ui/base/base_page.dart';
import 'package:help_yourself_app/ui/screens/home/home_page.dart';
import 'package:help_yourself_app/ui/screens/main/emotions/emotions_page_list.dart';
import 'package:help_yourself_app/ui/screens/main/video/video_recommendations_page.dart';

enum Screens {
  emotionsList,
  videos,
  profile,
}

extension ScreensExt on Screens {
  BasePage get page {
    switch(this) {
      case Screens.emotionsList:
        return EmotionsPageList();
      case Screens.videos:
        return VideoRecommendationsPage();
      case Screens.profile:
        return HomePage();
    }
  }

  String get title {
    switch(this) {
      case Screens.emotionsList:
        return Strings.main.diary();
      case Screens.videos:
        return Strings.main.videos();
      case Screens.profile:
        return Strings.main.profile();
    }
  }

  IconData get icon {
    switch(this) {
      case Screens.emotionsList:
        return Icons.book;
      case Screens.videos:
        return Icons.video_library;
      case Screens.profile:
        return Icons.person;
    }
  }
}