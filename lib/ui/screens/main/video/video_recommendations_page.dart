import 'package:flutter/material.dart';
import 'package:help_yourself_app/ui/base/base_page.dart';
import 'package:help_yourself_app/ui/screens/main/video/video_recommendation_group.dart';
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
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        VideosForVideoRecommendations(index: index)),
              );
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

List <VideoRecommendationGroup> forVideoRecommendationsPage = VideoRecommendationGroup.values;


