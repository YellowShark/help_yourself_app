import 'package:help_yourself_app/common/res/strings.dart';

enum Emotion {
  // Positive emotions
  gratitude,
  cheerfulness,
  inspiration,
  happiness,
  delight,
  pride,
  confidence,
  interest,
  comfort,
  hope,
  optimism,
  joy,
  satisfaction,
  sureness,
  energy,
  enthusiasm,

  // Negative emotions
  hopelessness,
  anxiety,
  helplessness,
  anger,
  sadness,
  discomfort,
  confusion,
  bewilderment,
  unwillingness,
  nervousness,
  impatience,
  discouragement,
  loneliness,
  shock,
  irritation,
  disappointment,
  embarrassment,
}

extension EmotionExt on Emotion {
  String get text {
    switch(this) {
      case Emotion.gratitude:
        return Strings.emotions.gratitude();
      case Emotion.cheerfulness:
        return Strings.emotions.cheerfulness();
      case Emotion.inspiration:
        return Strings.emotions.inspiration();
      case Emotion.happiness:
        return Strings.emotions.happiness();
      case Emotion.delight:
        return Strings.emotions.delight();
      case Emotion.pride:
        return Strings.emotions.pride();
      case Emotion.confidence:
        return Strings.emotions.confidence();
      case Emotion.interest:
        return Strings.emotions.interest();
      case Emotion.comfort:
        return Strings.emotions.comfort();
      case Emotion.hope:
        return Strings.emotions.hope();
      case Emotion.optimism:
        return Strings.emotions.optimism();
      case Emotion.joy:
        return Strings.emotions.joy();
      case Emotion.satisfaction:
        return Strings.emotions.satisfaction();
      case Emotion.sureness:
        return Strings.emotions.sureness();
      case Emotion.energy:
        return Strings.emotions.energy();
      case Emotion.enthusiasm:
        return Strings.emotions.enthusiasm();
      case Emotion.hopelessness:
        return Strings.emotions.hopelessness();
      case Emotion.anxiety:
        return Strings.emotions.anxiety();
      case Emotion.helplessness:
        return Strings.emotions.helplessness();
      case Emotion.anger:
        return Strings.emotions.anger();
      case Emotion.sadness:
        return Strings.emotions.sadness();
      case Emotion.discomfort:
        return Strings.emotions.discomfort();
      case Emotion.confusion:
        return Strings.emotions.confusion();
      case Emotion.bewilderment:
        return Strings.emotions.bewilderment();
      case Emotion.unwillingness:
        return Strings.emotions.unwillingness();
      case Emotion.nervousness:
        return Strings.emotions.nervousness();
      case Emotion.impatience:
        return Strings.emotions.impatience();
      case Emotion.discouragement:
        return Strings.emotions.discouragement();
      case Emotion.loneliness:
        return Strings.emotions.loneliness();
      case Emotion.shock:
        return Strings.emotions.shock();
      case Emotion.irritation:
        return Strings.emotions.irritation();
      case Emotion.disappointment:
        return Strings.emotions.disappointment();
      case Emotion.embarrassment:
        return Strings.emotions.embarrassment();
    }
  }

  String get description {
    switch(this) {
      case Emotion.gratitude:
        return Strings.emotionDescriptions.gratitude();
      case Emotion.cheerfulness:
        return Strings.emotionDescriptions.cheerfulness();
      case Emotion.inspiration:
        return Strings.emotionDescriptions.inspiration();
      case Emotion.happiness:
        return Strings.emotionDescriptions.happiness();
      case Emotion.delight:
        return Strings.emotionDescriptions.delight();
      case Emotion.pride:
        return Strings.emotionDescriptions.pride();
      case Emotion.confidence:
        return Strings.emotionDescriptions.confidence();
      case Emotion.interest:
        return Strings.emotionDescriptions.interest();
      case Emotion.comfort:
        return Strings.emotionDescriptions.comfort();
      case Emotion.hope:
        return Strings.emotionDescriptions.hope();
      case Emotion.optimism:
        return Strings.emotionDescriptions.optimism();
      case Emotion.joy:
        return Strings.emotionDescriptions.joy();
      case Emotion.satisfaction:
        return Strings.emotionDescriptions.satisfaction();
      case Emotion.sureness:
        return Strings.emotionDescriptions.sureness();
      case Emotion.energy:
        return Strings.emotionDescriptions.energy();
      case Emotion.enthusiasm:
        return Strings.emotionDescriptions.enthusiasm();
      case Emotion.hopelessness:
        return Strings.emotionDescriptions.hopelessness();
      case Emotion.anxiety:
        return Strings.emotionDescriptions.anxiety();
      case Emotion.helplessness:
        return Strings.emotionDescriptions.helplessness();
      case Emotion.anger:
        return Strings.emotionDescriptions.anger();
      case Emotion.sadness:
        return Strings.emotionDescriptions.sadness();
      case Emotion.discomfort:
        return Strings.emotionDescriptions.discomfort();
      case Emotion.confusion:
        return Strings.emotionDescriptions.confusion();
      case Emotion.bewilderment:
        return Strings.emotionDescriptions.bewilderment();
      case Emotion.unwillingness:
        return Strings.emotionDescriptions.unwillingness();
      case Emotion.nervousness:
        return Strings.emotionDescriptions.nervousness();
      case Emotion.impatience:
        return Strings.emotionDescriptions.impatience();
      case Emotion.discouragement:
        return Strings.emotionDescriptions.discouragement();
      case Emotion.loneliness:
        return Strings.emotionDescriptions.loneliness();
      case Emotion.shock:
        return Strings.emotionDescriptions.shock();
      case Emotion.irritation:
        return Strings.emotionDescriptions.irritation();
      case Emotion.disappointment:
        return Strings.emotionDescriptions.disappointment();
      case Emotion.embarrassment:
        return Strings.emotionDescriptions.embarrassment();
    }
  }
}

abstract class EmotionsProvider {
  static final positiveEmotions = [
    Emotion.gratitude,
    Emotion.cheerfulness,
    Emotion.inspiration,
    Emotion.happiness,
    Emotion.delight,
    Emotion.pride,
    Emotion.confidence,
    Emotion.interest,
    Emotion.comfort,
    Emotion.hope,
    Emotion.optimism,
    Emotion.joy,
    Emotion.satisfaction,
    Emotion.sureness,
    Emotion.energy,
    Emotion.enthusiasm,
  ];

  static final negativeEmotions = Emotion.values.where((e) => !positiveEmotions.contains(e)).toList();
}