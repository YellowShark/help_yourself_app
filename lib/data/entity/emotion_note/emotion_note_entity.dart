import 'dart:convert';

import 'package:help_yourself_app/data/extensions/entity_to_model.dart';
import 'package:help_yourself_app/domain/entities/emotion/emotion.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class EmotionNoteEntity {
  @Id()
  int id;
  String name;
  String comment;
  List<Emotion> emotions;
  int date;

  EmotionNoteEntity({
    this.id = 0,
    required this.name,
    required this.comment,
    this.emotions = const [],
    required this.date,
  });

  EmotionNoteEntity.create({
    this.id = 0,
    required this.name,
    required this.comment,
    required this.emotions,
    required this.date,
  });

  String get dbEmotion => jsonEncode(emotions.map((e) => e.toString()).toList());

  set dbEmotion(String value) {
    final list = jsonDecode(value) as List;
    emotions = list.map((e) => (e as String?)?.toEmotion() ?? Emotion.satisfaction).toList();
  }
}
