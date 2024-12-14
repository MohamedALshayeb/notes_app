import 'package:flutter/material.dart';
import 'package:notes_app_training/constants.dart';
import 'package:notes_app_training/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.textTitle, required this.icon});

  final String textTitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          textTitle,
          style: const TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        const Spacer(),
        CustomIcon(
          icons: icon,
        ),
      ],
    );
  }
}
