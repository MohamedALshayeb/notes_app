import 'package:flutter/material.dart';
import 'package:notes_app_training/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hintText, this.maxLine, this.onSaved});

  final String hintText;
  final int? maxLine;

  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field Is Required';
        } else {
          return null;
        }
      },
      maxLines: maxLine,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        enabledBorder: borderTextField(),
        focusedBorder: borderTextField(color: kPrimaryColor),
        hintText: hintText,
      ),
    );
  }

  OutlineInputBorder borderTextField({color}) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
