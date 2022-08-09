import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String hint;
  final IconData? prefixIcon;
  final int? maxLines;
  final void Function(String text)? onChanged;

  const AppTextField({
    Key? key,
    this.controller,
    this.hint = '',
    this.prefixIcon,
    this.onChanged,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: prefixIcon == null ? null : Icon(prefixIcon),
        border: const OutlineInputBorder(),
        hintText: hint,
      ),
      maxLines: maxLines,
      onChanged: onChanged,
    );
  }
}
