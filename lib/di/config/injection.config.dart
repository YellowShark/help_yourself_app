// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/services/auth/firebase_auth_service.dart' as _i5;
import '../../domain/interactors/auth/auth_interactor.dart' as _i6;
import '../../domain/services/auth/auth_service.dart' as _i4;
import '../../ui/stores/login/login_store.dart' as _i8;
import '../../ui/stores/login/login_view_model.dart' as _i7;
import '../modules/firebase_module.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseModule = _$FirebaseModule();
  gh.factory<_i3.FirebaseAuth>(() => firebaseModule.firebaseAuth);
  gh.lazySingleton<_i4.AuthService>(
      () => _i5.FirebaseAuthService(get<_i3.FirebaseAuth>()));
  gh.factory<_i6.AuthInteractor>(
      () => _i6.AuthInteractor(get<_i4.AuthService>()));
  gh.factory<_i7.LoginViewModel>(
      () => _i8.LoginStore(get<_i6.AuthInteractor>()));
  return get;
}

class _$FirebaseModule extends _i9.FirebaseModule {}
