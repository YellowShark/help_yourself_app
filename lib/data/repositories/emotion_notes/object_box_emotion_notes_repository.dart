import 'package:help_yourself_app/data/entity/emotion_note/emotion_note_entity.dart';
import 'package:help_yourself_app/data/extensions/entity_to_model.dart';
import 'package:help_yourself_app/data/extensions/model_to_entity.dart';
import 'package:help_yourself_app/di/config/injection.dart';
import 'package:help_yourself_app/domain/entities/emotion/emotion_note.dart';
import 'package:help_yourself_app/domain/repositories/emotion_notes/emotion_notes_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:objectbox/objectbox.dart';

@LazySingleton(as: EmotionNotesRepository)
class ObjectBoxEmotionNotesRepository extends EmotionNotesRepository {
  final _store = getIt<Store>();
  late Box<EmotionNoteEntity> _box;

  ObjectBoxEmotionNotesRepository() {
    _box = _store.box<EmotionNoteEntity>();
  }

  @override
  Future addNote(EmotionNote note) => _box.putAsync(note.toEntity());

  @override
  Stream<List<EmotionNote>> getAllNotes() => _box.query()
      .watch(triggerImmediately: true)
      .map((query) => query.find().map((entity) => entity.toModel()).toList());
}
