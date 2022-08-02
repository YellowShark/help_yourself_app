import 'package:help_yourself_app/domain/entities/emotion/emotion.dart';

class EmotionNote {
  final List<Emotion> emotions;
  final String name;
  final String comment;
  final int date;

  EmotionNote({
    required this.emotions,
    required this.name,
    required this.comment,
    required this.date,
  });
}
