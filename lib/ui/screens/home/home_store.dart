import 'package:help_yourself_app/common/routes/router.dart';
import 'package:help_yourself_app/domain/interactors/auth/auth_interactor.dart';
import 'package:help_yourself_app/ui/base/base_view_model.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

@Injectable(as: HomeViewModel)
class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store implements HomeViewModel {
  final AppRouter _appRouter;
  final AuthInteractor _interactor;

  _HomeStore(
    this._interactor,
    this._appRouter,
  );

  @override
  Future logout() => _interactor.signOut();
}

abstract class HomeViewModel extends BaseViewModel {
  Future logout();
}
