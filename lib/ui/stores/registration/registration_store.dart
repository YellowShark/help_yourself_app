import 'package:cloud_chat/common/extensions/extensions.dart';
import 'package:cloud_chat/common/res/strings.dart';
import 'package:cloud_chat/ui/stores/registration/registration_view_model.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'registration_store.g.dart';

@Injectable(as: RegistrationViewModel)
class RegistrationStore = _RegistrationStore with _$RegistrationStore;

abstract class _RegistrationStore with Store implements RegistrationViewModel {
  @observable
  @override
  String? emailError;
  @observable
  @override
  String? passwordError;
  @observable
  @override
  String? passwordAgainError;

  String _currentEmail = '';
  String _currentPassword = '';
  String _currentPasswordAgain = '';

  @action
  @override
  void onEmailChanged(String newValue) {
    _currentEmail = newValue;
    _clearAllErrors();
  }

  @action
  @override
  void onPasswordChanged(String newValue) {
    _currentPassword = newValue;
    _clearAllErrors();
  }

  @action
  @override
  void onPasswordAgainChanged(String newValue) {
    _currentPasswordAgain = newValue;
    _clearAllErrors();
  }

  @override
  Future<bool> signUp() async {
    if (_validCredentials()) {
      // Make request
      return true;
    }
    return false;
  }

  void _clearAllErrors() {
    emailError = null;
    passwordError = null;
    passwordAgainError = null;
  }

  bool _validCredentials() {
    if (_currentEmail.isEmpty) {
      emailError = Strings.commonErrors.emptyField;
      return false;
    }
    if (!_currentEmail.isValidEmail()) {
      emailError = Strings.registration.invalidEmail;
      return false;
    }
    if (_currentPassword.isEmpty) {
      passwordError = Strings.commonErrors.emptyField;
      return false;
    }
    if (_currentPasswordAgain.isEmpty) {
      passwordAgainError = Strings.commonErrors.emptyField;
      return false;
    }
    if (_currentPassword != _currentPasswordAgain) {
      passwordAgainError = Strings.registration.passwordsNotEqual;
      return false;
    }
    return true;
  }
}