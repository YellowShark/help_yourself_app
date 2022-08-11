import 'package:flutter/material.dart';

import '../../../../common/res/strings.dart';

enum VideoRecommendationGroup {
  depression,
  anxietyDisorder,
  communication,
  emotionManagement,
  insult,
  neurosis,
  nutrition,
  relations,
  stressTolerance,
  upbringing,
  personalityDisorders,
  borderlinePersonalityDisorder
}

extension VideoRecommendationGroupMood on VideoRecommendationGroup {
  String get mood {
    switch (this) {
      case VideoRecommendationGroup.depression:
        return Strings.videoRecommendations.depression();
      case VideoRecommendationGroup.anxietyDisorder:
        return Strings.videoRecommendations.anxietyDisorder();
      case VideoRecommendationGroup.communication:
        return Strings.videoRecommendations.communication();
      case VideoRecommendationGroup.emotionManagement:
        return Strings.videoRecommendations.emotionManagement();
      case VideoRecommendationGroup.insult:
        return Strings.videoRecommendations.insult();
      case VideoRecommendationGroup.neurosis:
        return Strings.videoRecommendations.neurosis();
      case VideoRecommendationGroup.nutrition:
        return Strings.videoRecommendations.nutrition();
      case VideoRecommendationGroup.relations:
        return Strings.videoRecommendations.relations();
      case VideoRecommendationGroup.stressTolerance:
        return Strings.videoRecommendations.stressTolerance();
      case VideoRecommendationGroup.upbringing:
        return Strings.videoRecommendations.upbringing();
      case VideoRecommendationGroup.personalityDisorders:
        return Strings.videoRecommendations.personalityDisorders();
      case VideoRecommendationGroup.borderlinePersonalityDisorder:
        return Strings.videoRecommendations.borderlinePersonalityDisorder();
    }
  }
}

extension VideoRecommendationGroupColor on VideoRecommendationGroup {
  Color get color {
    switch (this) {
      case VideoRecommendationGroup.depression:
        return Colors.blueAccent;
      case VideoRecommendationGroup.anxietyDisorder:
        return Colors.deepPurpleAccent;
      case VideoRecommendationGroup.communication:
        return Colors.amber;
      case VideoRecommendationGroup.emotionManagement:
        return Colors.teal;
      case VideoRecommendationGroup.insult:
        return Colors.pinkAccent;
      case VideoRecommendationGroup.neurosis:
        return Colors.redAccent;
      case VideoRecommendationGroup.nutrition:
        return Colors.purple;
      case VideoRecommendationGroup.relations:
        return Colors.green;
      case VideoRecommendationGroup.stressTolerance:
        return Colors.blueAccent;
      case VideoRecommendationGroup.upbringing:
        return Colors.deepPurpleAccent;
      case VideoRecommendationGroup.personalityDisorders:
        return Colors.amber;
      case VideoRecommendationGroup.borderlinePersonalityDisorder:
        return Colors.teal;
    }
  }
}


extension VideoRecommendationGroupVideoID on VideoRecommendationGroup {
  String get videoID {
    switch (this) {
      case VideoRecommendationGroup.depression:
        return 'opFb4ei918k';
      case VideoRecommendationGroup.anxietyDisorder:
        return 'Y2cqq3VK8eA';
      case VideoRecommendationGroup.communication:
        return '8SopVLm2zW4';
      case VideoRecommendationGroup.emotionManagement:
        return 'hgGI-75FMCA';
      case VideoRecommendationGroup.insult:
        return 'TqufZpFxIBs';
      case VideoRecommendationGroup.neurosis:
        return 'okgPs7p-I44';
      case VideoRecommendationGroup.nutrition:
        return 'mstGWq3QcZw';
      case VideoRecommendationGroup.relations:
        return 'zaaZVQoWlSs';
      case VideoRecommendationGroup.stressTolerance:
        return 'LjjWiCVCoJs';
      case VideoRecommendationGroup.upbringing:
        return '5SdnWSZuVJM';
      case VideoRecommendationGroup.personalityDisorders:
        return 'pzNqzCzdvMs';
      case VideoRecommendationGroup.borderlinePersonalityDisorder:
        return '5Yz-Bvm5tRg';
    }
  }
}