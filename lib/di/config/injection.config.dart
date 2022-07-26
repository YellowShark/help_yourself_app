// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../common/routes/router.dart' as _i3;
import '../../data/services/auth/firebase_auth_service.dart' as _i9;
import '../../data/services/auth_manager/secure_auth_manager.dart' as _i7;
import '../../domain/interactors/auth/auth_interactor.dart' as _i10;
import '../../domain/services/auth/auth_service.dart' as _i8;
import '../../domain/services/auth_manager/auth_manager.dart' as _i6;
import '../../ui/stores/home/home_store.dart' as _i11;
import '../../ui/stores/splash/splash_store.dart' as _i12;
import '../modules/firebase_module.dart' as _i13;
import '../modules/secure_storage_module.dart'
    as _i14; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseModule = _$FirebaseModule();
  final secureStorageModule = _$SecureStorageModule();
  gh.singleton<_i3.AppRouter>(_i3.AppRouter());
  gh.factory<_i4.FirebaseAuth>(() => firebaseModule.firebaseAuth);
  gh.lazySingleton<_i5.FlutterSecureStorage>(
      () => secureStorageModule.secureStorage);
  gh.lazySingleton<_i6.AuthManager>(
      () => _i7.SecureAuthManager(get<_i5.FlutterSecureStorage>()));
  gh.lazySingleton<_i8.AuthService>(
      () => _i9.FirebaseAuthService(get<_i4.FirebaseAuth>()));
  gh.factory<_i10.AuthInteractor>(() =>
      _i10.AuthInteractor(get<_i8.AuthService>(), get<_i6.AuthManager>()));
  gh.factory<_i11.HomeViewModel>(
      () => _i11.HomeStore(get<_i10.AuthInteractor>(), get<_i3.AppRouter>()));
  gh.factory<_i12.SplashViewModel>(
      () => _i12.SplashStore(get<_i10.AuthInteractor>(), get<_i3.AppRouter>()));
  return get;
}

class _$FirebaseModule extends _i13.FirebaseModule {}

class _$SecureStorageModule extends _i14.SecureStorageModule {}
