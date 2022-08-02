import 'package:flutter/cupertino.dart';
import 'package:help_yourself_app/common/res/dimens.dart';
import 'package:help_yourself_app/common/res/strings.dart';
import 'package:help_yourself_app/ui/widgets/app_text_field.dart';

class EmotionDetailsPage extends StatelessWidget {
  final void Function(String text) onNameChanged;
  final void Function(String text) onCommentChanged;
  final void Function(DateTime date) onDateChanged;

  const EmotionDetailsPage({
    Key? key,
    required this.onNameChanged,
    required this.onCommentChanged,
    required this.onDateChanged,
  }) : super(key: key);

  double get _datePickerHeight => 100;

  int get _maxCommentLines => 4;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextField(
          hint: Strings.addEmotion.name(),
          onChanged: onNameChanged,
        ),
        Dimens.padding16.spacer(),
        AppTextField(
          hint: Strings.addEmotion.comment(),
          maxLines: _maxCommentLines,
          onChanged: onCommentChanged,
        ),
        Dimens.padding64.spacer(),
        SizedBox(
          height: _datePickerHeight,
          child: CupertinoDatePicker(
            onDateTimeChanged: onDateChanged,
            initialDateTime: DateTime.now(),
          ),
        ),
      ],
    );
  }
}
