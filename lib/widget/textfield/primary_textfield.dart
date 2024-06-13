import 'package:flutter/material.dart';

class PrimaryTextField extends StatelessWidget {
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final Widget? prefix;
  final Widget? suffix;
  final bool autofocus;
  final int? maxLength;
  final String? hintText;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  const PrimaryTextField(
      {super.key,
      this.onChanged,
      this.validator,
      this.keyboardType,
      this.prefix,
      this.suffix,
      this.autofocus = false, this.maxLength, this.hintText, this.controller, this.focusNode
      });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      controller: controller,
      onChanged: onChanged,
      maxLength: maxLength,
      autofocus: autofocus,
      validator: validator,
      textAlignVertical: TextAlignVertical.center,
      keyboardType: keyboardType,
      cursorColor: const Color(0xff7C7C7C),
      style: const TextStyle(
          fontFamily: 'Gilroy', fontSize: 18, color: Color(0xff030303)),
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xffE2E2E2)),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xffE2E2E2)),
        ),
        prefix: prefix,
        suffix: suffix,
      ),
    );
  }
}
