abstract class AuthManager {
  Future saveToken(String uid);
  Future<String> getToken();
  Future<bool> authorized();
  Future deleteToken();
}