import 'package:flutter/material.dart';
import 'package:help_yourself_app/common/res/dimens.dart';
import 'package:help_yourself_app/common/utils/consts.dart';
import 'package:help_yourself_app/ui/base/base_page.dart';
import 'package:help_yourself_app/ui/screens/splash/splash_store.dart';

const _splashLogoSize = 300.0;

class SplashPage extends BasePage<SplashViewModel> {
  SplashPage({Key? key}) : super(key: key);

  @override
  Widget content(BuildContext context) => Stack(
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
  );
}
