import 'package:flutter/material.dart';
import 'package:help_yourself_app/ui/screens/main/video/video_recommendations_page.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text(forVideoRecommendationsPage[widget.index].mood),
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => VideoPlayer(
                        video:
                            forVideoRecommendationsPage[widget.index].videoID)),
              );
            },
            child: Text(
              forVideoRecommendationsPage[widget.index].mood,
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
