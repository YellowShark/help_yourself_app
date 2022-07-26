import 'package:flutter/material.dart';
import 'package:help_yourself_app/common/res/dimens.dart';

const _buttonMaxWidth = 500.0;

class BaseTextButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  const BaseTextButton({
    Key? key,
    required this.onTap,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: Dimens.padding24,
        right: Dimens.padding24,
        bottom: Dimens.padding32,
      ),
      child: SizedBox(
        height: Dimens.buttonHeight,
        width: _buttonMaxWidth,
        child: ElevatedButton(
          onPressed: onTap,
          child: Text(
            text,
            style: const TextStyle(fontSize: Dimens.normalFontSize),
          ),
        ),
      ),
    );
  }
}
