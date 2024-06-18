import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PrimarySearchField extends StatelessWidget {
  final String? hintText;
  final Widget? prefixicon;
  final Widget? suffix; 
  final bool autofocus;
  const PrimarySearchField({super.key, this.hintText, this.prefixicon, this.suffix, this.autofocus = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: FocusNode(),
      autofocus: autofocus,
      style: const TextStyle(
        fontFamily: 'Gilroy',
        fontSize: 16,
        color: Color(0xff030303),
      ),
      decoration: InputDecoration(
        filled: true,
        focusColor: const Color(0xffF2F3F2),
        fillColor: const Color(0xffF2F3F2),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xff7C7C7C),
          fontSize: 14,
          fontFamily: 'Gilroy',
        ),
        prefixIcon: prefixicon,
        prefixIconConstraints: const BoxConstraints(
          minWidth: 50,
          minHeight: 20
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none
        ),
        suffix: suffix,
      )
    );
  }
}