import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool readOnly;
  final String? Function(String?)? validator;
  final Function()? onTap;
  final TextInputType keyboardType;
  final FocusNode? focusNode;
  final Widget? suffixIcon; // Optional suffix icon

  const CustomTextFormField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.readOnly = false,
    this.validator,
    this.onTap,
    this.keyboardType = TextInputType.text,
    this.focusNode,
    this.suffixIcon, // Optional suffix icon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      readOnly: readOnly,
      validator: validator,
      onTap: onTap,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: EdgeInsets.all(5),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        suffixIcon: suffixIcon, // Display suffix icon if provided
      ),
    );
  }
}
