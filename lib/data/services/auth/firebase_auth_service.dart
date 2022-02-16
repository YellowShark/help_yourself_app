import 'dart:developer';

import 'package:cloud_chat/domain/services/auth/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthService)
class FirebaseAuthService implements AuthService {
  final FirebaseAuth _firebaseAuth;

  FirebaseAuthService(this._firebaseAuth);

  @override
  Future<AuthResult> signIn(String email, String password) async {
    try {
      UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      log(userCredential.toString());
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
}