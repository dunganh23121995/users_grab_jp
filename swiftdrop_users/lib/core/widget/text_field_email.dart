import 'package:flutter/material.dart';

class TextFieldEmail extends StatelessWidget {
  final TextEditingController controller;
  final String? labelText;
  final String? hintText;
  final String? emptyErrorText;
  final String? invalidErrorText;
  final Color? cursorColor;

  const TextFieldEmail({
    super.key,
    required this.controller,
    this.labelText,
    this.hintText,
    this.emptyErrorText,
    this.invalidErrorText,
    this.cursorColor,
  });

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) return emptyErrorText;
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(value)) return invalidErrorText;
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      cursorColor: cursorColor ?? Colors.grey,
      keyboardType: TextInputType.emailAddress,
      validator: _validateEmail,
      decoration: InputDecoration(labelText: labelText, hintText: hintText),
    );
  }
}
