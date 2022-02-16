import 'package:cloud_chat/domain/interactors/auth/auth_interactor.dart';
import 'package:cloud_chat/ui/stores/splash/splash_view_model.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'splash_store.g.dart';

@Injectable(as: SplashViewModel)
class SplashStore = _SplashStore with _$SplashStore;

abstract class _SplashStore with Store implements SplashViewModel {
  final AuthInteractor _interactor;

  _SplashStore(this._interactor);

  @override
  Future<bool> authorized() => _interactor.authorized();
}