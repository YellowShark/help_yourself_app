import 'dart:async';
import 'dart:developer';

import 'package:cloud_chat/common/res/dimens.dart';
import 'package:cloud_chat/common/res/strings.dart';
import 'package:cloud_chat/common/routes/routes.dart';
import 'package:cloud_chat/common/utils/consts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

const _logoSize = 200.0;

class LoginScreen extends StatelessWidget {
  final _loginController = TextEditingController();
  final _passwordController = TextEditingController();

  final _loginFocus = FocusNode();
  final _passwordFocus = FocusNode();

  final _loadingButtonController = RoundedLoadingButtonController();

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _loadingButtonController.stateStream.listen((event) {
      if (event == ButtonState.success) {
        Timer(const Duration(milliseconds: 500), () => Navigator.pushReplacementNamed(context, Routes.home));
      }
    });
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(Strings.login.title),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Padding(
                  padding: EdgeInsets.all(Dimens.padding24),
                  child: SizedBox(
                    width: _logoSize,
                    height: _logoSize,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(Consts.logoImage),
                    ),
                  ),
                ),
                Text(
                  Strings.appName,
                  style: TextStyle(
                    fontSize: Dimens.extraLargeFontSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Dimens.padding24,
                    vertical: Dimens.padding16,
                  ),
                  child: TextField(
                    controller: _loginController,
                    focusNode: _loginFocus,
                    decoration: InputDecoration(hintText: Strings.login.loginHint),
                    textInputAction: TextInputAction.next,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: Dimens.padding24),
                  child: TextField(
                    controller: _passwordController,
                    focusNode: _passwordFocus,
                    decoration: InputDecoration(hintText: Strings.login.passwordHint),
                    textInputAction: TextInputAction.done,
                    obscureText: true,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: RoundedLoadingButton(
              color: Colors.deepOrange,
              controller: _loadingButtonController,
              onPressed: () async {
                await Firebase.initializeApp();
                try {
                  UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                      email: _loginController.text,
                      password: _passwordController.text,
                  );
                  log(userCredential.toString());
                  _loadingButtonController.success();
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'user-not-found') {
                    Fluttertoast.showToast(msg: 'No user found for that email.');
                  } else if (e.code == 'wrong-password') {
                    Fluttertoast.showToast(msg: 'Wrong password provided for that user.');
                  }
                  _loadingButtonController.reset();
                }
              },
              child: Text(
                Strings.login.loginButton,
                style: const TextStyle(fontSize: Dimens.normalFontSize),
              ),
            ),
          )
        ],
      ),
    );
  }
}
