import 'package:flutter/material.dart';
import 'package:notes_app_training/widgets/custom_app_bar.dart';
import 'package:notes_app_training/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 40),
          CustomAppBar(textTitle: 'Edit Note', icon: Icons.check),
          SizedBox(height: 30),
          CustomTextField(hintText: 'Title'),
          SizedBox(height: 25),
          CustomTextField(hintText: 'Content', maxLine: 5),
        ],
      ),
    );
  }
}
