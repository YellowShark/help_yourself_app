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

  factory EmotionNote.empty() => EmotionNote(
        emotions: [],
        name: '',
        comment: '',
        date: DateTime.now().millisecondsSinceEpoch,
      );

  EmotionNote copyWith({
    List<Emotion>? emotions,
    String? name,
    String? comment,
    int? date,
  }) =>
      EmotionNote(
        emotions: emotions ?? this.emotions,
        name: name ?? this.name,
        comment: comment ?? this.comment,
        date: date ?? this.date,
      );

  @override
  String toString() {
    return 'EmotionNote{emotions: $emotions, name: $name, comment: $comment, date: $date}';
  }
}
