import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:help_yourself_app/common/res/dimens.dart';
import 'package:help_yourself_app/common/routes/router.dart';
import 'package:help_yourself_app/common/utils/consts.dart';
import 'package:help_yourself_app/ui/base/base_page.dart';
import 'package:help_yourself_app/ui/stores/splash/splash_view_model.dart';

const _splashLogoSize = 300.0;

class SplashPage extends BasePage<SplashViewModel> {
  SplashPage({Key? key}) : super(key: key);

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
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Future _initApp(BuildContext context) async {
    Timer(
      const Duration(milliseconds: 800),
      () async {
        context.router.push(HomeRoute());
      },
    );
  }
}
