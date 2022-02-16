import 'package:cloud_chat/domain/services/auth/auth_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthInteractor {
  final AuthService _authService;

  AuthInteractor(this._authService);

  Future<AuthResult> signIn(String email, String password) => _authService.signIn(email, password);
}