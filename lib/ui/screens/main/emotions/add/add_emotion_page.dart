import 'package:flutter/material.dart';
import 'package:help_yourself_app/common/res/strings.dart';
import 'package:help_yourself_app/ui/base/base_page.dart';
import 'package:help_yourself_app/ui/screens/main/emotions/add/add_emotion_store.dart';
import 'package:help_yourself_app/ui/widgets/app_wizard.dart';

class AddEmotionPage extends BasePage<AddEmotionViewModel> {
  AddEmotionPage({Key? key}) : super(key: key);

  @override
  Widget content(BuildContext context) {
    return AppWizard(
      onComplete: () {},
      steps: {
        Strings.addEmotion.chooseEmotion(): Container(),
        Strings.addEmotion.details(): Container(),
      },
      controlsBuilder: (_, controls) => Container(),
    );
  }
}
