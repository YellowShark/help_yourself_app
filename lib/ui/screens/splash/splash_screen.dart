import 'dart:async';

import 'package:cloud_chat/common/res/dimens.dart';
import 'package:cloud_chat/common/routes/routes.dart';
import 'package:cloud_chat/common/utils/consts.dart';
import 'package:cloud_chat/di/config/injection.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

const _splashLogoSize = 300.0;

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

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
    await Firebase.initializeApp();
    configureDependencies();
    Timer(
      const Duration(milliseconds: 500),
          () => Navigator.pushReplacementNamed(context, Routes.login),
    );
  }
}
