import 'package:flutter/material.dart';
import 'package:help_yourself_app/ui/screens/main/video/video_recommendation_group.dart';
import 'package:help_yourself_app/ui/screens/main/video/video_recommendations_page.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../widgets/videos/video_player.dart';

class VideosForVideoRecommendations extends StatefulWidget {
  final int index;

  const VideosForVideoRecommendations({Key? key, required this.index})
      : super(key: key);

  @override
  _VideosForVideoRecommendationsState createState() =>
      _VideosForVideoRecommendationsState();
}

class _VideosForVideoRecommendationsState
    extends State<VideosForVideoRecommendations> {
  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(forVideoRecommendationsPage[widget.index].mood),
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          InkWell(
            onTap: () {
              // TODO migrate to AutoRoute.
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => VideoPlayer(
                        video:
                            forVideoRecommendationsPage[widget.index].videoID)),
              );
            },
            child: Container(
              width: widthScreen,
              height: widthScreen * 9 / 16,
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://img.youtube.com/vi/${forVideoRecommendationsPage[widget.index].videoID}/mqdefault.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
