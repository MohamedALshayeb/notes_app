import 'package:flutter/material.dart';
import 'package:notes_app_training/widgets/custom_bottom.dart';
import 'package:notes_app_training/widgets/custom_text_field.dart';

class AddNoteShowModalBottomSheet extends StatelessWidget {
  const AddNoteShowModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
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
            // Spacer(), //will be error if using it inside SingleChildScrollView
            SizedBox(height: 40),

            CustomBottom(),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
