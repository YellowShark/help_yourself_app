import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:help_yourself_app/objectbox.g.dart';
import 'package:injectable/injectable.dart';
import 'package:objectbox/objectbox.dart';

@module
abstract class LocalModule {
  @lazySingleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage();

  @preResolve
  @Singleton()
  Future<Store> get objectBoxStore => openStore();
}