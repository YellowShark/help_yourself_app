abstract class AuthService {
  Future<AuthResult> signIn(String email, String password);
}

enum AuthResult { success, unknownUser, invalidPassword, unknownError }