import 'package:flutter/material.dart';

class TextFieldNumber extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final String emptyErrorText;
  final String invalidNumberErrorText;
  final bool isRequired;
  final Color? cursorColor;

  const TextFieldNumber({
    super.key,
    required this.controller,
    required this.labelText,
    required this.hintText,
    required this.emptyErrorText,
    required this.invalidNumberErrorText,
    this.isRequired = true,
    this.cursorColor,
  });

  String? _validateNumber(String? value) {
    if (!isRequired) return null;
    if (value == null || value.isEmpty) return emptyErrorText;
    if (double.tryParse(value) == null) return invalidNumberErrorText;
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: cursorColor ?? Colors.grey,
      keyboardType: TextInputType.number,
      validator: _validateNumber,
      decoration: InputDecoration(labelText: labelText, hintText: hintText),
    );
  }
}
