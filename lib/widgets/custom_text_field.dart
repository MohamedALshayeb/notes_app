import 'package:flutter/material.dart';
import 'package:notes_app_training/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        enabledBorder: borderTextField(),
        focusedBorder: borderTextField(color: kPrimaryColor),
        hintText: 'Title',
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
