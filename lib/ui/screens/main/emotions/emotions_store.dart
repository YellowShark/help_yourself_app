import 'package:help_yourself_app/common/routes/router.dart';
import 'package:help_yourself_app/ui/base/base_view_model.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'emotions_store.g.dart';

abstract class EmotionsViewModel extends BaseViewModel {
  void onCreateClick();
}

@Injectable(as: EmotionsViewModel)
class EmotionsStore = _EmotionsStore with _$EmotionsStore;

abstract class _EmotionsStore with Store implements EmotionsViewModel {
  final AppRouter _appRouter;

  _EmotionsStore(this._appRouter);

  @override
  void onCreateClick() {
    _appRouter.push(AddEmotionRoute());
  }
}