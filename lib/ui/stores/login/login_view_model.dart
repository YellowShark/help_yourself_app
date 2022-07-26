import 'package:help_yourself_app/ui/base/base_view_model.dart';

abstract class LoginViewModel extends BaseViewModel {
  String? get loginError;

  String? get passwordError;

  void onLoginChanged(String newValue);

  void onPasswordChanged(String newValue);

  Future<bool> signIn();
}
