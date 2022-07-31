// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../common/routes/router.dart' as _i3;
import '../../data/services/auth/firebase_auth_service.dart' as _i10;
import '../../data/services/auth_manager/secure_auth_manager.dart' as _i8;
import '../../domain/interactors/auth/auth_interactor.dart' as _i11;
import '../../domain/services/auth/auth_service.dart' as _i9;
import '../../domain/services/auth_manager/auth_manager.dart' as _i7;
import '../../ui/screens/home/home_store.dart' as _i12;
import '../../ui/screens/main/emotions/add/add_emotion_store.dart' as _i6;
import '../../ui/screens/splash/splash_store.dart' as _i13;
import '../modules/firebase_module.dart' as _i14;
import '../modules/secure_storage_module.dart'
    as _i15; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseModule = _$FirebaseModule();
  final secureStorageModule = _$SecureStorageModule();
  gh.singleton<_i3.AppRouter>(_i3.AppRouter());
  await gh.singletonAsync<_i4.FirebaseAuth>(
      () => firebaseModule.getFirebaseAuth(),
      preResolve: true);
  gh.lazySingleton<_i5.FlutterSecureStorage>(
      () => secureStorageModule.secureStorage);
  gh.lazySingleton<_i6.AddEmotionViewModel>(
      () => _i6.AddEmotionStore(get<_i3.AppRouter>()));
  gh.lazySingleton<_i7.AuthManager>(
      () => _i8.SecureAuthManager(get<_i5.FlutterSecureStorage>()));
  gh.lazySingleton<_i9.AuthService>(
      () => _i10.FirebaseAuthService(get<_i4.FirebaseAuth>()));
  gh.factory<_i11.AuthInteractor>(() =>
      _i11.AuthInteractor(get<_i9.AuthService>(), get<_i7.AuthManager>()));
  gh.factory<_i12.HomeViewModel>(
      () => _i12.HomeStore(get<_i11.AuthInteractor>(), get<_i3.AppRouter>()));
  gh.factory<_i13.SplashViewModel>(
      () => _i13.SplashStore(get<_i11.AuthInteractor>(), get<_i3.AppRouter>()));
  return get;
}

class _$FirebaseModule extends _i14.FirebaseModule {}

class _$SecureStorageModule extends _i15.SecureStorageModule {}
