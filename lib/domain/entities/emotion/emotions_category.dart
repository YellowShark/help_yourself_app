import 'package:help_yourself_app/common/res/strings.dart';
import 'package:help_yourself_app/domain/entities/emotion/emotion.dart';

enum EmotionsCategory {
  positive,
  negative,
}

extension CategoryExt on EmotionsCategory {
  String get text {
    switch(this) {
      case EmotionsCategory.positive:
        return Strings.addEmotion.positive();
      case EmotionsCategory.negative:
        return Strings.addEmotion.negative();
    }
  }

  List<Emotion> get appropriateEmotions {
    switch(this) {
      case EmotionsCategory.positive:
        return EmotionsProvider.positiveEmotions;
      case EmotionsCategory.negative:
        return EmotionsProvider.negativeEmotions;
    }
  }
}