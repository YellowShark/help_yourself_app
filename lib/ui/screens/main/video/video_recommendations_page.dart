import 'package:flutter/material.dart';
import 'package:help_yourself_app/ui/base/base_page.dart';
import 'package:help_yourself_app/ui/screens/main/video/video_recommendations_store.dart';

import '../../../../common/res/strings.dart';
import 'package:help_yourself_app/ui/screens/main/video/colored_button.dart';

class VideoRecommendationsPage extends BasePage<VideoRecommendationsViewModel> {
  VideoRecommendationsPage({Key? key}) : super(key: key);

  @override
  AppBar? appBar(BuildContext context) =>
      AppBar(title: Text(Strings.videoRecommendations.title()));

  @override
  Widget content(BuildContext context) {
    return GridView.builder(
      itemCount: 12,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2,
      ),
      itemBuilder: (BuildContext context, int index) {
        return ColoredButton(
            onPressed: () {},
            child: Text(
              forVideoRecommendationsPage[index].mood,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            color: forVideoRecommendationsPage[index].color);
      },
    );
  }
}

class ForVideoRecommendationsPage {
  ForVideoRecommendationsPage(
      {required this.mood, required this.color, required this.route});

  final String mood;
  final Color color;
  final String route;

// void goToPage() {}

}

List forVideoRecommendationsPage = [
  ForVideoRecommendationsPage(
      mood: Strings.emotions.anxiety(), color: Colors.blueAccent, route: ''),
  ForVideoRecommendationsPage(
      mood: Strings.emotions.cheerfulness(),
      color: Colors.deepPurpleAccent,
      route: ''),
  ForVideoRecommendationsPage(
      mood: Strings.emotions.anger(), color: Colors.amber, route: ''),
  ForVideoRecommendationsPage(
      mood: Strings.emotions.comfort(), color: Colors.teal, route: ''),
  ForVideoRecommendationsPage(
      mood: Strings.emotions.disappointment(),
      color: Colors.pinkAccent,
      route: ''),
  ForVideoRecommendationsPage(
      mood: Strings.emotions.embarrassment(),
      color: Colors.redAccent,
      route: ''),
  ForVideoRecommendationsPage(
      mood: Strings.emotions.helplessness(), color: Colors.brown, route: ''),
  ForVideoRecommendationsPage(
      mood: Strings.emotions.energy(), color: Colors.green, route: ''),
  ForVideoRecommendationsPage(
      mood: Strings.emotions.hope(), color: Colors.blueAccent, route: ''),
  ForVideoRecommendationsPage(
      mood: Strings.emotions.interest(),
      color: Colors.deepPurpleAccent,
      route: ''),
  ForVideoRecommendationsPage(
      mood: Strings.emotions.loneliness(), color: Colors.amber, route: ''),
  ForVideoRecommendationsPage(
      mood: Strings.emotions.shock(), color: Colors.teal, route: '')
];
