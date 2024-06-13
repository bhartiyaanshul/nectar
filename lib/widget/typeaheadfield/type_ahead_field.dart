import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:nectar/widget/textfield/primary_textfield.dart';

class CustomTypeAheadField<T> extends StatelessWidget {
  final Widget Function(BuildContext, T) itemBuilder;
  final void Function(T)? onSelected;
  final FutureOr<List<T>?> Function(String) suggestionsCallback;
  final String title;
  final String? Function(String?)? validator;
  final Widget? suffix;
  final TextEditingController? controller;
  const CustomTypeAheadField(
      {super.key,
      required this.itemBuilder,
      required this.onSelected,
      required this.suggestionsCallback,
      required this.title,
      required this.validator, this.suffix,required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          textAlign: TextAlign.left,
        ),
        TypeAheadField<T>(
          controller: this.controller,
          itemBuilder: itemBuilder,
          onSelected: onSelected,
          suggestionsCallback: suggestionsCallback,
          builder: (context, controller, focusNode){
            return PrimaryTextField(
              controller: controller,
              focusNode: focusNode,
              validator: validator,
              suffix: suffix,
            );
          }
        ),
      ],
    );
  }
}
