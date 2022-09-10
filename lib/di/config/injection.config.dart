// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i8;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:objectbox/objectbox.dart' as _i11;

import '../../common/routes/router.dart' as _i3;
import '../../data/interactors/auth/firebase_auth_interactor.dart' as _i23;
import '../../data/interactors/emotion_notes/default_emotion_notes_interactor.dart'
    as _i18;
import '../../data/repositories/emotion_notes/object_box_emotion_notes_repository.dart'
    as _i5;
import '../../data/services/auth/firebase_auth_service.dart' as _i16;
import '../../data/services/auth_manager/secure_auth_manager.dart' as _i14;
import '../../data/services/excel_converter/default_excel_converter.dart'
    as _i7;
import '../../domain/entities/emotion/emotion_note.dart' as _i21;
import '../../domain/interactors/auth/auth_interactor.dart' as _i22;
import '../../domain/interactors/emotion_notes/emotion_notes_interactor.dart'
    as _i17;
import '../../domain/repositories/emotion_notes/emotion_notes_repository.dart'
    as _i4;
import '../../domain/services/auth/auth_service.dart' as _i15;
import '../../domain/services/auth_manager/auth_manager.dart' as _i13;
import '../../domain/services/excel_converter/excel_converter.dart' as _i6;
import '../../ui/screens/home/home_store.dart' as _i24;
import '../../ui/screens/main/emotions/add/add_emotion_store.dart' as _i20;
import '../../ui/screens/main/emotions/emotions_store.dart' as _i19;
import '../../ui/screens/main/main_store.dart' as _i10;
import '../../ui/screens/main/video/video_recommendations_store.dart' as _i12;
import '../modules/firebase_module.dart' as _i25;
import '../modules/local_module.dart'
    as _i26; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i6.ExcelConverter>(() => _i7.DefaultExcelConverter());
  await gh.singletonAsync<_i8.FirebaseAuth>(
      () => firebaseModule.getFirebaseAuth(),
      preResolve: true);
  gh.lazySingleton<_i9.FlutterSecureStorage>(() => localModule.secureStorage);
  gh.lazySingleton<_i10.MainViewModel>(
      () => _i10.MainStore(get<_i3.AppRouter>()));
  await gh.singletonAsync<_i11.Store>(() => localModule.objectBoxStore,
      preResolve: true);
  gh.factory<_i12.VideoRecommendationsViewModel>(
      () => _i12.VideoRecommendationsStore());
  gh.lazySingleton<_i13.AuthManager>(
      () => _i14.SecureAuthManager(get<_i9.FlutterSecureStorage>()));
  gh.lazySingleton<_i15.AuthService>(
      () => _i16.FirebaseAuthService(get<_i8.FirebaseAuth>()));
  gh.factory<_i17.EmotionNotesInteractor>(() =>
      _i18.DefaultEmotionNotesInteractor(
          get<_i4.EmotionNotesRepository>(), get<_i6.ExcelConverter>()));
  gh.factory<_i19.EmotionsViewModel>(() => _i19.EmotionsStore(
      get<_i3.AppRouter>(), get<_i17.EmotionNotesInteractor>()));
  gh.factoryParam<_i20.AddEmotionViewModel, _i21.EmotionNote?, dynamic>(
      (note, _) => _i20.AddEmotionStore(
          get<_i3.AppRouter>(), get<_i17.EmotionNotesInteractor>(), note));
  gh.factory<_i22.AuthInteractor>(() => _i23.DefaultAuthInteractor(
      get<_i15.AuthService>(), get<_i13.AuthManager>()));
  gh.factory<_i24.HomeViewModel>(
      () => _i24.HomeStore(get<_i22.AuthInteractor>(), get<_i3.AppRouter>()));
  return get;
}

class _$FirebaseModule extends _i25.FirebaseModule {}

class _$LocalModule extends _i26.LocalModule {}
