import 'package:help_yourself_app/domain/interactors/auth/auth_interactor.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import 'home_view_model.dart';

part 'home_store.g.dart';

@Injectable(as: HomeViewModel)
class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store implements HomeViewModel {
  final AuthInteractor _interactor;

  _HomeStore(this._interactor);

  @override
  Future logout() => _interactor.signOut();
}