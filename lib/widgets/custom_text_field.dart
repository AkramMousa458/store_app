import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    super.key,
    required this.hintText,
    required this.icon,
    this.isPassword,
    this.onChanged,
  });

  final String hintText;
  final Icon icon;
  final bool? isPassword;

  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      obscureText: isPassword == null
          ? false
          : isPassword == false
              ? false
              : true,
      enableSuggestions: isPassword == null
          ? false
          : isPassword == false
              ? false
              : true,
      autocorrect: isPassword == null
          ? false
          : isPassword == false
              ? false
              : true,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(color: Colors.black54),
          gapPadding: 20,
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(color: Colors.black54),
          gapPadding: 20,
        ),
        contentPadding: const EdgeInsets.all(20),
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.black54),
        suffixIcon: icon,
        suffixIconColor: Colors.black.withOpacity(0.7),
      ),
    );
  }
}
