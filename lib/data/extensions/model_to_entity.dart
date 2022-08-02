import 'package:help_yourself_app/data/entity/emotion_note/emotion_note_entity.dart';
import 'package:help_yourself_app/domain/entities/emotion/emotion_note.dart';

extension EmotionNoteyMapper on EmotionNote {
  EmotionNoteEntity toEntity() => EmotionNoteEntity.create(
        name: name,
        comment: comment,
        emotions: emotions,
        date: date,
      );
}
