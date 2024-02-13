import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? suffixIcon;
  final TextInputType keyboardType;
  final bool obscureText;
  final Function? validatorFn;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.suffixIcon,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.validatorFn,
    required this.formProperty,
    required this.formValues
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) => {
        formValues[formProperty] = value
      },
      autofocus: true,
      obscureText: obscureText,
      keyboardType: keyboardType,
      textCapitalization: TextCapitalization.words,
      validator: (value) => validatorFn != null ? validatorFn!(value) : null,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null
      ),
    );
  }
}