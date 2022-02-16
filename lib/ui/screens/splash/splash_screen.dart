import 'dart:async';

import 'package:cloud_chat/common/res/dimens.dart';
import 'package:cloud_chat/common/routes/routes.dart';
import 'package:cloud_chat/common/utils/consts.dart';
import 'package:cloud_chat/ui/base/base_screen.dart';
import 'package:cloud_chat/ui/stores/splash/splash_view_model.dart';
import 'package:flutter/material.dart';

const _splashLogoSize = 300.0;

class SplashScreen extends BaseScreen<SplashViewModel> {
  SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _initApp(context);
    return Scaffold(
      body: Stack(
        children: [
          const Center(
            child: SizedBox(
              width: _splashLogoSize,
              height: _splashLogoSize,
              child: CircleAvatar(
                backgroundImage: AssetImage(Consts.logoImage),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Center(
                  child: Padding(
                padding: EdgeInsets.only(
                  bottom: Dimens.padding24,
                ),
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              )),
            ],
          )
        ],
      ),
    );
  }

  Future _initApp(BuildContext context) async {
    Timer(
      const Duration(milliseconds: 500),
      () async {
        if (!await viewModel.authorized()) {
          Navigator.pushReplacementNamed(context, Routes.login);
          return;
        }
        Navigator.pushReplacementNamed(context, Routes.home);
      },
    );
  }
}
