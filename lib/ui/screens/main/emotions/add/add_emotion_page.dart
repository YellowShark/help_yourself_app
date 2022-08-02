import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:help_yourself_app/common/res/dimens.dart';
import 'package:help_yourself_app/common/res/strings.dart';
import 'package:help_yourself_app/ui/base/base_page.dart';
import 'package:help_yourself_app/ui/screens/main/emotions/add/add_emotion_store.dart';
import 'package:help_yourself_app/ui/screens/main/emotions/add/steps/choose_emotion_page.dart';
import 'package:help_yourself_app/ui/screens/main/emotions/add/steps/emotion_details_page.dart';
import 'package:help_yourself_app/ui/widgets/app_wizard.dart';

class AddEmotionPage extends BasePage<AddEmotionViewModel> {
  AddEmotionPage({Key? key}) : super(key: key);

  @override
  Widget content(BuildContext context) {
    return Observer(
      builder: (_) => AppWizard(
        showControls: false,
        currentStep: viewModel.currentStep,
        onComplete: () {},
        steps: {
          Strings.addEmotion.chooseEmotion(): ChooseEmotionPage(
            emotions: viewModel.emotions,
            selectedEmotions: viewModel.selectedEmotions,
            onEmotionSelected: viewModel.onEmotionSelected,
            onSearch: viewModel.onSearch,
          ),
          Strings.addEmotion.details(): EmotionDetailsPage(
            onNameChanged: viewModel.onNameChanged,
            onCommentChanged: viewModel.onCommentChanged,
            onDateChanged: viewModel.onDateChanged,
          ),
        },
      ),
    );
  }

  @override
  Widget? bottomBar(BuildContext context) => Observer(
        builder: (_) => viewModel.currentStep == 0 ? _nextButton : _prevOrSave,
      );

  Widget get _nextButton => Padding(
        padding: const EdgeInsets.all(Dimens.padding16),
        child: ElevatedButton(
          onPressed: viewModel.onNextStep,
          child: Text(Strings.addEmotion.next()),
        ),
      );

  Widget get _prevOrSave => Padding(
        padding: const EdgeInsets.all(Dimens.padding16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: viewModel.onSave,
              child: Text(Strings.addEmotion.save()),
            ),
            Dimens.padding16.spacer(),
            ElevatedButton(
              onPressed: viewModel.onPrevStep,
              child: Text(Strings.addEmotion.prev()),
            ),
          ],
        ),
      );
}
