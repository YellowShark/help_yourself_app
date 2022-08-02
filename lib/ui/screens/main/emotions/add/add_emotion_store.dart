import 'package:help_yourself_app/common/routes/router.dart';
import 'package:help_yourself_app/domain/entities/emotion/emotion.dart';
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
}

@LazySingleton(as: AddEmotionViewModel)
class AddEmotionStore = _AddEmotionStore with _$AddEmotionStore;

abstract class _AddEmotionStore with Store implements AddEmotionViewModel {
  final AppRouter _appRouter;

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
  }

  @action
  @override
  void onPrevStep() {
    _currentStep = _currentStep - 1;
  }
}