import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:help_yourself_app/common/res/dimens.dart';
import 'package:help_yourself_app/common/res/strings.dart';
import 'package:help_yourself_app/di/config/injection.dart';
import 'package:help_yourself_app/domain/entities/emotion/emotion_note.dart';
import 'package:help_yourself_app/ui/base/base_page.dart';
import 'package:help_yourself_app/ui/screens/main/emotions/add/add_emotion_store.dart';
import 'package:help_yourself_app/ui/screens/main/emotions/add/steps/choose_emotion_page.dart';
import 'package:help_yourself_app/ui/screens/main/emotions/add/steps/emotion_details_page.dart';
import 'package:help_yourself_app/ui/widgets/app_wizard.dart';

class AddEmotionPage extends BasePage<AddEmotionViewModel> {
  AddEmotionPage({
    Key? key,
    EmotionNote? note,
  }) : super(
          key: key,
          customViewModel: getIt<AddEmotionViewModel>(param1: note),
        );

  @override
  Widget content(BuildContext context) {
    return Observer(
      builder: (_) => AppWizard(
        showControls: false,
        currentStep: viewModel.currentStep,
        onComplete: () {},
        steps: {
          Strings.addEmotion.chooseEmotion(): ChooseEmotionPage(
            state: viewModel.state,
            currentNote: viewModel.emotionNote,
            foundEmotions: viewModel.foundEmotions,
            onEmotionSelected: viewModel.onEmotionSelected,
            onSearch: viewModel.onSearch,
            selectedCategory: viewModel.selectedCategory,
            onCategorySelected: viewModel.onCategorySelected,
          ),
          Strings.addEmotion.details(): EmotionDetailsPage(
            currentNote: viewModel.emotionNote,
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
        builder: (_) => viewModel.currentStep == 0 ? _nextButton(context) : _prevOrSave(context),
      );

  Widget _nextButton(BuildContext context) => Padding(
        padding: const EdgeInsets.all(Dimens.padding16),
        child: ElevatedButton(
          onPressed: () => viewModel.onNextStep(onError: (error) {
            _showErrorSnackbar(context, error);
          }),
          child: Text(Strings.addEmotion.next()),
        ),
      );

  Widget _prevOrSave(BuildContext context) => Padding(
        padding: const EdgeInsets.all(Dimens.padding16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () => viewModel.onSave(onError: (error) {
                _showErrorSnackbar(context, error);
              }),
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

  void _showErrorSnackbar(BuildContext context, String error) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(error),
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}
