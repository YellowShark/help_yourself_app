// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginStore on _LoginStore, Store {
  final _$loginErrorAtom = Atom(name: '_LoginStore.loginError');

  @override
  String? get loginError {
    _$loginErrorAtom.reportRead();
    return super.loginError;
  }

  @override
  set loginError(String? value) {
    _$loginErrorAtom.reportWrite(value, super.loginError, () {
      super.loginError = value;
    });
  }

  final _$passwordErrorAtom = Atom(name: '_LoginStore.passwordError');

  @override
  String? get passwordError {
    _$passwordErrorAtom.reportRead();
    return super.passwordError;
  }

  @override
  set passwordError(String? value) {
    _$passwordErrorAtom.reportWrite(value, super.passwordError, () {
      super.passwordError = value;
    });
  }

  final _$signInAsyncAction = AsyncAction('_LoginStore.signIn');

  @override
  Future<bool> signIn() {
    return _$signInAsyncAction.run(() => super.signIn());
  }

  final _$_LoginStoreActionController = ActionController(name: '_LoginStore');

  @override
  void onLoginChanged(String newValue) {
    final _$actionInfo = _$_LoginStoreActionController.startAction(
        name: '_LoginStore.onLoginChanged');
    try {
      return super.onLoginChanged(newValue);
    } finally {
      _$_LoginStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onPasswordChanged(String newValue) {
    final _$actionInfo = _$_LoginStoreActionController.startAction(
        name: '_LoginStore.onPasswordChanged');
    try {
      return super.onPasswordChanged(newValue);
    } finally {
      _$_LoginStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loginError: ${loginError},
passwordError: ${passwordError}
    ''';
  }
}
