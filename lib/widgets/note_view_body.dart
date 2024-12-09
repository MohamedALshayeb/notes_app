import 'package:flutter/material.dart';
import 'package:notes_app_training/widgets/custom_app_bar.dart';
import 'package:notes_app_training/widgets/custom_note_list_view.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 40),
          CustomAppBar(textTitle: 'Notes', icon: Icons.search),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
