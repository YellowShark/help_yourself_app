import 'package:help_yourself_app/common/routes/router.dart';
import 'package:help_yourself_app/domain/interactors/auth/auth_interactor.dart';
import 'package:help_yourself_app/ui/base/base_view_model.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'splash_store.g.dart';

const _waitDelay = Duration(milliseconds: 800);

@Injectable(as: SplashViewModel)
class SplashStore = _SplashStore with _$SplashStore;

abstract class _SplashStore with Store implements SplashViewModel {
  @override
  final AppRouter appRouter;
  final AuthInteractor _interactor;

  _SplashStore(
    this._interactor,
    this.appRouter,
  ) {
    _init();
  }

  @override
  Future<bool> authorized() => _interactor.authorized();

  Future _init() => Future.delayed(_waitDelay, () => appRouter.replace(HomeRoute()));
}

abstract class SplashViewModel extends BaseViewModel {
  Future<bool> authorized();
}
