// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../common/routes/router.dart' as _i3;
import '../../data/interactors/auth/firebase_auth_interactor.dart' as _i19;
import '../../data/interactors/emotion_notes/default_emotion_notes_interactor.dart'
    as _i15;
import '../../data/repositories/emotion_notes/object_box_emotion_notes_repository.dart'
    as _i5;
import '../../data/services/auth/firebase_auth_service.dart' as _i13;
import '../../data/services/auth_manager/secure_auth_manager.dart' as _i11;
import '../../domain/interactors/auth/auth_interactor.dart' as _i18;
import '../../domain/interactors/emotion_notes/emotion_notes_interactor.dart'
    as _i14;
import '../../domain/repositories/emotion_notes/emotion_notes_repository.dart'
    as _i4;
import '../../domain/services/auth/auth_service.dart' as _i12;
import '../../domain/services/auth_manager/auth_manager.dart' as _i10;
import '../../objectbox.g.dart' as _i9;
import '../../ui/screens/home/home_store.dart' as _i20;
import '../../ui/screens/main/emotions/add/add_emotion_store.dart' as _i17;
import '../../ui/screens/main/emotions/emotions_store.dart' as _i16;
import '../../ui/screens/main/main_store.dart' as _i8;
import '../modules/firebase_module.dart' as _i21;
import '../modules/local_module.dart'
    as _i22; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseModule = _$FirebaseModule();
  final localModule = _$LocalModule();
  gh.singleton<_i3.AppRouter>(_i3.AppRouter());
  gh.lazySingleton<_i4.EmotionNotesRepository>(
      () => _i5.ObjectBoxEmotionNotesRepository());
  await gh.singletonAsync<_i6.FirebaseAuth>(
      () => firebaseModule.getFirebaseAuth(),
      preResolve: true);
  gh.lazySingleton<_i7.FlutterSecureStorage>(() => localModule.secureStorage);
  gh.lazySingleton<_i8.MainViewModel>(
      () => _i8.MainStore(get<_i3.AppRouter>()));
  await gh.singletonAsync<_i9.Store>(() => localModule.objectBoxStore,
      preResolve: true);
  gh.lazySingleton<_i10.AuthManager>(
      () => _i11.SecureAuthManager(get<_i7.FlutterSecureStorage>()));
  gh.lazySingleton<_i12.AuthService>(
      () => _i13.FirebaseAuthService(get<_i6.FirebaseAuth>()));
  gh.factory<_i14.EmotionNotesInteractor>(() =>
      _i15.DefaultEmotionNotesInteractor(get<_i4.EmotionNotesRepository>()));
  gh.factory<_i16.EmotionsViewModel>(() => _i16.EmotionsStore(
      get<_i3.AppRouter>(), get<_i14.EmotionNotesInteractor>()));
  gh.lazySingleton<_i17.AddEmotionViewModel>(() => _i17.AddEmotionStore(
      get<_i3.AppRouter>(), get<_i14.EmotionNotesInteractor>()));
  gh.factory<_i18.AuthInteractor>(() => _i19.FirebaseAuthInteractor(
      get<_i12.AuthService>(), get<_i10.AuthManager>()));
  gh.factory<_i20.HomeViewModel>(
      () => _i20.HomeStore(get<_i18.AuthInteractor>(), get<_i3.AppRouter>()));
  return get;
}

class _$FirebaseModule extends _i21.FirebaseModule {}

class _$LocalModule extends _i22.LocalModule {}
