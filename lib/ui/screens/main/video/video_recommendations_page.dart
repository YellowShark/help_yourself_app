import 'package:flutter/material.dart';
import 'package:help_yourself_app/ui/base/base_page.dart';
import 'package:help_yourself_app/ui/screens/main/video/video_recommendations_store.dart';
import 'package:help_yourself_app/ui/screens/main/video/videos_for_video_recommendations.dart';

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
      itemCount: 12,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2,
      ),
      itemBuilder: (BuildContext context, int index) {
        return ColoredButton(
            onPressed: () {
              // TODO migrate to AutoRoute.
            },
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
      {required this.mood, required this.color, required this.videoID});

  final String mood;
  final Color color;
  final String videoID;
}

List forVideoRecommendationsPage = [
  ForVideoRecommendationsPage(
      mood: Strings.videoRecommendations.depression(),
      color: Colors.blueAccent,
      videoID: 'opFb4ei918k'),
  ForVideoRecommendationsPage(
      mood: Strings.videoRecommendations.anxietyDisorder(),
      color: Colors.deepPurpleAccent,
      videoID: 'Y2cqq3VK8eA'),
  ForVideoRecommendationsPage(
      mood: Strings.videoRecommendations.communication(),
      color: Colors.amber,
      videoID: '8SopVLm2zW4'),
  ForVideoRecommendationsPage(
      mood: Strings.videoRecommendations.emotionManagement(),
      color: Colors.teal,
      videoID: 'hgGI-75FMCA'),
  ForVideoRecommendationsPage(
      mood: Strings.videoRecommendations.insult(),
      color: Colors.pinkAccent,
      videoID: 'TqufZpFxIBs'),
  ForVideoRecommendationsPage(
      mood: Strings.videoRecommendations.neurosis(),
      color: Colors.redAccent,
      videoID: 'okgPs7p-I44'),
  ForVideoRecommendationsPage(
      mood: Strings.videoRecommendations.nutrition(),
      color: Colors.purple,
      videoID: 'mstGWq3QcZw'),
  ForVideoRecommendationsPage(
      mood: Strings.videoRecommendations.relations(),
      color: Colors.green,
      videoID: 'zaaZVQoWlSs'),
  ForVideoRecommendationsPage(
      mood: Strings.videoRecommendations.stressTolerance(),
      color: Colors.blueAccent,
      videoID: 'LjjWiCVCoJs'),
  ForVideoRecommendationsPage(
      mood: Strings.videoRecommendations.upbringing(),
      color: Colors.deepPurpleAccent,
      videoID: '5SdnWSZuVJM'),
  ForVideoRecommendationsPage(
      mood: Strings.videoRecommendations.personalityDisorders(),
      color: Colors.teal,
      videoID: 'pzNqzCzdvMs'),
  ForVideoRecommendationsPage(
      mood: Strings.videoRecommendations.borderlinePersonalityDisorder(),
      color: Colors.pinkAccent,
      videoID: '5Yz-Bvm5tRg'),
];
