import 'package:flutter/material.dart';
import 'package:help_yourself_app/ui/base/base_page.dart';
import 'package:help_yourself_app/ui/screens/main/video/video_recommendations_store.dart';

import '../../../../common/res/strings.dart';
import 'package:help_yourself_app/ui/widgets/colored_button.dart';

class VideoRecommendationsPage extends BasePage<VideoRecommendationsViewModel> {
  VideoRecommendationsPage({Key? key}) : super(key: key);

  @override
  AppBar? appBar(BuildContext context) =>
      AppBar(title: Text(Strings.videoRecommendations.title()));

  @override
  Widget content(BuildContext context) {
    return GridView.builder(
      itemCount: 14,
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
      mood: Strings.videoRecommendations.depression(),
      color: Colors.blueAccent,
      route: ''),
  ForVideoRecommendationsPage(
      mood: Strings.videoRecommendations.anxietyDisorder(),
      color: Colors.deepPurpleAccent,
      route: ''),
  ForVideoRecommendationsPage(
      mood: Strings.videoRecommendations.communication(),
      color: Colors.amber,
      route: ''),
  ForVideoRecommendationsPage(
      mood: Strings.videoRecommendations.emotionManagement(),
      color: Colors.teal,
      route: ''),
  ForVideoRecommendationsPage(
      mood: Strings.videoRecommendations.insult(),
      color: Colors.pinkAccent,
      route: ''),
  ForVideoRecommendationsPage(
      mood: Strings.videoRecommendations.neurosis(),
      color: Colors.redAccent,
      route: ''),
  ForVideoRecommendationsPage(
      mood: Strings.videoRecommendations.nutrition(),
      color: Colors.purple,
      route: ''),
  ForVideoRecommendationsPage(
      mood: Strings.videoRecommendations.relations(),
      color: Colors.green,
      route: ''),
  ForVideoRecommendationsPage(
      mood: Strings.videoRecommendations.stressTolerance(),
      color: Colors.blueAccent,
      route: ''),
  ForVideoRecommendationsPage(
      mood: Strings.videoRecommendations.upbringing(),
      color: Colors.deepPurpleAccent,
      route: ''),
  ForVideoRecommendationsPage(
      mood: Strings.videoRecommendations.lecturesPsychoanalysis(),
      color: Colors.amber,
      route: ''),
  ForVideoRecommendationsPage(
      mood: Strings.videoRecommendations.personalityDisorders(),
      color: Colors.teal,
      route: ''),
  ForVideoRecommendationsPage(
      mood: Strings.videoRecommendations.borderlinePersonalityDisorder(),
      color: Colors.pinkAccent,
      route: ''),
  ForVideoRecommendationsPage(
      mood: Strings.videoRecommendations.everydayLife(),
      color: Colors.redAccent,
      route: '')
];
