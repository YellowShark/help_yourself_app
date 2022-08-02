import 'package:help_yourself_app/data/interactors/auth/firebase_auth_interactor.dart';

abstract class AuthInteractor {
  Future<AuthResult> signIn(String email, String password);

  Future signOut();

  Future<bool> authorized();
}