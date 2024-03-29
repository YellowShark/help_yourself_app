import 'package:help_yourself_app/common/res/strings.dart';
import 'package:help_yourself_app/domain/entities/emotion/emotion.dart';

class EmotionNote {
  final int id;
  final List<Emotion> emotions;
  final String name;
  final String comment;
  final int date;

  EmotionNote({
    required this.id,
    required this.emotions,
    required this.name,
    required this.comment,
    required this.date,
  });

  factory EmotionNote.empty() => EmotionNote(
        id: 0,
        emotions: [],
        name: '',
        comment: '',
        date: DateTime.now().millisecondsSinceEpoch,
      );

  EmotionNote copyWith({
    int? id,
    List<Emotion>? emotions,
    String? name,
    String? comment,
    int? date,
  }) =>
      EmotionNote(
        id: id ?? this.id,
        emotions: emotions ?? this.emotions,
        name: name ?? this.name,
        comment: comment ?? this.comment,
        date: date ?? this.date,
      );

  @override
  String toString() {
    return 'EmotionNote{id: $id, emotions: $emotions, name: $name, comment: $comment, date: $date}';
  }

  static List<String> getTitles() => [
        Strings.excelTable.date(),
        Strings.excelTable.event(),
        Strings.excelTable.emotions(),
        Strings.excelTable.comment(),
      ];
}
