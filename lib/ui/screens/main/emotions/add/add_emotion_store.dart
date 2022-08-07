import 'package:help_yourself_app/common/res/strings.dart';
import 'package:help_yourself_app/common/routes/router.dart';
import 'package:help_yourself_app/domain/entities/emotion/emotion.dart';
import 'package:help_yourself_app/domain/entities/emotion/emotion_note.dart';
import 'package:help_yourself_app/domain/interactors/emotion_notes/emotion_notes_interactor.dart';
import 'package:help_yourself_app/ui/base/base_view_model.dart';
import 'package:help_yourself_app/domain/entities/emotion/emotions_category.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'add_emotion_store.g.dart';

abstract class AddEmotionViewModel extends BaseViewModel {
  ChooseEmotionState get state;

  List<Emotion> get selectedEmotions;

  List<Emotion> get foundEmotions;

  int get currentStep;

  EmotionsCategory get selectedCategory;

  void onEmotionSelected(Emotion emotion);

  void onSearch(String query);

  void onNextStep({required void Function(String text) onError});

  void onPrevStep();

  void onNameChanged(String text);

  void onCommentChanged(String text);

  void onDateChanged(DateTime date);

  Future onSave({required void Function(String text) onError});

  void onCategorySelected(EmotionsCategory category);
}

@LazySingleton(as: AddEmotionViewModel)
class AddEmotionStore = _AddEmotionStore with _$AddEmotionStore;

abstract class _AddEmotionStore with Store implements AddEmotionViewModel {
  final AppRouter _appRouter;
  final EmotionNotesInteractor _interactor;
  EmotionNote _emotionNote = EmotionNote.empty();

  _AddEmotionStore(
    this._appRouter,
    this._interactor,
  );

  @readonly
  ChooseEmotionState _state = ChooseEmotionState.initial;

  @readonly
  List<Emotion> _foundEmotions = [];

  @readonly
  List<Emotion> _selectedEmotions = [];

  @readonly
  EmotionsCategory _selectedCategory = EmotionsCategory.positive;

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
      _foundEmotions = [];
      _state = ChooseEmotionState.initial;
    } else {
      _foundEmotions = Emotion.values.where((e) => e.text.contains(query)).toList();
      if (_state == ChooseEmotionState.search) return;
      _state = ChooseEmotionState.search;
    }
  }

  @action
  @override
  void onCategorySelected(EmotionsCategory category) {
    if (category == _selectedCategory) return;
    _selectedCategory = category;
  }

  @action
  @override
  void onNextStep({required void Function(String text) onError}) {
    if (_selectedEmotions.isEmpty) {
      onError(Strings.addEmotion.emptyEmotions());
      return;
    }
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
  Future onSave({required void Function(String text) onError}) async {
    if (_emotionNote.name.isEmpty) {
      onError(Strings.addEmotion.emptyTitle());
      return;
    }
    await _interactor.addNote(_emotionNote);
    dispose();
    _appRouter.pop();
  }

  @override
  Future dispose() async {
    _emotionNote = EmotionNote.empty();
    _currentStep = 0;
    _selectedEmotions = [];
    _state = ChooseEmotionState.initial;
    _foundEmotions = [];
    _selectedCategory = EmotionsCategory.positive;
  }
}

enum ChooseEmotionState { initial, search, }
