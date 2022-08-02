import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String hint;
  final IconData? prefixIcon;
  final void Function(String text)? onChanged;

  const AppTextField({
    Key? key,
    this.hint = '',
    this.prefixIcon,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: prefixIcon == null ? null : Icon(prefixIcon),
        border: const OutlineInputBorder(),
        hintText: hint,
      ),
      onChanged: onChanged,
    );
  }
}
