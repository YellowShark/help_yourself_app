import 'package:cloud_chat/common/res/dimens.dart';
import 'package:cloud_chat/common/res/strings.dart';
import 'package:cloud_chat/common/utils/consts.dart';
import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

const _logoSize = 200.0;

class LoginScreen extends StatelessWidget {
  final loginController = TextEditingController();
  final passwordController = TextEditingController();

  final loginFocus = FocusNode();
  final passwordFocus = FocusNode();

  final loadingButtonController = RoundedLoadingButtonController();

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    controller: loginController,
                    focusNode: loginFocus,
                    decoration: InputDecoration(hintText: Strings.login.loginHint),
                    textInputAction: TextInputAction.next,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: Dimens.padding24),
                  child: TextField(
                    controller: passwordController,
                    focusNode: passwordFocus,
                    decoration: InputDecoration(hintText: Strings.login.passwordHint),
                    textInputAction: TextInputAction.done,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: RoundedLoadingButton(
              color: Colors.deepOrange,
              controller: loadingButtonController,
              onPressed: () {},
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
