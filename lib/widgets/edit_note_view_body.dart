import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_training/constants.dart';
import 'package:notes_app_training/cuibits/notes_cubit/notes_cubit.dart';
import 'package:notes_app_training/models/note_model.dart';
import 'package:notes_app_training/widgets/custom_app_bar.dart';
import 'package:notes_app_training/widgets/custom_color_listview.dart';
import 'package:notes_app_training/widgets/custom_text_field.dart';
import 'package:notes_app_training/widgets/edit_note_color_listview.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(height: 40),
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = subTitle ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            textTitle: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(height: 30),
          CustomTextField(
            onChanged: (value) {
              title = value;
            },
            hintText: widget.note.title,
          ),
          const SizedBox(height: 25),
          CustomTextField(
            onChanged: (value) {
              subTitle = value;
            },
            hintText: widget.note.subTitle,
            maxLine: 5,
          ),
          const SizedBox(height: 25),
          EditNoteColorList(
            note: widget.note,
          ),
        ],
      ),
    );
  }
}
