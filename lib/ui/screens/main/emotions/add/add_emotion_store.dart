import 'package:help_yourself_app/common/routes/router.dart';
import 'package:help_yourself_app/domain/entities/emotion/emotion.dart';
import 'package:help_yourself_app/domain/entities/emotion/emotion_note.dart';
import 'package:help_yourself_app/ui/base/base_view_model.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'add_emotion_store.g.dart';

abstract class AddEmotionViewModel extends BaseViewModel {
  List<Emotion> get emotions;
  List<Emotion> get selectedEmotions;
  int get currentStep;
  void onEmotionSelected(Emotion emotion);
  void onSearch(String query);
  void onNextStep();
  void onPrevStep();
  void onNameChanged(String text);
  void onCommentChanged(String text);
  void onDateChanged(DateTime date);
  void onSave();
}

@LazySingleton(as: AddEmotionViewModel)
class AddEmotionStore = _AddEmotionStore with _$AddEmotionStore;

abstract class _AddEmotionStore with Store implements AddEmotionViewModel {
  final AppRouter _appRouter;
  EmotionNote _emotionNote = EmotionNote.empty();

  _AddEmotionStore(this._appRouter);

  @readonly
  List<Emotion> _emotions = Emotion.values;

  @readonly
  List<Emotion> _selectedEmotions = [];

  @readonly
  int _currentStep = 0;

  @action
  @override
  void onEmotionSelected(Emotion emotion) {
    if (!_selectedEmotions.contains(emotion)) {
      _selectedEmotions = _selectedEmotions..add(emotion);
    } else {
      _selectedEmotions = _selectedEmotions..remove(emotion);
    }
  }

  @action
  @override
  void onSearch(String query) {
    if (query.isEmpty) {
      _emotions = Emotion.values;
    } else {
      _emotions = Emotion.values.where((e) => e.ruWord.contains(query)).toList();
    }
  }

  @action
  @override
  void onNextStep() {
    _currentStep = _currentStep + 1;
    _emotionNote = _emotionNote.copyWith(emotions: selectedEmotions);
  }

  @action
  @override
  void onPrevStep() {
    _currentStep = _currentStep - 1;
  }

  @override
  void onNameChanged(String text) {
    _emotionNote = _emotionNote.copyWith(name: text);
  }

  @override
  void onCommentChanged(String text) {
    _emotionNote = _emotionNote.copyWith(comment: text);
  }

  @override
  void onDateChanged(DateTime date) {
    _emotionNote = _emotionNote.copyWith(date: date.millisecondsSinceEpoch);
  }

  @override
  void onSave() {
    print(_emotionNote);
    // TODO save in db and navigate to page with notes list
  }
}