import 'package:help_yourself_app/domain/entities/emotion/emotion_note.dart';

abstract class EmotionNotesInteractor {
  Future addNote(EmotionNote note);
  Future updateNote(EmotionNote note);
  Stream<List<EmotionNote>> getAllNotes();
  Future shareNotes(List<EmotionNote> notes);
}