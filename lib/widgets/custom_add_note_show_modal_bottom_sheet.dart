import 'package:flutter/material.dart';
import 'package:notes_app_training/widgets/custom_text_field.dart';

class AddNoteShowModalBottomSheet extends StatelessWidget {
  const AddNoteShowModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 25),
          CustomTextField(
            hintText: 'Title',
          ),
          SizedBox(height: 25),
          CustomTextField(
            hintText: 'Content',
            maxLine: 5,
          ),
        ],
      ),
    );
  }
}
