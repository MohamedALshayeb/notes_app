import 'package:flutter/material.dart';
import 'package:notes_app_training/widgets/custom_bottom.dart';
import 'package:notes_app_training/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode? autoValidateMode =
      AutovalidateMode.disabled; //not understand
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
          const SizedBox(height: 25),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hintText: 'Title',
          ),
          const SizedBox(height: 25),
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
            },
            hintText: 'Content',
            maxLine: 5,
          ),
          // Spacer(), //will be error if using it inside SingleChildScrollView
          const SizedBox(height: 40),

          CustomBottom(
            onTap: () {
              if (formKey.currentState!.validate()) {
                return formKey.currentState!.save();
              } else {
                autoValidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
