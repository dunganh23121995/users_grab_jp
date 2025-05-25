import 'package:flutter/material.dart';

class TextFieldPassword extends StatelessWidget {
  final TextEditingController controller;
  final String? labelText;
  final String? hintText;
  final String? emptyErrorText;
  final String? tooShortErrorText;
  final int? minLength;
  final Color? cursorColor;

  const TextFieldPassword({
    super.key,
    required this.controller,
    this.labelText,
    this.hintText,
    this.emptyErrorText,
    this.tooShortErrorText,
    this.minLength = 6,
    this.cursorColor,
  });

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) return emptyErrorText;
    if (value.length < (minLength ?? 6)) return tooShortErrorText;
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: cursorColor ?? Colors.grey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText: true,
      validator: _validatePassword,
      decoration: InputDecoration(labelText: labelText, hintText: hintText),
    );
  }
}
