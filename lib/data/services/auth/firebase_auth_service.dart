import 'package:firebase_auth/firebase_auth.dart';
import 'package:help_yourself_app/domain/services/auth/auth_service.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthService)
class FirebaseAuthService implements AuthService {
  final FirebaseAuth _firebaseAuth;

  FirebaseAuthService(this._firebaseAuth);

  @override
  Future<UserCredential> signIn(String email, String password) async {
    UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return userCredential;
  }

  @override
  Future logout() => _firebaseAuth.signOut();

}