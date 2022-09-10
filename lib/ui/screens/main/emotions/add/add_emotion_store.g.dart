// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_emotion_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AddEmotionStore on _AddEmotionStore, Store {
  late final _$_selectedEmotionsAtom =
      Atom(name: '_AddEmotionStore._selectedEmotions', context: context);

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

  late final _$_stateAtom =
      Atom(name: '_AddEmotionStore._state', context: context);

  ChooseEmotionState get state {
    _$_stateAtom.reportRead();
    return super._state;
  }

  @override
  ChooseEmotionState get _state => state;

  @override
  set _state(ChooseEmotionState value) {
    _$_stateAtom.reportWrite(value, super._state, () {
      super._state = value;
    });
  }

  late final _$_foundEmotionsAtom =
      Atom(name: '_AddEmotionStore._foundEmotions', context: context);

  List<Emotion> get foundEmotions {
    _$_foundEmotionsAtom.reportRead();
    return super._foundEmotions;
  }

  @override
  List<Emotion> get _foundEmotions => foundEmotions;

  @override
  set _foundEmotions(List<Emotion> value) {
    _$_foundEmotionsAtom.reportWrite(value, super._foundEmotions, () {
      super._foundEmotions = value;
    });
  }

  late final _$_selectedCategoryAtom =
      Atom(name: '_AddEmotionStore._selectedCategory', context: context);

  EmotionsCategory get selectedCategory {
    _$_selectedCategoryAtom.reportRead();
    return super._selectedCategory;
  }

  @override
  EmotionsCategory get _selectedCategory => selectedCategory;

  @override
  set _selectedCategory(EmotionsCategory value) {
    _$_selectedCategoryAtom.reportWrite(value, super._selectedCategory, () {
      super._selectedCategory = value;
    });
  }

  late final _$_currentStepAtom =
      Atom(name: '_AddEmotionStore._currentStep', context: context);

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

  late final _$_AddEmotionStoreActionController =
      ActionController(name: '_AddEmotionStore', context: context);

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
  void onCategorySelected(EmotionsCategory category) {
    final _$actionInfo = _$_AddEmotionStoreActionController.startAction(
        name: '_AddEmotionStore.onCategorySelected');
    try {
      return super.onCategorySelected(category);
    } finally {
      _$_AddEmotionStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onNextStep({required void Function(String) onError}) {
    final _$actionInfo = _$_AddEmotionStoreActionController.startAction(
        name: '_AddEmotionStore.onNextStep');
    try {
      return super.onNextStep(onError: onError);
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
