import 'dart:async';

import 'package:help_yourself_app/common/routes/router.dart';
import 'package:help_yourself_app/domain/entities/emotion/emotion_note.dart';
import 'package:help_yourself_app/domain/interactors/emotion_notes/emotion_notes_interactor.dart';
import 'package:help_yourself_app/ui/base/base_view_model.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'emotions_store.g.dart';

abstract class EmotionsViewModel extends BaseViewModel {
  List<EmotionNote> get notes;
  void onCreateClick();
  Future updateNotes();
}

@Injectable(as: EmotionsViewModel)
class EmotionsStore = _EmotionsStore with _$EmotionsStore;

abstract class _EmotionsStore with Store implements EmotionsViewModel {
  final AppRouter _appRouter;
  final EmotionNotesInteractor _interactor;

  _EmotionsStore(
    this._appRouter,
    this._interactor,
  ) {
    _initNotes();
  }

  @readonly
  List<EmotionNote> _notes = [];

  @override
  void onCreateClick() {
    _appRouter.push(AddEmotionRoute());
  }

  @action
  @override
  Future updateNotes() async {
    await _initNotes();
  }

  Future _initNotes() async {
    _interactor.getAllNotes().listen((notes) {
      _notes = notes;
    });
  }
}
