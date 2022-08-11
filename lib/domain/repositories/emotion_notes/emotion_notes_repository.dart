import 'package:help_yourself_app/domain/entities/emotion/emotion_note.dart';

abstract class EmotionNotesRepository {
  Future addNote(EmotionNote note);
  Stream<List<EmotionNote>> getAllNotes();
  Future updateNote(EmotionNote note);
}