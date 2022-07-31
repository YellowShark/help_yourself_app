import 'package:help_yourself_app/common/routes/router.dart';
import 'package:help_yourself_app/ui/base/base_view_model.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'add_emotion_store.g.dart';

abstract class AddEmotionViewModel extends BaseViewModel {
}

@LazySingleton(as: AddEmotionViewModel)
class AddEmotionStore = _AddEmotionStore with _$AddEmotionStore;

abstract class _AddEmotionStore with Store implements AddEmotionViewModel {
  final AppRouter _appRouter;

  _AddEmotionStore(this._appRouter);
}