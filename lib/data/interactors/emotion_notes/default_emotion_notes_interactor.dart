import 'package:help_yourself_app/domain/entities/emotion/emotion_note.dart';
import 'package:help_yourself_app/domain/interactors/emotion_notes/emotion_notes_interactor.dart';
import 'package:help_yourself_app/domain/repositories/emotion_notes/emotion_notes_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: EmotionNotesInteractor)
class DefaultEmotionNotesInteractor extends EmotionNotesInteractor {
  final EmotionNotesRepository _repository;

  DefaultEmotionNotesInteractor(this._repository);

  @override
  Future addNote(EmotionNote note) => _repository.addNote(note);

  @override
  Future updateNote(EmotionNote note) => _repository.updateNote(note);

  @override
  Stream<List<EmotionNote>> getAllNotes() => _repository.getAllNotes();
}