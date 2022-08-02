import 'package:help_yourself_app/data/entity/emotion_note/emotion_note_entity.dart';
import 'package:help_yourself_app/domain/entities/emotion/emotion.dart';
import 'package:help_yourself_app/domain/entities/emotion/emotion_note.dart';

extension EnumFromString on String {
  Emotion toEmotion() => _enumFromString(Emotion.values);

  T _enumFromString<T>(List<T> values) {
    return values.firstWhere(
          (value) => value.toString() == this,
    );
  }
}

extension EmotionNoteEntityMapper on EmotionNoteEntity {
  EmotionNote toModel() => EmotionNote(id: id, emotions: emotions, name: name, comment: comment, date: date);
}