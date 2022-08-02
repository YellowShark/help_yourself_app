// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_emotion_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AddEmotionStore on _AddEmotionStore, Store {
  final _$_emotionsAtom = Atom(name: '_AddEmotionStore._emotions');

  List<Emotion> get emotions {
    _$_emotionsAtom.reportRead();
    return super._emotions;
  }

  @override
  List<Emotion> get _emotions => emotions;

  @override
  set _emotions(List<Emotion> value) {
    _$_emotionsAtom.reportWrite(value, super._emotions, () {
      super._emotions = value;
    });
  }

  final _$_selectedEmotionsAtom =
      Atom(name: '_AddEmotionStore._selectedEmotions');

  List<Emotion> get selectedEmotions {
    _$_selectedEmotionsAtom.reportRead();
    return super._selectedEmotions;
  }

  @override
  List<Emotion> get _selectedEmotions => selectedEmotions;

  @override
  set _selectedEmotions(List<Emotion> value) {
    _$_selectedEmotionsAtom.reportWrite(value, super._selectedEmotions, () {
      super._selectedEmotions = value;
    });
  }

  final _$_currentStepAtom = Atom(name: '_AddEmotionStore._currentStep');

  int get currentStep {
    _$_currentStepAtom.reportRead();
    return super._currentStep;
  }

  @override
  int get _currentStep => currentStep;

  @override
  set _currentStep(int value) {
    _$_currentStepAtom.reportWrite(value, super._currentStep, () {
      super._currentStep = value;
    });
  }

  final _$_AddEmotionStoreActionController =
      ActionController(name: '_AddEmotionStore');

  @override
  void onEmotionSelected(Emotion emotion) {
    final _$actionInfo = _$_AddEmotionStoreActionController.startAction(
        name: '_AddEmotionStore.onEmotionSelected');
    try {
      return super.onEmotionSelected(emotion);
    } finally {
      _$_AddEmotionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onSearch(String query) {
    final _$actionInfo = _$_AddEmotionStoreActionController.startAction(
        name: '_AddEmotionStore.onSearch');
    try {
      return super.onSearch(query);
    } finally {
      _$_AddEmotionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onNextStep() {
    final _$actionInfo = _$_AddEmotionStoreActionController.startAction(
        name: '_AddEmotionStore.onNextStep');
    try {
      return super.onNextStep();
    } finally {
      _$_AddEmotionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onPrevStep() {
    final _$actionInfo = _$_AddEmotionStoreActionController.startAction(
        name: '_AddEmotionStore.onPrevStep');
    try {
      return super.onPrevStep();
    } finally {
      _$_AddEmotionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
