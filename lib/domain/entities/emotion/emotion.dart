enum Emotion {
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
  // TODO add negative emotions.
}

extension EmotionExt on Emotion {
  String get ruWord {
    switch(this) {
      case Emotion.gratitude:
        return 'благодарность';
      case Emotion.cheerfulness:
        return 'бодрость';
      case Emotion.inspiration:
        return 'вдохновение';
      case Emotion.happiness:
        return 'счастье';
      case Emotion.delight:
        return 'восторг';
      case Emotion.pride:
        return 'гордость';
      case Emotion.confidence:
        return 'доверие';
      case Emotion.interest:
        return 'интерес';
      case Emotion.comfort:
        return 'комфорт';
      case Emotion.hope:
        return 'надежда';
      case Emotion.optimism:
        return 'оптимизм';
      case Emotion.joy:
        return 'радость';
      case Emotion.satisfaction:
        return 'удовлетворение';
      case Emotion.sureness:
        return 'уверенность';
      case Emotion.energy:
        return 'энергия';
      case Emotion.enthusiasm:
        return 'энтузиазм';
    }
  }
}