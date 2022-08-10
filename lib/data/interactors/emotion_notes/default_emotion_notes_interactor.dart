import 'package:help_yourself_app/domain/entities/emotion/emotion_note.dart';
import 'package:help_yourself_app/domain/interactors/emotion_notes/emotion_notes_interactor.dart';
import 'package:help_yourself_app/domain/repositories/emotion_notes/emotion_notes_repository.dart';
import 'package:help_yourself_app/domain/services/excel_converter/excel_converter.dart';
import 'package:injectable/injectable.dart';
import 'package:share_plus/share_plus.dart';

@Injectable(as: EmotionNotesInteractor)
class DefaultEmotionNotesInteractor extends EmotionNotesInteractor {
  final EmotionNotesRepository _repository;
  final ExcelConverter _excelConverter;

  DefaultEmotionNotesInteractor(
    this._repository,
    this._excelConverter,
  );

  @override
  Future addNote(EmotionNote note) => _repository.addNote(note);

  @override
  Future updateNote(EmotionNote note) => _repository.updateNote(note);

  @override
  Stream<List<EmotionNote>> getAllNotes() => _repository.getAllNotes();

  @override
  Future shareNotes(List<EmotionNote> notes) async {
    final path = await _excelConverter.convertToSingleFile(notes);
    await Share.shareFiles([path], text: 'My notes');
  }
}
