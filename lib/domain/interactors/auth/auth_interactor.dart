import 'dart:developer';

import 'package:cloud_chat/domain/services/auth/auth_service.dart';
import 'package:cloud_chat/domain/services/auth_manager/auth_manager.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthInteractor {
  final AuthService _authService;
  final AuthManager _authManager;

  AuthInteractor(this._authService, this._authManager);

  Future<AuthResult> signIn(String email, String password) async {
    try {
      UserCredential userCredential = await _authService.signIn(email, password,);
      log(userCredential.toString());
      await _authManager.saveToken(userCredential.user?.uid ?? '');
      return AuthResult.success;
    } on FirebaseAuthException catch (e) {
    log(e.toString());
    if (e.code == 'user-not-found') {
    return AuthResult.unknownUser;
    } else if (e.code == 'wrong-password') {
    return AuthResult.invalidPassword;
    }
    } on Exception catch (ex) {
    log(ex.toString());
    return AuthResult.unknownError;
    }
    return AuthResult.unknownError;
  }

  Future signOut() async {
    await _authService.logout();
    await _authManager.deleteToken();
  }

  Future<bool> authorized() => _authManager.authorized();
}

enum AuthResult { success, unknownUser, invalidPassword, unknownError }